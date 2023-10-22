#!/usr/bin/env python3
import sys
import os
import argparse
from collections import OrderedDict

try:
    from skoolkit.snapshot import get_snapshot
    from skoolkit import tap2sna, sna2skool
except ImportError:
    SKOOLKIT_HOME = os.environ.get('SKOOLKIT_HOME')
    if not SKOOLKIT_HOME:
        sys.stderr.write('SKOOLKIT_HOME is not set; aborting\n')
        sys.exit(1)
    if not os.path.isdir(SKOOLKIT_HOME):
        sys.stderr.write('SKOOLKIT_HOME={}; directory not found\n'.format(SKOOLKIT_HOME))
        sys.exit(1)
    sys.path.insert(0, SKOOLKIT_HOME)
    from skoolkit.snapshot import get_snapshot
    from skoolkit import tap2sna, sna2skool

EVERYONESAWALLY_HOME = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
BUILD_DIR = '{}/sources'.format(EVERYONESAWALLY_HOME)
WALLY_Z80 = '{}/EveryonesaWally.z80'.format(EVERYONESAWALLY_HOME)


class EveryonesAWally:
    def __init__(self, snapshot):
        self.snapshot = snapshot

    def graphics_routine(self, graphics, index):
        lines = []
        attribute = 0x00

        for i in range(len(graphics)):
            lines.append('b ${:X} Graphic ID #N${:02X}'.format(graphics[i], index[graphics[i]]))
            lines.append('@ ${:X} label=graphic_{:02x}'.format(graphics[i], index[graphics[i]]))
            addr = graphics[i]
            base = 0x0000
            while self.snapshot[addr] != 0xFF:
                byte = self.snapshot[addr]
                if 0xA8 <= byte <= 0xE8:
                    lines.append('  ${:X},$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).'.format(addr))
                    addr += 0x01
                elif byte < 0x80:
                    lines.append('  ${:X},$01 Tile #N(#PEEK(#PC)):'.format(addr))
                    lines.append('. #UDGTABLE')
                    lines.append('. {{ #UDG(${:X},attr=${:X}) }}'.format(base + (byte * 0x08), attribute))
                    lines.append('. UDGTABLE#')
                elif byte == 0xF0:
                    lines.append(
                        '  ${:X},$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.'.format(addr))
                    lines.append('. #UDGTABLE {{ =h Row | =h Graphic }}')
                    lines.append(
                        '. #FOR$01,${:02X},,4(n,{{ #Nn | #UDG(${:X},attr=${:X}) }})'.format(self.snapshot[addr + 0x01],
                                                                                            base + (self.snapshot[
                                                                                                        addr + 0x02] * 0x08),
                                                                                            attribute))
                    lines.append('. UDGTABLE#')
                    addr += 0x02
                elif byte == 0xF1:
                    lines.append('  ${:X},$01 Action: move down one character block.'.format(addr))
                elif byte == 0xF2:
                    lines.append(
                        '  ${:X},$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK('
                        '#PC+$01)) times.'.format(addr))
                    lines.append('. #UDGTABLE {{ =h,c{} Columns }} {{ #FOR$01,${:02X}(n,=h #Nn, | ) }}'.format(
                        self.snapshot[addr + 0x01], self.snapshot[addr + 0x01]))
                    lines.append('. {{ #FOR$01,${:02X}(n,#UDG(${:X},attr=${:X})#UDG(${:X},attr=${:X}), | ) }}'.format(
                        self.snapshot[addr + 0x01], base + (self.snapshot[addr + 0x02] * 0x08), attribute,
                                                    base + (self.snapshot[addr + 0x03] * 0x08), attribute))
                    lines.append('. UDGTABLE#')
                    addr += 0x03
                elif byte == 0xF3:
                    lines.append('M ${:X},$03 Switch #REGhl to #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).'.format(addr))
                    lines.append('  ${:X},$01'.format(addr))
                    lines.append('W ${:X},$02'.format(addr + 0x01))
                    addr += 0x02
                elif byte == 0xFB:
                    base = self.snapshot[addr + 0x01] + self.snapshot[addr + 0x02] * 0x100
                    lines.append('M ${:X},$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).'.format(addr))
                    lines.append('  ${:X},$01'.format(addr))
                    lines.append('W ${:X},$02'.format(addr + 0x01))
                    addr += 0x02
                elif byte == 0xFD:
                    lines.append(
                        '  ${:X},$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.'.format(
                            addr))
                    lines.append('. #UDGTABLE {{ =h,c{} Columns }} {{ #FOR$01,${:02X}(n,=h #Nn, | ) }}'.format(
                        self.snapshot[addr + 0x01], self.snapshot[addr + 0x01]))
                    lines.append(
                        '. {{ #FOR$01,${:02X}(n,#UDG(${:X},attr=${:X}), | ) }}'.format(self.snapshot[addr + 0x01],
                                                                                       base + (self.snapshot[
                                                                                                   addr + 0x02] * 0x08),
                                                                                       attribute))
                    lines.append('. UDGTABLE#')
                    addr += 0x02
                elif byte == 0xFE:
                    attribute = self.snapshot[addr + 0x01]
                    lines.append('  ${:X},$02 Attribute: #COLOUR(#PC+$01)'.format(addr))
                    addr += 0x01
                else:
                    lines.append('  ${:X},$01'.format(addr))
                addr += 0x01
            lines.append('  ${:X},$01 Terminator.'.format(addr))
            lines.append('')

        return '\n'.join(lines)

    def get_graphics(self):
        """Creates the graphics pages
        Seems to work nicely.
        """
        graphics = []
        index = {}
        i = 0

        for a in range(0xBD86, 0xBE72, 0x02):
            graphics.append(self.snapshot[a] + self.snapshot[a + 0x01] * 0x100)
            index[self.snapshot[a] + self.snapshot[a + 0x01] * 0x100] = i
            i += 0x01
        graphics.sort()

        return self.graphics_routine(graphics, index)

    def get_items(self):
        """Creates item messaging.
        Not perfect, but saved some time.
        """
        lines = []
        items = []

        for a in range(0xE728, 0xE77A, 0x02):
            items.append(self.snapshot[a] + self.snapshot[a + 0x01] * 0x100)
        items.sort()

        for i in range(len(items)):
            addr = items[i]
            message = ''
            while self.snapshot[addr] != 0xFF:
                byte = self.snapshot[addr]
                if 0x20 <= byte <= 0x7D:
                    message += chr(byte)
                elif message[-1] != " ":
                    message += " "
                addr += 0x01
            lines.append('b ${:X} Messaging: {}'.format(items[i], message.title()))
            length = len(message)
            if length != addr - items[i]:
                length = addr - items[i]
            lines.append('  ${:X},${:02X} "#STR${:X},$08($b==$FF)".'.format(items[i], length, items[i]))
            lines.append('  ${:X},$01 Terminator.'.format(addr))
            lines.append('')

        return '\n'.join(lines)

    def get_rooms(self):
        """Creates the room table
        """
        lines = ['w $CDB5 Rooms', '@ $CDB5 label=data_rooms']

        for a in range(0xCDB5, 0xCDF7, 0x02):
            addr = self.snapshot[a] + self.snapshot[a + 0x01] * 0x100
            lines.append('  ${:X},$02 Room #R${:X}({:0.0f}).'.format(a, addr, (a - 0xCDB5) / 0x02))

        return '\n'.join(lines)


