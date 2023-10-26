# Copyright 2023 Paul Maddern
#
# This program is free software: you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option) any later
# version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
# details.
#
# You should have received a copy of the GNU General Public License along with
# this program. If not, see <http://www.gnu.org/licenses/>.

from skoolkit.graphics import Frame, Udg as BaseUdg
from skoolkit.skoolhtml import HtmlWriter
from skoolkit.skoolmacro import parse_brackets, parse_ints, parse_image_macro, MacroParsingError


class Udg(BaseUdg):
    def __init__(self, attr, data, mask=None, x=None, y=None):
        BaseUdg.__init__(self, attr, data, mask)
        self.x = x
        self.y = y


class EveryonesAWallyHtmlWriter(HtmlWriter):
    def init(self):
        self.background_address = {
            0x00: 0xCDF7,
            0x01: 0xCE01,
            0x02: 0xCE25,
            0x03: 0xCE37,
            0x04: 0xCE69,
            0x05: 0xCE7B,
            0x06: 0xCE89,
            0x07: 0xCEAD,
            0x08: 0xCEC9,
            0x09: 0xCEE1,
            0x0A: 0xCEF9,
            0x0B: 0xCF09,
            0x0C: 0xCF29,
            0x0D: 0xCF49,
            0x0E: 0xCF71,
            0x0F: 0xCF97,
            0x10: 0xCFB5,
            0x11: 0xCFD9,
            0x12: 0xCFEF,
            0x13: 0xD009,
            0x14: 0xD039,
            0x15: 0xD057,
            0x16: 0xD08B,
            0x17: 0xD0AF,
            0x18: 0xD0C3,
            0x19: 0xD0E7,
            0x1A: 0xD109,
            0x1B: 0xD125,
            0x1C: 0xD135,
            0x1D: 0xD153,
            0x1E: 0xD16D,
            0x1F: 0xD17D,
            0x20: 0xD191
        }

    def expand_background(self, text, index, cwd):
        # #BACKGROUNDid[,scale][{X,Y,W,H}](fname)
        end, crop_rect, fname, frame, alt, (background, scale) = parse_image_macro(text, index, (1,), ('id', 'scale'))
        if fname is None:
            raise MacroParsingError('Filename missing: #BACKGROUND{}'.format(text[index:end]))
        frame = Frame(lambda: self.get_playarea_udgs(background), scale, 0, *crop_rect, name=frame)
        return end, self.handle_image(frame, fname, cwd, alt, 'PlayAreaImagePath')

    def get_playarea_udgs(self, background):
        x = y = 0
        w, h = 0x20, 0x18

        playarea_udgs = []
        udgs = [[0] * 8] * 0x300

        pos = 0
        for row in range(y, y + h):
            playarea_udgs.append([])
            for col in range(x, x + w):
                playarea_udgs[-1].append(Udg(0x45, udgs[pos], x=x, y=y))
                pos += 1

        return playarea_udgs
