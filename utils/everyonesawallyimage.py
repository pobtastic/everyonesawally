#!/usr/bin/env python3

import sys
import os
import argparse

SKOOLKIT_HOME = os.environ.get("SKOOLKIT_HOME")
if not SKOOLKIT_HOME:
    sys.stderr.write("SKOOLKIT_HOME is not set; aborting\n")
    sys.exit(1)
if not os.path.isdir(SKOOLKIT_HOME):
    sys.stderr.write("SKOOLKIT_HOME={}; directory not found\n".format(SKOOLKIT_HOME))
    sys.exit(1)
sys.path.insert(0, SKOOLKIT_HOME)

from skoolkit.image import ImageWriter
from skoolkit.skoolhtml import Frame
from skoolkit.snapshot import get_snapshot
from skoolkit.graphics import Udg as BaseUdg, Frame

parent_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
EVERYONESAWALLY_Z80 = "{}/EveryonesaWally.z80".format(parent_dir)


class Udg(BaseUdg):
    def __init__(self, attr, data, mask=None, x=None, y=None):
        BaseUdg.__init__(self, attr, data, mask)
        self.x = x
        self.y = y


class EveryonesAWally:
    def __init__(self, snapshot):
        self.snapshot = snapshot
        self.bank = 0x0000
        self.cursor = {"x": 0x00, "y": 0x10}
        self.attribute = 0x00

    def get_background_data(self, id):
        lookup_table = 0xCDB5 + (id * 0x02)
        return self.snapshot[lookup_table] + self.snapshot[lookup_table + 0x01] * 0x100

    def get_graphic_data(self, id):
        lookup_table = 0xBD86 + (id * 0x02)
        return self.snapshot[lookup_table] + self.snapshot[lookup_table + 0x01] * 0x100

    def get_udg_data(self, addr, udgs):
        data = 0x00
        while data != 0xFF:
            data = self.snapshot[addr]
            if data == 0xFB:
                self.bank = self.snapshot[addr + 0x01] + self.snapshot[addr + 0x02] * 0x100
                addr += 0x03
            elif data == 0xFD:
                count = self.snapshot[addr + 0x01]
                block = self.bank + self.snapshot[addr + 0x02] * 0x08
                pos = self.cursor["x"] * self.cursor["y"]
                for repeat in range(pos, pos + count):
                    udgs[repeat] = self.snapshot[block:block + 0x08]
                addr += 0x03
            elif data == 0xFE:
                self.attribute = self.snapshot[addr + 0x01]
                addr += 0x02
            elif 0xA8 <= data <= 0xC8:
                self.cursor = {"x": self.cursor["x"] + self.snapshot[addr] - 0xC8, "y": self.cursor["y"] + self.snapshot[addr + 0x01]}
                addr += 0x02
            else:
                addr += 0x01

    def get_playarea_udgs(self, x, y, width, height, background):
        background_data = self.get_background_data(background)
        playarea_udgs = []
        udgs = [[0x00] * 0x08] * 0x3000
        data = 0x00

        while data != 0x7F:
            data = self.snapshot[background_data] & 0x7F
            cursor = self.snapshot[background_data + 0x01]

            if data == 0x7F:
                break
            elif data == 0x7E:
                break
            else:
                addr = self.get_graphic_data(data)
                self.get_udg_data(addr, udgs)

            background_data += 0x02

        pos = 0
        for row in range(y, y + height):
            playarea_udgs.append([])
            for col in range(x, x + width):
                playarea_udgs[-1].append(Udg(0x45, udgs[pos], x=x, y=y))
                pos += 1

        return playarea_udgs


def _do_pokes(specs, snapshot):
    for spec in specs:
        addr, val = spec.split(",", 1)
        step = 1
        if "-" in addr:
            addr1, addr2 = addr.split("-", 1)
            addr1 = int(addr1)
            if "-" in addr2:
                addr2, step = [int(i) for i in addr2.split("-", 1)]
            else:
                addr2 = int(addr2)
        else:
            addr1 = int(addr)
            addr2 = addr1
        addr2 += 1
        value = int(val)
        for a in range(addr1, addr2, step):
            snapshot[a] = value


def run(snafile, imgfname, options):
    snapshot = get_snapshot(snafile)
    _do_pokes(options.pokes, snapshot)
    game = EveryonesAWally(snapshot)
    x = y = 0
    width, height = 0x20, 0x18

    if options.geometry:
        wh, xy = options.geometry.split("+", 1)
        width, height = [int(n) for n in wh.split("x")]
        x, y = [int(n) for n in xy.split("+")]

    udg_array = game.get_playarea_udgs(x, y, width, height, options.background)
    frame = Frame(udg_array, options.scale)
    image_writer = ImageWriter()
    with open(imgfname, "wb") as f:
        image_writer.write_image([frame], f)


###############################################################################
# Begin
###############################################################################
parser = argparse.ArgumentParser(
    usage="everyonesawallyimage.py [options] FILE.png",
    description="Create an image of a room in Everyone's A Wally.",
    formatter_class=argparse.RawTextHelpFormatter,
    add_help=False
)
parser.add_argument("imgfname", help=argparse.SUPPRESS, nargs="?")
group = parser.add_argument_group("Options")
group.add_argument("-b", dest="background", type=int, default=0,
                   help="Create an image using this background (default: 0)")
group.add_argument("-g", dest="geometry", metavar="WxH+X+Y",
                   help="Create an image with this geometry")
group.add_argument("-p", dest="pokes", metavar="A[-B[-C]],V", action="append", default=[],
                   help="Do POKE N,V for N in {A, A+C, A+2C,...B} (this option may\n"
                        "be used multiple times)")
group.add_argument("-s", dest="scale", type=int, default=2,
                   help="Set the scale of the image (default: 2)")
group.add_argument("-w", dest="wally", metavar="X,Y[,F]",
                   help="Place Wally at (X,Y) with animation frame F (0-7)")
namespace, unknown_args = parser.parse_known_args()
if unknown_args or not namespace.imgfname:
    parser.exit(2, parser.format_help())
run(EVERYONESAWALLY_Z80, namespace.imgfname, namespace)