def run(subcommand):
    if not os.path.isdir(BUILD_DIR):
        os.mkdir(BUILD_DIR)
    if not os.path.isfile(WALLY_Z80):
        tap2sna.main(('-d', BUILD_DIR, '@{}/everyonesawally.t2s'.format(EVERYONESAWALLY_HOME)))
    eaw = EveryonesAWally(get_snapshot(WALLY_Z80))
    ctlfile = '{}/{}.ctl'.format(BUILD_DIR, subcommand)
    with open(ctlfile, 'wt') as f:
        f.write(getattr(eaw, methods[subcommand][0])())
    sna2skool.main(('-c', ctlfile, WALLY_Z80))


###############################################################################
# Begin
###############################################################################
methods = OrderedDict((
    ('graphics', ('get_graphics', 'Graphics (48754-52660)')),
    ('items', ('get_items', 'Items (58500-59175)')),
    ('rooms', ('get_rooms', 'Rooms (49152-64767)'))
))
subcommands = '\n'.join('  {} - {}'.format(k, v[1]) for k, v in methods.items())
parser = argparse.ArgumentParser(
    usage='%(prog)s SUBCOMMAND',
    description="Produce a skool file snippet for \"Everyones a Wally\". SUBCOMMAND must be one of:\n\n{}".format(
        subcommands),
    formatter_class=argparse.RawTextHelpFormatter,
    add_help=False
)
parser.add_argument('subcommand', help=argparse.SUPPRESS, nargs='?')
namespace, unknown_args = parser.parse_known_args()
if unknown_args or namespace.subcommand not in methods:
    parser.exit(2, parser.format_help())
run(namespace.subcommand)
