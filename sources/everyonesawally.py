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

	def expand_room(self, text, index, cwd):
		# #ROOMid[,scale][{X,Y,W,H}](fname)
		end, crop_rect, fname, frame, alt, (room, scale) = parse_image_macro(text, index, (1,), ('id', 'scale'))
		if fname is None:
			raise MacroParsingError('Filename missing: #ROOM{}'.format(text[index:end]))
		frame = Frame(lambda: self.get_playarea_udgs(room), scale, 0, *crop_rect, name=frame)
		return end, self.handle_image(frame, fname, cwd, alt, 'PlayAreaImagePath')
