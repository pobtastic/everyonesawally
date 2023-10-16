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

	def get_graphics(self):
		lines = []
		graphics = []

		for a in range(0xBD86, 0xBE72, 0x02):
			graphics.append(self.snapshot[a] + self.snapshot[a+0x01] * 0x100)
		graphics.sort()

		for i in range(len(graphics)):
			lines.append('b ${:X} Graphic ID'.format(graphics[i]))
			lines.append('@ ${:X} label=graphic_{}'.format(graphics[i], i))
			addr = graphics[i]
			while self.snapshot[addr] != 0xFF:
				byte = self.snapshot[addr]
				if byte == 0xFB:
					lines.append('  ${:X},$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).'.format(addr))
					addr += 0x02
				elif byte == 0xFE:
					lines.append('  ${:X},$02 Attribute=#COLOUR(#PC+$01)'.format(addr))
					addr += 0x01
				else:
					lines.append('  ${:X},$01'.format(addr))
				addr += 0x01
			lines.append('  ${:X} Terminator.'.format(addr))
			lines.append('')

		return '\n'.join(lines)

	def get_rooms(self):
		lines = []

		lines.append('w $CDB5 Rooms')
		lines.append('@ $CDB5 label=data_rooms')
		for a in range(0xCDB5, 0xCDF7, 0x02):
			addr = self.snapshot[a] + self.snapshot[a+0x01] * 0x100
			lines.append('  ${:X},$02 Room #R${:X}({:0.0f}).'.format(a, addr, (a-0xCDB5)/0x02))

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
	('entity-defs', ('get_entity_definitions', 'Entity definitions (40960-41982)')),
	('graphics', ('get_graphics', 'Graphics (48754-52660)')),
	('items', ('get_item_table', 'Item table (41984-42495)')),
	('rooms', ('get_rooms', 'Rooms (49152-64767)'))
))
subcommands = '\n'.join('  {} - {}'.format(k, v[1]) for k, v in methods.items())
parser = argparse.ArgumentParser(
	usage='%(prog)s SUBCOMMAND',
	description="Produce a skool file snippet for Everyones A Wally. SUBCOMMAND must be one of:\n\n{}".format(subcommands),
	formatter_class=argparse.RawTextHelpFormatter,
	add_help=False
)
parser.add_argument('subcommand', help=argparse.SUPPRESS, nargs='?')
namespace, unknown_args = parser.parse_known_args()
if unknown_args or namespace.subcommand not in methods:
    parser.exit(2, parser.format_help())
run(namespace.subcommand)
