b $BE72 Graphic ID #N$00
@ $BE72 label=graphic_00
M $BE72,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BE72,$01
W $BE73,$02
  $BE75,$02 Attribute: #COLOUR(#PC+$01)
  $BE77,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E034,attr=$46) }
. UDGTABLE#
  $BE78,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E034,attr=$46) }
. UDGTABLE#
  $BE79,$01 Action: move down one character block.
  $BE7A,$01 Action: move down one character block.
  $BE7B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E05C,attr=$46) }
. UDGTABLE#
  $BE7C,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BE7E,$02 Attribute: #COLOUR(#PC+$01)
  $BE80,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E04C,attr=$42) }
. UDGTABLE#
  $BE81,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E054,attr=$42) }
. UDGTABLE#
  $BE82,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BE84,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E03C,attr=$42) }
. UDGTABLE#
  $BE85,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E044,attr=$42) }
. UDGTABLE#
  $BE86,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BE88,$02 Attribute: #COLOUR(#PC+$01)
M $BE8A,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BE8A,$01
W $BE8B,$02
  $BE8D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E08C,attr=$46) }
. UDGTABLE#
  $BE8E,$01 Terminator.

b $BE8F Graphic ID #N$01
@ $BE8F label=graphic_01
M $BE8F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BE8F,$01
W $BE90,$02
  $BE92,$02 Attribute: #COLOUR(#PC+$01)
  $BE94,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D23C,attr=$44) }
. UDGTABLE#
  $BE95,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c23 Columns } { #FOR$01,$17(n,=h #Nn, | ) }
. { #FOR$01,$17(n,#UDG($D20C,attr=$44), | ) }
. UDGTABLE#
  $BE98,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D214,attr=$44) })
. UDGTABLE#
  $BE9B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D21C,attr=$44) }
. UDGTABLE#
  $BE9C,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BE9E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D224,attr=$44) }
. UDGTABLE#
M $BE9F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BE9F,$01
W $BEA0,$02
  $BEA2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9F4,attr=$44) }
. UDGTABLE#
  $BEA3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$44) }
. UDGTABLE#
  $BEA4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9FC,attr=$44) }
. UDGTABLE#
  $BEA5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9F4,attr=$44) }
. UDGTABLE#
  $BEA6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$44) }
. UDGTABLE#
  $BEA7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$44) }
. UDGTABLE#
  $BEA8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$44) }
. UDGTABLE#
  $BEA9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9FC,attr=$44) }
. UDGTABLE#
  $BEAA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9F4,attr=$44) }
. UDGTABLE#
  $BEAB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$44) }
. UDGTABLE#
  $BEAC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$44) }
. UDGTABLE#
  $BEAD,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$44) }
. UDGTABLE#
  $BEAE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9FC,attr=$44) }
. UDGTABLE#
  $BEAF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9F4,attr=$44) }
. UDGTABLE#
  $BEB0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$44) }
. UDGTABLE#
  $BEB1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$44) }
. UDGTABLE#
  $BEB2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$44) }
. UDGTABLE#
  $BEB3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9FC,attr=$44) }
. UDGTABLE#
  $BEB4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9F4,attr=$44) }
. UDGTABLE#
  $BEB5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$44) }
. UDGTABLE#
  $BEB6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$44) }
. UDGTABLE#
  $BEB7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$44) }
. UDGTABLE#
  $BEB8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9FC,attr=$44) }
. UDGTABLE#
  $BEB9,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $BEBB,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BEBB,$01
W $BEBC,$02
  $BEBE,$02 Attribute: #COLOUR(#PC+$01)
  $BEC0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6BC,attr=$47) }
. UDGTABLE#
  $BEC1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6C4,attr=$47) }
. UDGTABLE#
  $BEC2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6C4,attr=$47) }
. UDGTABLE#
  $BEC3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6BC,attr=$47) }
. UDGTABLE#
  $BEC4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6C4,attr=$47) }
. UDGTABLE#
  $BEC5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6C4,attr=$47) }
. UDGTABLE#
  $BEC6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6BC,attr=$47) }
. UDGTABLE#
  $BEC7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6C4,attr=$47) }
. UDGTABLE#
  $BEC8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6C4,attr=$47) }
. UDGTABLE#
  $BEC9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6BC,attr=$47) }
. UDGTABLE#
  $BECA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6C4,attr=$47) }
. UDGTABLE#
  $BECB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6C4,attr=$47) }
. UDGTABLE#
  $BECC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6BC,attr=$47) }
. UDGTABLE#
  $BECD,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6C4,attr=$47) }
. UDGTABLE#
  $BECE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6C4,attr=$47) }
. UDGTABLE#
  $BECF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6BC,attr=$47) }
. UDGTABLE#
  $BED0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6C4,attr=$47) }
. UDGTABLE#
  $BED1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6C4,attr=$47) }
. UDGTABLE#
  $BED2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6BC,attr=$47) }
. UDGTABLE#
  $BED3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6C4,attr=$47) }
. UDGTABLE#
  $BED4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6C4,attr=$47) }
. UDGTABLE#
  $BED5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6BC,attr=$47) }
. UDGTABLE#
  $BED6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6C4,attr=$47) }
. UDGTABLE#
  $BED7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6C4,attr=$47) }
. UDGTABLE#
  $BED8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6CC,attr=$47) }
. UDGTABLE#
  $BED9,$01 Terminator.

b $BEDA Graphic ID #N$02
@ $BEDA label=graphic_02
M $BEDA,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BEDA,$01
W $BEDB,$02
  $BEDD,$02 Attribute: #COLOUR(#PC+$01)
  $BEDF,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($DDD4,attr=$43) })
. UDGTABLE#
  $BEE2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DDDC,attr=$43) }
. UDGTABLE#
  $BEE3,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BEE5,$02 Attribute: #COLOUR(#PC+$01)
  $BEE7,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($DDD4,attr=$45) })
. UDGTABLE#
  $BEEA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DDDC,attr=$45) }
. UDGTABLE#
  $BEEB,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BEED,$02 Attribute: #COLOUR(#PC+$01)
  $BEEF,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($DDD4,attr=$42) })
. UDGTABLE#
  $BEF2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DDDC,attr=$42) }
. UDGTABLE#
  $BEF3,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BEF5,$02 Attribute: #COLOUR(#PC+$01)
  $BEF7,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($DDD4,attr=$46) })
. UDGTABLE#
  $BEFA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DDDC,attr=$46) }
. UDGTABLE#
  $BEFB,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BEFD,$02 Attribute: #COLOUR(#PC+$01)
  $BEFF,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($DDE4,attr=$47), | ) }
. UDGTABLE#
  $BF02,$01 Terminator.

b $BF03 Graphic ID #N$03
@ $BF03 label=graphic_03
M $BF03,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BF03,$01
W $BF04,$02
  $BF06,$02 Attribute: #COLOUR(#PC+$01)
  $BF08,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DDEC,attr=$47), | ) }
. UDGTABLE#
  $BF0B,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $BF0D,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BF0D,$01
W $BF0E,$02
  $BF10,$02 Attribute: #COLOUR(#PC+$01)
  $BF12,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1BC,attr=$43) }
. UDGTABLE#
  $BF13,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1C4,attr=$43) }
. UDGTABLE#
  $BF14,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1CC,attr=$43) }
. UDGTABLE#
  $BF15,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1CC,attr=$43) }
. UDGTABLE#
  $BF16,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1BC,attr=$43) }
. UDGTABLE#
  $BF17,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1C4,attr=$43) }
. UDGTABLE#
  $BF18,$01 Terminator.

b $BF19 Graphic ID #N$04
@ $BF19 label=graphic_04
M $BF19,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BF19,$01
W $BF1A,$02
  $BF1C,$02 Attribute: #COLOUR(#PC+$01)
  $BF1E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DE04,attr=$46) }
. UDGTABLE#
  $BF1F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DE0C,attr=$46) }
. UDGTABLE#
  $BF20,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF22,$02 Attribute: #COLOUR(#PC+$01)
  $BF24,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DDF4,attr=$45) }
. UDGTABLE#
  $BF25,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DDFC,attr=$45) }
. UDGTABLE#
  $BF26,$01 Terminator.

b $BF27 Graphic ID #N$05
@ $BF27 label=graphic_05
M $BF27,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BF27,$01
W $BF28,$02
  $BF2A,$02 Attribute: #COLOUR(#PC+$01)
  $BF2C,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$03,,4(n,{ #Nn | #UDG($DDA4,attr=$45) })
. UDGTABLE#
  $BF2F,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF31,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$03,,4(n,{ #Nn | #UDG($DDA4,attr=$45) })
. UDGTABLE#
  $BF34,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF36,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD9C,attr=$45) }
. UDGTABLE#
  $BF37,$02 Attribute: #COLOUR(#PC+$01)
  $BF39,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF3B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD84,attr=$42) }
. UDGTABLE#
  $BF3C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD84,attr=$42) }
. UDGTABLE#
  $BF3D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD64,attr=$42) }
. UDGTABLE#
  $BF3E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD84,attr=$42) }
. UDGTABLE#
  $BF3F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD84,attr=$42) }
. UDGTABLE#
  $BF40,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD64,attr=$42) }
. UDGTABLE#
  $BF41,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD84,attr=$42) }
. UDGTABLE#
  $BF42,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD94,attr=$42) }
. UDGTABLE#
  $BF43,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF45,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD8C,attr=$42) }
. UDGTABLE#
  $BF46,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD8C,attr=$42) }
. UDGTABLE#
  $BF47,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DDAC,attr=$42) }
. UDGTABLE#
  $BF48,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD8C,attr=$42) }
. UDGTABLE#
  $BF49,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD8C,attr=$42) }
. UDGTABLE#
  $BF4A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DDAC,attr=$42) }
. UDGTABLE#
  $BF4B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD8C,attr=$42) }
. UDGTABLE#
  $BF4C,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF4E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD6C,attr=$42) }
. UDGTABLE#
  $BF4F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD74,attr=$42) }
. UDGTABLE#
  $BF50,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD7C,attr=$42) }
. UDGTABLE#
  $BF51,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF53,$02 Attribute: #COLOUR(#PC+$01)
  $BF55,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD54,attr=$47) }
. UDGTABLE#
  $BF56,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD54,attr=$47) }
. UDGTABLE#
  $BF57,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DDB4,attr=$47) }
. UDGTABLE#
  $BF58,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DDBC,attr=$47) }
. UDGTABLE#
  $BF59,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD54,attr=$47) }
. UDGTABLE#
  $BF5A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD54,attr=$47) }
. UDGTABLE#
  $BF5B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DDB4,attr=$47) }
. UDGTABLE#
  $BF5C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DDBC,attr=$47) }
. UDGTABLE#
  $BF5D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD54,attr=$47) }
. UDGTABLE#
  $BF5E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD54,attr=$47) }
. UDGTABLE#
  $BF5F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DDB4,attr=$47) }
. UDGTABLE#
  $BF60,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DDBC,attr=$47) }
. UDGTABLE#
  $BF61,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD54,attr=$47) }
. UDGTABLE#
  $BF62,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD5C,attr=$47) }
. UDGTABLE#
  $BF63,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF65,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD54,attr=$47) }
. UDGTABLE#
  $BF66,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD54,attr=$47) }
. UDGTABLE#
  $BF67,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DDCC,attr=$47) }
. UDGTABLE#
  $BF68,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DDC4,attr=$47) }
. UDGTABLE#
  $BF69,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD54,attr=$47) }
. UDGTABLE#
  $BF6A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD54,attr=$47) }
. UDGTABLE#
  $BF6B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DDCC,attr=$47) }
. UDGTABLE#
  $BF6C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DDC4,attr=$47) }
. UDGTABLE#
  $BF6D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD54,attr=$47) }
. UDGTABLE#
  $BF6E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD54,attr=$47) }
. UDGTABLE#
  $BF6F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DDCC,attr=$47) }
. UDGTABLE#
  $BF70,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DDC4,attr=$47) }
. UDGTABLE#
  $BF71,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD5C,attr=$47) }
. UDGTABLE#
  $BF72,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF74,$02 Attribute: #COLOUR(#PC+$01)
  $BF76,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c9 Columns } { #FOR$01,$09(n,=h #Nn, | ) }
. { #FOR$01,$09(n,#UDG($DD54,attr=$42), | ) }
. UDGTABLE#
  $BF79,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD5C,attr=$42) }
. UDGTABLE#
  $BF7A,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF7C,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($DD54,attr=$42), | ) }
. UDGTABLE#
  $BF7F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD5C,attr=$42) }
. UDGTABLE#
  $BF80,$01 Terminator.

b $BF81 Graphic ID #N$06
@ $BF81 label=graphic_06
M $BF81,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BF81,$01
W $BF82,$02
  $BF84,$02 Attribute: #COLOUR(#PC+$01)
  $BF86,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($DD3C,attr=$42) })
. UDGTABLE#
  $BF89,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD3C,attr=$42) }
. UDGTABLE#
  $BF8A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD14,attr=$42) }
. UDGTABLE#
  $BF8B,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF8D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD34,attr=$42) }
. UDGTABLE#
  $BF8E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD14,attr=$42) }
. UDGTABLE#
  $BF8F,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF91,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD2C,attr=$42) }
. UDGTABLE#
  $BF92,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD14,attr=$42) }
. UDGTABLE#
  $BF93,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF95,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD44,attr=$42) }
. UDGTABLE#
  $BF96,$01 Action: move down one character block.
  $BF97,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD24,attr=$42) }
. UDGTABLE#
  $BF98,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF9A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD3C,attr=$42) }
. UDGTABLE#
M $BF9B,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BF9B,$01
W $BF9C,$02
  $BF9E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$42) }
. UDGTABLE#
  $BF9F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$42) }
. UDGTABLE#
  $BFA0,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFA2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$42) }
. UDGTABLE#
  $BFA3,$01 Terminator.

b $BFA4 Graphic ID #N$07
@ $BFA4 label=graphic_07
M $BFA4,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BFA4,$01
W $BFA5,$02
  $BFA7,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFA9,$02 Attribute: #COLOUR(#PC+$01)
  $BFAB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCEC,attr=$44) }
. UDGTABLE#
  $BFAC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCF4,attr=$44) }
. UDGTABLE#
  $BFAD,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFAF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCFC,attr=$44) }
. UDGTABLE#
  $BFB0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD04,attr=$44) }
. UDGTABLE#
  $BFB1,$01 Terminator.

b $BFB2 Graphic ID #N$08
@ $BFB2 label=graphic_08
M $BFB2,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BFB2,$01
W $BFB3,$02
  $BFB5,$02 Attribute: #COLOUR(#PC+$01)
  $BFB7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD0C,attr=$28) }
. UDGTABLE#
  $BFB8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD4C,attr=$28) }
. UDGTABLE#
  $BFB9,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFBB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD0C,attr=$28) }
. UDGTABLE#
  $BFBC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD4C,attr=$28) }
. UDGTABLE#
  $BFBD,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFBF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD14,attr=$28) }
. UDGTABLE#
  $BFC0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD4C,attr=$28) }
. UDGTABLE#
  $BFC1,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFC3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD14,attr=$28) }
. UDGTABLE#
  $BFC4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD44,attr=$28) }
. UDGTABLE#
  $BFC5,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFC7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD14,attr=$28) }
. UDGTABLE#
  $BFC8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD44,attr=$28) }
. UDGTABLE#
  $BFC9,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFCB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD1C,attr=$28) }
. UDGTABLE#
  $BFCC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD3C,attr=$28) }
. UDGTABLE#
  $BFCD,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFCF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD1C,attr=$28) }
. UDGTABLE#
  $BFD0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD3C,attr=$28) }
. UDGTABLE#
  $BFD1,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFD3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD1C,attr=$28) }
. UDGTABLE#
  $BFD4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD34,attr=$28) }
. UDGTABLE#
  $BFD5,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFD7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD24,attr=$28) }
. UDGTABLE#
  $BFD8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DD2C,attr=$28) }
. UDGTABLE#
  $BFD9,$01 Terminator.

b $BFDA Graphic ID #N$09
@ $BFDA label=graphic_09
M $BFDA,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BFDA,$01
W $BFDB,$02
  $BFDD,$02 Attribute: #COLOUR(#PC+$01)
M $BFDF,$03 Switch #REGhl to #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BFDF,$01
W $BFE0,$02
M $BFE2,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BFE2,$01
W $BFE3,$02
  $BFE5,$02 Attribute: #COLOUR(#PC+$01)
  $BFE7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC9C,attr=$46) }
. UDGTABLE#
  $BFE8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCAC,attr=$46) }
. UDGTABLE#
  $BFE9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCB4,attr=$46) }
. UDGTABLE#
  $BFEA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCCC,attr=$46) }
. UDGTABLE#
  $BFEB,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFED,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCA4,attr=$46) }
. UDGTABLE#
  $BFEE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCBC,attr=$46) }
. UDGTABLE#
  $BFEF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCC4,attr=$46) }
. UDGTABLE#
  $BFF0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCD4,attr=$46) }
. UDGTABLE#
  $BFF1,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFF3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCDC,attr=$46) }
. UDGTABLE#
  $BFF4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCE4,attr=$46) }
. UDGTABLE#
  $BFF5,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFF7,$02 Attribute: #COLOUR(#PC+$01)
  $BFF9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC34,attr=$44) }
. UDGTABLE#
  $BFFA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC2C,attr=$44) }
. UDGTABLE#
  $BFFB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC2C,attr=$44) }
. UDGTABLE#
  $BFFC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC34,attr=$44) }
. UDGTABLE#
  $BFFD,$01 Terminator.

b $BFE2 Graphic ID #N$0A
@ $BFE2 label=graphic_0a
M $BFE2,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BFE2,$01
W $BFE3,$02
  $BFE5,$02 Attribute: #COLOUR(#PC+$01)
  $BFE7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC9C,attr=$46) }
. UDGTABLE#
  $BFE8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCAC,attr=$46) }
. UDGTABLE#
  $BFE9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCB4,attr=$46) }
. UDGTABLE#
  $BFEA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCCC,attr=$46) }
. UDGTABLE#
  $BFEB,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFED,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCA4,attr=$46) }
. UDGTABLE#
  $BFEE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCBC,attr=$46) }
. UDGTABLE#
  $BFEF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCC4,attr=$46) }
. UDGTABLE#
  $BFF0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCD4,attr=$46) }
. UDGTABLE#
  $BFF1,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFF3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCDC,attr=$46) }
. UDGTABLE#
  $BFF4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DCE4,attr=$46) }
. UDGTABLE#
  $BFF5,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFF7,$02 Attribute: #COLOUR(#PC+$01)
  $BFF9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC34,attr=$44) }
. UDGTABLE#
  $BFFA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC2C,attr=$44) }
. UDGTABLE#
  $BFFB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC2C,attr=$44) }
. UDGTABLE#
  $BFFC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC34,attr=$44) }
. UDGTABLE#
  $BFFD,$01 Terminator.

b $BFFE Graphic ID #N$0B
@ $BFFE label=graphic_0b
M $BFFE,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BFFE,$01
W $BFFF,$02
  $C001,$02 Attribute: #COLOUR(#PC+$01)
  $C003,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($DA2C,attr=$79), | ) }
. UDGTABLE#
  $C006,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C008,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($DA34,attr=$79), | ) }
. UDGTABLE#
  $C00B,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C00D,$02 Attribute: #COLOUR(#PC+$01)
M $C00F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C00F,$01
W $C010,$02
  $C012,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($E0DC,attr=$72), | ) }
. UDGTABLE#
M $C015,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C015,$01
W $C016,$02
  $C018,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA64,attr=$72) }
. UDGTABLE#
  $C019,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA6C,attr=$72) }
. UDGTABLE#
  $C01A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA6C,attr=$72) }
. UDGTABLE#
  $C01B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA74,attr=$72) }
. UDGTABLE#
  $C01C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA7C,attr=$72) }
. UDGTABLE#
  $C01D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA6C,attr=$72) }
. UDGTABLE#
  $C01E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA6C,attr=$72) }
. UDGTABLE#
M $C01F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C01F,$01
W $C020,$02
  $C022,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($E0DC,attr=$72), | ) }
. UDGTABLE#
  $C025,$01 Terminator.

b $C026 Graphic ID #N$0C
@ $C026 label=graphic_0c
M $C026,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C026,$01
W $C027,$02
  $C029,$02 Attribute: #COLOUR(#PC+$01)
  $C02B,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c24 Columns } { #FOR$01,$18(n,=h #Nn, | ) }
. { #FOR$01,$18(n,#UDG($E0DC,attr=$4E), | ) }
. UDGTABLE#
M $C02E,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C02E,$01
W $C02F,$02
  $C031,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C033,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DE54,attr=$4E) }
. UDGTABLE#
  $C034,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DE5C,attr=$4E) }
. UDGTABLE#
  $C035,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DE64,attr=$4E) }
. UDGTABLE#
  $C036,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DE6C,attr=$4E) }
. UDGTABLE#
  $C037,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DE74,attr=$4E) }
. UDGTABLE#
  $C038,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DE7C,attr=$4E) }
. UDGTABLE#
  $C039,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DE84,attr=$4E) }
. UDGTABLE#
  $C03A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DE8C,attr=$4E) }
. UDGTABLE#
  $C03B,$01 Terminator.

b $C03C Graphic ID #N$0D
@ $C03C label=graphic_0d
M $C03C,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C03C,$01
W $C03D,$02
  $C03F,$02 Attribute: #COLOUR(#PC+$01)
  $C041,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DE14,attr=$47) }
. UDGTABLE#
  $C042,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DE1C,attr=$47) }
. UDGTABLE#
  $C043,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DE24,attr=$47) }
. UDGTABLE#
  $C044,$01 Terminator.

b $C045 Graphic ID #N$0E
@ $C045 label=graphic_0e
M $C045,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C045,$01
W $C046,$02
  $C048,$02 Attribute: #COLOUR(#PC+$01)
  $C04A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DE2C,attr=$46) }
. UDGTABLE#
  $C04B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DE34,attr=$46) }
. UDGTABLE#
  $C04C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DE3C,attr=$46) }
. UDGTABLE#
  $C04D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DE44,attr=$46) }
. UDGTABLE#
  $C04E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DE4C,attr=$46) }
. UDGTABLE#
  $C04F,$01 Terminator.

b $C050 Graphic ID #N$0F
@ $C050 label=graphic_0f
M $C050,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C050,$01
W $C051,$02
  $C053,$02 Attribute: #COLOUR(#PC+$01)
  $C055,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DE94,attr=$60) }
. UDGTABLE#
  $C056,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DE9C,attr=$60) }
. UDGTABLE#
  $C057,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DEA4,attr=$60) }
. UDGTABLE#
  $C058,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DEAC,attr=$60) }
. UDGTABLE#
  $C059,$01 Terminator.

b $C05A Graphic ID #N$10
@ $C05A label=graphic_10
M $C05A,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C05A,$01
W $C05B,$02
  $C05D,$02 Attribute: #COLOUR(#PC+$01)
  $C05F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DEB4,attr=$4F) }
. UDGTABLE#
  $C060,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DEBC,attr=$4F) }
. UDGTABLE#
  $C061,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DEC4,attr=$4F) }
. UDGTABLE#
  $C062,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DECC,attr=$4F) }
. UDGTABLE#
  $C063,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DED4,attr=$4F) }
. UDGTABLE#
M $C064,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C064,$01
W $C065,$02
  $C067,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DEDC,attr=$4F) }
. UDGTABLE#
  $C068,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DEE4,attr=$4F) }
. UDGTABLE#
  $C069,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DEEC,attr=$4F) }
. UDGTABLE#
  $C06A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DEF4,attr=$4F) }
. UDGTABLE#
  $C06B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DEFC,attr=$4F) }
. UDGTABLE#
  $C06C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF04,attr=$4F) }
. UDGTABLE#
M $C06D,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C06D,$01
W $C06E,$02
  $C070,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0DC,attr=$4F) }
. UDGTABLE#
  $C071,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0DC,attr=$4F) }
. UDGTABLE#
  $C072,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0DC,attr=$4F) }
. UDGTABLE#
  $C073,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C075,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0DC,attr=$4F) }
. UDGTABLE#
  $C076,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0DC,attr=$4F) }
. UDGTABLE#
  $C077,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C079,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($E0DC,attr=$4F), | ) }
. UDGTABLE#
  $C07C,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C07E,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($E0DC,attr=$4F), | ) }
. UDGTABLE#
  $C081,$01 Terminator.

b $C082 Graphic ID #N$11
@ $C082 label=graphic_11
M $C082,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C082,$01
W $C083,$02
  $C085,$02 Attribute: #COLOUR(#PC+$01)
  $C087,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c7 Columns } { #FOR$01,$07(n,=h #Nn, | ) }
. { #FOR$01,$07(n,#UDG($E0DC,attr=$57), | ) }
. UDGTABLE#
  $C08A,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C08C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0DC,attr=$57) }
. UDGTABLE#
  $C08D,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C08F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0DC,attr=$57) }
. UDGTABLE#
  $C090,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C092,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c7 Columns } { #FOR$01,$07(n,=h #Nn, | ) }
. { #FOR$01,$07(n,#UDG($E0DC,attr=$57), | ) }
. UDGTABLE#
  $C095,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $C097,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C097,$01
W $C098,$02
  $C09A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF0C,attr=$57) }
. UDGTABLE#
  $C09B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF14,attr=$57) }
. UDGTABLE#
  $C09C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF1C,attr=$57) }
. UDGTABLE#
  $C09D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF24,attr=$57) }
. UDGTABLE#
  $C09E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF2C,attr=$57) }
. UDGTABLE#
  $C09F,$01 Terminator.

b $C0A0 Graphic ID #N$12
@ $C0A0 label=graphic_12
M $C0A0,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C0A0,$01
W $C0A1,$02
  $C0A3,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0A5,$02 Attribute: #COLOUR(#PC+$01)
  $C0A7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D7AC,attr=$45) }
. UDGTABLE#
  $C0A8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D7B4,attr=$45) }
. UDGTABLE#
  $C0A9,$01 Terminator.

b $C0AA Graphic ID #N$13
@ $C0AA label=graphic_13
M $C0AA,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C0AA,$01
W $C0AB,$02
  $C0AD,$02 Attribute: #COLOUR(#PC+$01)
  $C0AF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D75C,attr=$46) }
. UDGTABLE#
  $C0B0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D76C,attr=$46) }
. UDGTABLE#
  $C0B1,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0B3,$02 Attribute: #COLOUR(#PC+$01)
  $C0B5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D79C,attr=$42) }
. UDGTABLE#
  $C0B6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D7A4,attr=$42) }
. UDGTABLE#
  $C0B7,$01 Terminator.

b $C0B8 Graphic ID #N$14
@ $C0B8 label=graphic_14
M $C0B8,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C0B8,$01
W $C0B9,$02
  $C0BB,$02 Attribute: #COLOUR(#PC+$01)
  $C0BD,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D394,attr=$44)#UDG($D39C,attr=$44), | ) }
. UDGTABLE#
  $C0C1,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0C3,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D39C,attr=$44)#UDG($D394,attr=$44), | ) }
. UDGTABLE#
  $C0C7,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0C9,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D394,attr=$44)#UDG($D39C,attr=$44), | ) }
. UDGTABLE#
  $C0CD,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0CF,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D39C,attr=$44)#UDG($D394,attr=$44), | ) }
. UDGTABLE#
  $C0D3,$01 Terminator.

b $C0D4 Graphic ID #N$15
@ $C0D4 label=graphic_15
M $C0D4,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C0D4,$01
W $C0D5,$02
  $C0D7,$02 Attribute: #COLOUR(#PC+$01)
M $C0D9,$03 Switch #REGhl to #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C0D9,$01
W $C0DA,$02
M $C0DC,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C0DC,$01
W $C0DD,$02
  $C0DF,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0E1,$02 Attribute: #COLOUR(#PC+$01)
  $C0E3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFB4,attr=$42) }
. UDGTABLE#
  $C0E4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFC4,attr=$42) }
. UDGTABLE#
  $C0E5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFB4,attr=$42) }
. UDGTABLE#
  $C0E6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFBC,attr=$42) }
. UDGTABLE#
  $C0E7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFBC,attr=$42) }
. UDGTABLE#
  $C0E8,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0EA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFAC,attr=$42) }
. UDGTABLE#
  $C0EB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFC4,attr=$42) }
. UDGTABLE#
  $C0EC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFB4,attr=$42) }
. UDGTABLE#
  $C0ED,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0EF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFBC,attr=$42) }
. UDGTABLE#
  $C0F0,$01 Terminator.

b $C0DC Graphic ID #N$16
@ $C0DC label=graphic_16
M $C0DC,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C0DC,$01
W $C0DD,$02
  $C0DF,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0E1,$02 Attribute: #COLOUR(#PC+$01)
  $C0E3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFB4,attr=$42) }
. UDGTABLE#
  $C0E4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFC4,attr=$42) }
. UDGTABLE#
  $C0E5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFB4,attr=$42) }
. UDGTABLE#
  $C0E6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFBC,attr=$42) }
. UDGTABLE#
  $C0E7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFBC,attr=$42) }
. UDGTABLE#
  $C0E8,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0EA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFAC,attr=$42) }
. UDGTABLE#
  $C0EB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFC4,attr=$42) }
. UDGTABLE#
  $C0EC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFB4,attr=$42) }
. UDGTABLE#
  $C0ED,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0EF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFBC,attr=$42) }
. UDGTABLE#
  $C0F0,$01 Terminator.

b $C0F1 Graphic ID #N$17
@ $C0F1 label=graphic_17
M $C0F1,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C0F1,$01
W $C0F2,$02
  $C0F4,$02 Attribute: #COLOUR(#PC+$01)
  $C0F6,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$09,,4(n,{ #Nn | #UDG($DC74,attr=$45) })
. UDGTABLE#
  $C0F9,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0FB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC7C,attr=$45) }
. UDGTABLE#
  $C0FC,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0FE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC7C,attr=$45) }
. UDGTABLE#
  $C0FF,$02 Attribute: #COLOUR(#PC+$01)
  $C101,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C103,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC4C,attr=$47) }
. UDGTABLE#
  $C104,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C106,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC6C,attr=$47) }
. UDGTABLE#
  $C107,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC54,attr=$47) }
. UDGTABLE#
  $C108,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC44,attr=$47) }
. UDGTABLE#
  $C109,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C10B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC64,attr=$47) }
. UDGTABLE#
  $C10C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC5C,attr=$47) }
. UDGTABLE#
  $C10D,$01 Action: move down one character block.
  $C10E,$02 Attribute: #COLOUR(#PC+$01)
  $C110,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC24,attr=$44) }
. UDGTABLE#
  $C111,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC8C,attr=$44) }
. UDGTABLE#
  $C112,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC94,attr=$44) }
. UDGTABLE#
  $C113,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC84,attr=$44) }
. UDGTABLE#
  $C114,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C116,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC3C,attr=$44) }
. UDGTABLE#
  $C117,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC3C,attr=$44) }
. UDGTABLE#
  $C118,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC3C,attr=$44) }
. UDGTABLE#
  $C119,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC24,attr=$44) }
. UDGTABLE#
  $C11A,$01 Action: move down one character block.
  $C11B,$01 Action: move down one character block.
  $C11C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC84,attr=$44) }
. UDGTABLE#
  $C11D,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C11F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC3C,attr=$44) }
. UDGTABLE#
  $C120,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC3C,attr=$44) }
. UDGTABLE#
  $C121,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC8C,attr=$44) }
. UDGTABLE#
  $C122,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC94,attr=$44) }
. UDGTABLE#
  $C123,$01 Action: move down one character block.
  $C124,$01 Action: move down one character block.
  $C125,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC84,attr=$44) }
. UDGTABLE#
  $C126,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C128,$02 Attribute: #COLOUR(#PC+$01)
  $C12A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC2C,attr=$46) }
. UDGTABLE#
  $C12B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC34,attr=$46) }
. UDGTABLE#
  $C12C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC2C,attr=$46) }
. UDGTABLE#
  $C12D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC2C,attr=$46) }
. UDGTABLE#
  $C12E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC2C,attr=$46) }
. UDGTABLE#
  $C12F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC34,attr=$46) }
. UDGTABLE#
  $C130,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC2C,attr=$46) }
. UDGTABLE#
  $C131,$01 Terminator.

b $C132 Graphic ID #N$18
@ $C132 label=graphic_18
M $C132,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C132,$01
W $C133,$02
  $C135,$02 Attribute: #COLOUR(#PC+$01)
  $C137,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBAC,attr=$45) }
. UDGTABLE#
  $C138,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC0C,attr=$45) }
. UDGTABLE#
  $C139,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C13B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC14,attr=$45) }
. UDGTABLE#
  $C13C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC1C,attr=$45) }
. UDGTABLE#
  $C13D,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C13F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBEC,attr=$45) }
. UDGTABLE#
  $C140,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBF4,attr=$45) }
. UDGTABLE#
  $C141,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBCC,attr=$45) }
. UDGTABLE#
  $C142,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBD4,attr=$45) }
. UDGTABLE#
  $C143,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C145,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBFC,attr=$45) }
. UDGTABLE#
  $C146,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC04,attr=$45) }
. UDGTABLE#
  $C147,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBBC,attr=$45) }
. UDGTABLE#
  $C148,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBC4,attr=$45) }
. UDGTABLE#
  $C149,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C14B,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$09,,4(n,{ #Nn | #UDG($DC14,attr=$45) })
. UDGTABLE#
  $C14E,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C150,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBDC,attr=$45) }
. UDGTABLE#
  $C151,$01 Action: move down one character block.
  $C152,$01 Action: move down one character block.
  $C153,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBE4,attr=$45) }
. UDGTABLE#
  $C154,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C156,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$09,,4(n,{ #Nn | #UDG($DC1C,attr=$45) })
. UDGTABLE#
  $C159,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C15B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBAC,attr=$45) }
. UDGTABLE#
  $C15C,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DBB4,attr=$45), | ) }
. UDGTABLE#
  $C15F,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C161,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBAC,attr=$45) }
. UDGTABLE#
  $C162,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c7 Columns } { #FOR$01,$07(n,=h #Nn, | ) }
. { #FOR$01,$07(n,#UDG($DBB4,attr=$45), | ) }
. UDGTABLE#
  $C165,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C167,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBB4,attr=$45) }
. UDGTABLE#
  $C168,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBB4,attr=$45) }
. UDGTABLE#
  $C169,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBB4,attr=$45) }
. UDGTABLE#
  $C16A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC0C,attr=$45) }
. UDGTABLE#
  $C16B,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C16D,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($DBB4,attr=$45), | ) }
. UDGTABLE#
  $C170,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC0C,attr=$45) }
. UDGTABLE#
  $C171,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C173,$02 Attribute: #COLOUR(#PC+$01)
M $C175,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C175,$01
W $C176,$02
  $C178,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5A4,attr=$43) }
. UDGTABLE#
  $C179,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5AC,attr=$43) }
. UDGTABLE#
  $C17A,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C17C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5CC,attr=$43) }
. UDGTABLE#
  $C17D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5D4,attr=$43) }
. UDGTABLE#
  $C17E,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C180,$02 Attribute: #COLOUR(#PC+$01)
  $C182,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5E4,attr=$46) }
. UDGTABLE#
  $C183,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5E4,attr=$46) }
. UDGTABLE#
  $C184,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C186,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5E4,attr=$46) }
. UDGTABLE#
  $C187,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5E4,attr=$46) }
. UDGTABLE#
  $C188,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C18A,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D5E4,attr=$46), | ) }
. UDGTABLE#
  $C18D,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C18F,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D5E4,attr=$46), | ) }
. UDGTABLE#
  $C192,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $C194,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C194,$01
W $C195,$02
  $C197,$02 Attribute: #COLOUR(#PC+$01)
  $C199,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$07,,4(n,{ #Nn | #UDG($DA84,attr=$43) })
. UDGTABLE#
  $C19C,$01 Terminator.

b $C19D Graphic ID #N$19
@ $C19D label=graphic_19
M $C19D,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C19D,$01
W $C19E,$02
  $C1A0,$02 Attribute: #COLOUR(#PC+$01)
  $C1A2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBAC,attr=$7) }
. UDGTABLE#
  $C1A3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC0C,attr=$7) }
. UDGTABLE#
  $C1A4,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1A6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC14,attr=$7) }
. UDGTABLE#
  $C1A7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC1C,attr=$7) }
. UDGTABLE#
  $C1A8,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1AA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC14,attr=$7) }
. UDGTABLE#
  $C1AB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC1C,attr=$7) }
. UDGTABLE#
  $C1AC,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1AE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBDC,attr=$7) }
. UDGTABLE#
  $C1AF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC14,attr=$7) }
. UDGTABLE#
  $C1B0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC1C,attr=$7) }
. UDGTABLE#
  $C1B1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBE4,attr=$7) }
. UDGTABLE#
  $C1B2,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1B4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBCC,attr=$7) }
. UDGTABLE#
  $C1B5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBD4,attr=$7) }
. UDGTABLE#
  $C1B6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBEC,attr=$7) }
. UDGTABLE#
  $C1B7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBF4,attr=$7) }
. UDGTABLE#
  $C1B8,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1BA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBBC,attr=$7) }
. UDGTABLE#
  $C1BB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBC4,attr=$7) }
. UDGTABLE#
  $C1BC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBFC,attr=$7) }
. UDGTABLE#
  $C1BD,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC04,attr=$7) }
. UDGTABLE#
  $C1BE,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1C0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBDC,attr=$7) }
. UDGTABLE#
  $C1C1,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1C3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBE4,attr=$7) }
. UDGTABLE#
  $C1C4,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1C6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBCC,attr=$7) }
. UDGTABLE#
  $C1C7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBD4,attr=$7) }
. UDGTABLE#
  $C1C8,$01 Action: move down one character block.
  $C1C9,$01 Action: move down one character block.
  $C1CA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBEC,attr=$7) }
. UDGTABLE#
  $C1CB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBF4,attr=$7) }
. UDGTABLE#
  $C1CC,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1CE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBBC,attr=$7) }
. UDGTABLE#
  $C1CF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBC4,attr=$7) }
. UDGTABLE#
  $C1D0,$01 Action: move down one character block.
  $C1D1,$01 Action: move down one character block.
  $C1D2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBFC,attr=$7) }
. UDGTABLE#
  $C1D3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC04,attr=$7) }
. UDGTABLE#
  $C1D4,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1D6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBDC,attr=$7) }
. UDGTABLE#
  $C1D7,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1D9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBE4,attr=$7) }
. UDGTABLE#
  $C1DA,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1DC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBCC,attr=$7) }
. UDGTABLE#
  $C1DD,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBD4,attr=$7) }
. UDGTABLE#
  $C1DE,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1E0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBEC,attr=$7) }
. UDGTABLE#
  $C1E1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBF4,attr=$7) }
. UDGTABLE#
  $C1E2,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1E4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBBC,attr=$7) }
. UDGTABLE#
  $C1E5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBC4,attr=$7) }
. UDGTABLE#
  $C1E6,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1E8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBFC,attr=$7) }
. UDGTABLE#
  $C1E9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DC04,attr=$7) }
. UDGTABLE#
  $C1EA,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1EC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBDC,attr=$7) }
. UDGTABLE#
  $C1ED,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1EF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBE4,attr=$7) }
. UDGTABLE#
  $C1F0,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1F2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBCC,attr=$7) }
. UDGTABLE#
  $C1F3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBD4,attr=$7) }
. UDGTABLE#
  $C1F4,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1F6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBEC,attr=$7) }
. UDGTABLE#
  $C1F7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBF4,attr=$7) }
. UDGTABLE#
  $C1F8,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1FA,$02 Attribute: #COLOUR(#PC+$01)
  $C1FC,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($DBB4,attr=$46), | ) }
. UDGTABLE#
  $C1FF,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C201,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DBB4,attr=$46), | ) }
. UDGTABLE#
  $C204,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C206,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($DBB4,attr=$46), | ) }
. UDGTABLE#
  $C209,$01 Terminator.

b $C20A Graphic ID #N$1A
@ $C20A label=graphic_1a
M $C20A,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C20A,$01
W $C20B,$02
  $C20D,$02 Attribute: #COLOUR(#PC+$01)
  $C20F,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D72C,attr=$47) })
. UDGTABLE#
  $C212,$02 Attribute: #COLOUR(#PC+$01)
  $C214,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D734,attr=$46) })
. UDGTABLE#
  $C217,$02 Attribute: #COLOUR(#PC+$01)
  $C219,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D73C,attr=$42) }
. UDGTABLE#
  $C21A,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C21C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D744,attr=$42) }
. UDGTABLE#
  $C21D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D74C,attr=$42) }
. UDGTABLE#
  $C21E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D754,attr=$42) }
. UDGTABLE#
  $C21F,$01 Terminator.

b $C220 Graphic ID #N$1B
@ $C220 label=graphic_1b
M $C220,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C220,$01
W $C221,$02
  $C223,$02 Attribute: #COLOUR(#PC+$01)
  $C225,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D794,attr=$44) }
. UDGTABLE#
  $C226,$02 Attribute: #COLOUR(#PC+$01)
  $C228,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C22A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D784,attr=$47) }
. UDGTABLE#
  $C22B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D764,attr=$47) }
. UDGTABLE#
  $C22C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D78C,attr=$47) }
. UDGTABLE#
  $C22D,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C22F,$02 Attribute: #COLOUR(#PC+$01)
  $C231,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D774,attr=$44) }
. UDGTABLE#
  $C232,$01 Action: move down one character block.
  $C233,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D77C,attr=$44) }
. UDGTABLE#
  $C234,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C236,$02 Attribute: #COLOUR(#PC+$01)
  $C238,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D75C,attr=$47) }
. UDGTABLE#
  $C239,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D764,attr=$47) }
. UDGTABLE#
  $C23A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D76C,attr=$47) }
. UDGTABLE#
  $C23B,$01 Terminator.

b $C23C Graphic ID #N$1C
@ $C23C label=graphic_1c
M $C23C,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C23C,$01
W $C23D,$02
  $C23F,$02 Attribute: #COLOUR(#PC+$01)
  $C241,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D57C,attr=$43) }
. UDGTABLE#
  $C242,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D584,attr=$43) })
. UDGTABLE#
  $C245,$02 Attribute: #COLOUR(#PC+$01)
  $C247,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$0A,,4(n,{ #Nn | #UDG($D594,attr=$7) })
. UDGTABLE#
  $C24A,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C24C,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$0A,,4(n,{ #Nn | #UDG($D58C,attr=$7) })
. UDGTABLE#
  $C24F,$02 Attribute: #COLOUR(#PC+$01)
  $C251,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D56C,attr=$43) }
. UDGTABLE#
  $C252,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D574,attr=$43) }
. UDGTABLE#
  $C253,$01 Terminator.

b $C254 Graphic ID #N$1D
@ $C254 label=graphic_1d
M $C254,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C254,$01
W $C255,$02
  $C257,$02 Attribute: #COLOUR(#PC+$01)
  $C259,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1D4,attr=$47) }
. UDGTABLE#
  $C25A,$02 Attribute: #COLOUR(#PC+$01)
  $C25C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1DC,attr=$43) }
. UDGTABLE#
  $C25D,$02 Attribute: #COLOUR(#PC+$01)
  $C25F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1E4,attr=$42) }
. UDGTABLE#
  $C260,$02 Attribute: #COLOUR(#PC+$01)
  $C262,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1D4,attr=$46) }
. UDGTABLE#
  $C263,$02 Attribute: #COLOUR(#PC+$01)
  $C265,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1DC,attr=$43) }
. UDGTABLE#
  $C266,$02 Attribute: #COLOUR(#PC+$01)
  $C268,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1E4,attr=$47) }
. UDGTABLE#
  $C269,$02 Attribute: #COLOUR(#PC+$01)
  $C26B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1E4,attr=$44) }
. UDGTABLE#
  $C26C,$02 Attribute: #COLOUR(#PC+$01)
  $C26E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1D4,attr=$46) }
. UDGTABLE#
  $C26F,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C271,$02 Attribute: #COLOUR(#PC+$01)
  $C273,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1BC,attr=$45) }
. UDGTABLE#
  $C274,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1C4,attr=$45) }
. UDGTABLE#
  $C275,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1CC,attr=$45) }
. UDGTABLE#
  $C276,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1BC,attr=$45) }
. UDGTABLE#
  $C277,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1C4,attr=$45) }
. UDGTABLE#
  $C278,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1CC,attr=$45) }
. UDGTABLE#
  $C279,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1BC,attr=$45) }
. UDGTABLE#
  $C27A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1C4,attr=$45) }
. UDGTABLE#
  $C27B,$01 Terminator.

b $C27C Graphic ID #N$1E
@ $C27C label=graphic_1e
M $C27C,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C27C,$01
W $C27D,$02
  $C27F,$02 Attribute: #COLOUR(#PC+$01)
  $C281,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D774,attr=$45) }
. UDGTABLE#
  $C282,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D77C,attr=$45) }
. UDGTABLE#
  $C283,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $C285,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C285,$01
W $C286,$02
  $C288,$02 Attribute: #COLOUR(#PC+$01)
  $C28A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D514,attr=$72) }
. UDGTABLE#
  $C28B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D514,attr=$72) }
. UDGTABLE#
  $C28C,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C28E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D514,attr=$72) }
. UDGTABLE#
  $C28F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D514,attr=$72) }
. UDGTABLE#
  $C290,$01 Terminator.

b $C291 Graphic ID #N$1F
@ $C291 label=graphic_1f
M $C291,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C291,$01
W $C292,$02
  $C294,$02 Attribute: #COLOUR(#PC+$01)
  $C296,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c32 Columns } { #FOR$01,$20(n,=h #Nn, | ) }
. { #FOR$01,$20(n,#UDG($E024,attr=$44), | ) }
. UDGTABLE#
  $C299,$01 Terminator.

b $C29A Graphic ID #N$20
@ $C29A label=graphic_20
M $C29A,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C29A,$01
W $C29B,$02
  $C29D,$02 Attribute: #COLOUR(#PC+$01)
  $C29F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D304,attr=$45) }
. UDGTABLE#
  $C2A0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D30C,attr=$45) }
. UDGTABLE#
  $C2A1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D314,attr=$45) }
. UDGTABLE#
  $C2A2,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C2A4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D31C,attr=$45) }
. UDGTABLE#
  $C2A5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D324,attr=$45) }
. UDGTABLE#
  $C2A6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D32C,attr=$45) }
. UDGTABLE#
  $C2A7,$01 Terminator.

b $C2A8 Graphic ID #N$21
@ $C2A8 label=graphic_21
M $C2A8,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C2A8,$01
W $C2A9,$02
  $C2AB,$02 Attribute: #COLOUR(#PC+$01)
  $C2AD,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D694,attr=$44) }
. UDGTABLE#
  $C2AE,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c22 Columns } { #FOR$01,$16(n,=h #Nn, | ) }
. { #FOR$01,$16(n,#UDG($D69C,attr=$44), | ) }
. UDGTABLE#
  $C2B1,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D6A4,attr=$44) })
. UDGTABLE#
  $C2B4,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($D6B4,attr=$44) })
. UDGTABLE#
  $C2B7,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C2B9,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($D6AC,attr=$44) })
. UDGTABLE#
  $C2BC,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C2BE,$02 Attribute: #COLOUR(#PC+$01)
M $C2C0,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C2C0,$01
W $C2C1,$02
  $C2C3,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c11 Columns } { #FOR$01,$0B(n,=h #Nn, | ) }
. { #FOR$01,$0B(n,#UDG($D5A4,attr=$46)#UDG($D5AC,attr=$46), | ) }
. UDGTABLE#
  $C2C7,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C2C9,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c11 Columns } { #FOR$01,$0B(n,=h #Nn, | ) }
. { #FOR$01,$0B(n,#UDG($D5B4,attr=$46)#UDG($D5BC,attr=$46), | ) }
. UDGTABLE#
  $C2CD,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C2CF,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c11 Columns } { #FOR$01,$0B(n,=h #Nn, | ) }
. { #FOR$01,$0B(n,#UDG($D5B4,attr=$46)#UDG($D5BC,attr=$46), | ) }
. UDGTABLE#
  $C2D3,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C2D5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5B4,attr=$46) }
. UDGTABLE#
  $C2D6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5BC,attr=$46) }
. UDGTABLE#
  $C2D7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5CC,attr=$46) }
. UDGTABLE#
  $C2D8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5D4,attr=$46) }
. UDGTABLE#
  $C2D9,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c3 Columns } { #FOR$01,$03(n,=h #Nn, | ) }
. { #FOR$01,$03(n,#UDG($D5B4,attr=$46)#UDG($D5BC,attr=$46), | ) }
. UDGTABLE#
  $C2DD,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5CC,attr=$46) }
. UDGTABLE#
  $C2DE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5D4,attr=$46) }
. UDGTABLE#
  $C2DF,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c3 Columns } { #FOR$01,$03(n,=h #Nn, | ) }
. { #FOR$01,$03(n,#UDG($D5B4,attr=$46)#UDG($D5BC,attr=$46), | ) }
. UDGTABLE#
  $C2E3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5CC,attr=$46) }
. UDGTABLE#
  $C2E4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5D4,attr=$46) }
. UDGTABLE#
  $C2E5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5B4,attr=$46) }
. UDGTABLE#
  $C2E6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5BC,attr=$46) }
. UDGTABLE#
  $C2E7,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C2E9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5CC,attr=$46) }
. UDGTABLE#
  $C2EA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5D4,attr=$46) }
. UDGTABLE#
  $C2EB,$01 Action: move down one character block.
  $C2EC,$01 Action: move down one character block.
  $C2ED,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c3 Columns } { #FOR$01,$03(n,=h #Nn, | ) }
. { #FOR$01,$03(n,#UDG($D5CC,attr=$46)#UDG($D5D4,attr=$46), | ) }
. UDGTABLE#
  $C2F1,$01 Action: move down one character block.
  $C2F2,$01 Action: move down one character block.
  $C2F3,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c3 Columns } { #FOR$01,$03(n,=h #Nn, | ) }
. { #FOR$01,$03(n,#UDG($D5CC,attr=$46)#UDG($D5D4,attr=$46), | ) }
. UDGTABLE#
  $C2F7,$01 Action: move down one character block.
  $C2F8,$01 Action: move down one character block.
  $C2F9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5CC,attr=$46) }
. UDGTABLE#
  $C2FA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5D4,attr=$46) }
. UDGTABLE#
  $C2FB,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C2FD,$02 Attribute: #COLOUR(#PC+$01)
M $C2FF,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C2FF,$01
W $C300,$02
  $C302,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D23C,attr=$45) }
. UDGTABLE#
  $C303,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c26 Columns } { #FOR$01,$1A(n,=h #Nn, | ) }
. { #FOR$01,$1A(n,#UDG($D20C,attr=$45), | ) }
. UDGTABLE#
  $C306,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D214,attr=$45) })
. UDGTABLE#
  $C309,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D21C,attr=$45) })
. UDGTABLE#
  $C30C,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C30E,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D224,attr=$45) })
. UDGTABLE#
  $C311,$01 Terminator.

b $C312 Graphic ID #N$22
@ $C312 label=graphic_22
M $C312,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C312,$01
W $C313,$02
  $C315,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C317,$02 Attribute: #COLOUR(#PC+$01)
  $C319,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9F4,attr=$45) }
. UDGTABLE#
  $C31A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$45) }
. UDGTABLE#
  $C31B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9FC,attr=$45) }
. UDGTABLE#
  $C31C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9F4,attr=$45) }
. UDGTABLE#
  $C31D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$45) }
. UDGTABLE#
  $C31E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$45) }
. UDGTABLE#
  $C31F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$45) }
. UDGTABLE#
  $C320,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9FC,attr=$45) }
. UDGTABLE#
  $C321,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9F4,attr=$45) }
. UDGTABLE#
  $C322,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$45) }
. UDGTABLE#
  $C323,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$45) }
. UDGTABLE#
  $C324,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$45) }
. UDGTABLE#
  $C325,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9FC,attr=$45) }
. UDGTABLE#
  $C326,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9F4,attr=$45) }
. UDGTABLE#
  $C327,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$45) }
. UDGTABLE#
  $C328,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$45) }
. UDGTABLE#
  $C329,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$45) }
. UDGTABLE#
  $C32A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9FC,attr=$45) }
. UDGTABLE#
  $C32B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9F4,attr=$45) }
. UDGTABLE#
  $C32C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$45) }
. UDGTABLE#
  $C32D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$45) }
. UDGTABLE#
  $C32E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$45) }
. UDGTABLE#
  $C32F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9FC,attr=$45) }
. UDGTABLE#
  $C330,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9F4,attr=$45) }
. UDGTABLE#
  $C331,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$45) }
. UDGTABLE#
  $C332,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9FC,attr=$45) }
. UDGTABLE#
  $C333,$01 Terminator.

b $C334 Graphic ID #N$23
@ $C334 label=graphic_23
M $C334,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C334,$01
W $C335,$02
  $C337,$02 Attribute: #COLOUR(#PC+$01)
  $C339,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D6CC,attr=$45) })
. UDGTABLE#
  $C33C,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$07,,4(n,{ #Nn | #UDG($D704,attr=$45) })
. UDGTABLE#
  $C33F,$02 Attribute: #COLOUR(#PC+$01)
M $C341,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C341,$01
W $C342,$02
  $C344,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1C4,attr=$44) }
. UDGTABLE#
  $C345,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1CC,attr=$44) }
. UDGTABLE#
  $C346,$01 Terminator.

b $C347 Graphic ID #N$24
@ $C347 label=graphic_24
M $C347,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C347,$01
W $C348,$02
  $C34A,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C34C,$02 Attribute: #COLOUR(#PC+$01)
  $C34E,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c23 Columns } { #FOR$01,$17(n,=h #Nn, | ) }
. { #FOR$01,$17(n,#UDG($E064,attr=$45), | ) }
. UDGTABLE#
  $C351,$01 Terminator.

b $C352 Graphic ID #N$25
@ $C352 label=graphic_25
M $C352,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C352,$01
W $C353,$02
  $C355,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C357,$02 Attribute: #COLOUR(#PC+$01)
  $C359,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c32 Columns } { #FOR$01,$20(n,=h #Nn, | ) }
. { #FOR$01,$20(n,#UDG($DFEC,attr=$5), | ) }
. UDGTABLE#
  $C35C,$01 Terminator.

b $C35D Graphic ID #N$26
@ $C35D label=graphic_26
M $C35D,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C35D,$01
W $C35E,$02
  $C360,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C362,$02 Attribute: #COLOUR(#PC+$01)
  $C364,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($E014,attr=$43)#UDG($E01C,attr=$43), | ) }
. UDGTABLE#
  $C368,$01 Terminator.

b $C369 Graphic ID #N$27
@ $C369 label=graphic_27
M $C369,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C369,$01
W $C36A,$02
  $C36C,$02 Attribute: #COLOUR(#PC+$01)
  $C36E,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D204,attr=$46) })
. UDGTABLE#
  $C371,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D224,attr=$46) }
. UDGTABLE#
  $C372,$01 Action: move down one character block.
  $C373,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D22C,attr=$46) }
. UDGTABLE#
  $C374,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D214,attr=$46) }
. UDGTABLE#
  $C375,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C377,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D224,attr=$46) }
. UDGTABLE#
  $C378,$01 Action: move down one character block.
  $C379,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D234,attr=$46) }
. UDGTABLE#
  $C37A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D21C,attr=$46) }
. UDGTABLE#
  $C37B,$01 Terminator.

b $C37C Graphic ID #N$28
@ $C37C label=graphic_28
M $C37C,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C37C,$01
W $C37D,$02
  $C37F,$02 Attribute: #COLOUR(#PC+$01)
  $C381,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E074,attr=$46) }
. UDGTABLE#
  $C382,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E07C,attr=$46) }
. UDGTABLE#
  $C383,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E074,attr=$46) }
. UDGTABLE#
  $C384,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E07C,attr=$46) }
. UDGTABLE#
  $C385,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E074,attr=$46) }
. UDGTABLE#
  $C386,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E094,attr=$46) }
. UDGTABLE#
  $C387,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C389,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E08C,attr=$46) }
. UDGTABLE#
  $C38A,$01 Action: move down one character block.
  $C38B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E08C,attr=$46) }
. UDGTABLE#
  $C38C,$01 Action: move down one character block.
  $C38D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E09C,attr=$46) }
. UDGTABLE#
  $C38E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E094,attr=$46) }
. UDGTABLE#
  $C38F,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C391,$02 Attribute: #COLOUR(#PC+$01)
  $C393,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($E06C,attr=$45), | ) }
. UDGTABLE#
  $C396,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E084,attr=$45) }
. UDGTABLE#
  $C397,$02 Attribute: #COLOUR(#PC+$01)
  $C399,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E08C,attr=$46) }
. UDGTABLE#
  $C39A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0A4,attr=$46) }
. UDGTABLE#
  $C39B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E094,attr=$46) }
. UDGTABLE#
  $C39C,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C39E,$02 Attribute: #COLOUR(#PC+$01)
  $C3A0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E084,attr=$45) }
. UDGTABLE#
  $C3A1,$01 Action: move down one character block.
  $C3A2,$02 Attribute: #COLOUR(#PC+$01)
  $C3A4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E09C,attr=$46) }
. UDGTABLE#
  $C3A5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E094,attr=$46) }
. UDGTABLE#
  $C3A6,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C3A8,$02 Attribute: #COLOUR(#PC+$01)
  $C3AA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E084,attr=$45) }
. UDGTABLE#
  $C3AB,$02 Attribute: #COLOUR(#PC+$01)
  $C3AD,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E08C,attr=$46) }
. UDGTABLE#
  $C3AE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0A4,attr=$46) }
. UDGTABLE#
  $C3AF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E094,attr=$46) }
. UDGTABLE#
  $C3B0,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C3B2,$02 Attribute: #COLOUR(#PC+$01)
  $C3B4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E084,attr=$45) }
. UDGTABLE#
  $C3B5,$01 Action: move down one character block.
  $C3B6,$02 Attribute: #COLOUR(#PC+$01)
  $C3B8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E09C,attr=$46) }
. UDGTABLE#
  $C3B9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E094,attr=$46) }
. UDGTABLE#
  $C3BA,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C3BC,$02 Attribute: #COLOUR(#PC+$01)
  $C3BE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E084,attr=$45) }
. UDGTABLE#
  $C3BF,$02 Attribute: #COLOUR(#PC+$01)
  $C3C1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E08C,attr=$46) }
. UDGTABLE#
  $C3C2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0A4,attr=$46) }
. UDGTABLE#
  $C3C3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E094,attr=$46) }
. UDGTABLE#
  $C3C4,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C3C6,$02 Attribute: #COLOUR(#PC+$01)
  $C3C8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E084,attr=$45) }
. UDGTABLE#
  $C3C9,$01 Action: move down one character block.
  $C3CA,$02 Attribute: #COLOUR(#PC+$01)
  $C3CC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E09C,attr=$46) }
. UDGTABLE#
  $C3CD,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C3CF,$02 Attribute: #COLOUR(#PC+$01)
  $C3D1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E084,attr=$45) }
. UDGTABLE#
  $C3D2,$02 Attribute: #COLOUR(#PC+$01)
  $C3D4,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($E08C,attr=$46) })
. UDGTABLE#
  $C3D7,$02 Attribute: #COLOUR(#PC+$01)
  $C3D9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E084,attr=$45) }
. UDGTABLE#
  $C3DA,$01 Terminator.

b $C3DB Graphic ID #N$29
@ $C3DB label=graphic_29
M $C3DB,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C3DB,$01
W $C3DC,$02
  $C3DE,$02 Attribute: #COLOUR(#PC+$01)
  $C3E0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0AC,attr=$46) }
. UDGTABLE#
  $C3E1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E074,attr=$46) }
. UDGTABLE#
  $C3E2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E07C,attr=$46) }
. UDGTABLE#
  $C3E3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E074,attr=$46) }
. UDGTABLE#
  $C3E4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E07C,attr=$46) }
. UDGTABLE#
  $C3E5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E074,attr=$46) }
. UDGTABLE#
  $C3E6,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C3E8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0AC,attr=$46) }
. UDGTABLE#
  $C3E9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0BC,attr=$46) }
. UDGTABLE#
  $C3EA,$01 Action: move down one character block.
  $C3EB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E08C,attr=$46) }
. UDGTABLE#
  $C3EC,$01 Action: move down one character block.
  $C3ED,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E08C,attr=$46) }
. UDGTABLE#
  $C3EE,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C3F0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0AC,attr=$46) }
. UDGTABLE#
  $C3F1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0C4,attr=$46) }
. UDGTABLE#
  $C3F2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E08C,attr=$46) }
. UDGTABLE#
  $C3F3,$02 Attribute: #COLOUR(#PC+$01)
  $C3F5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0B4,attr=$45) }
. UDGTABLE#
  $C3F6,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($E0CC,attr=$45), | ) }
. UDGTABLE#
  $C3F9,$02 Attribute: #COLOUR(#PC+$01)
  $C3FB,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C3FD,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0AC,attr=$46) }
. UDGTABLE#
  $C3FE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0BC,attr=$46) }
. UDGTABLE#
  $C3FF,$01 Action: move down one character block.
  $C400,$02 Attribute: #COLOUR(#PC+$01)
  $C402,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0B4,attr=$45) }
. UDGTABLE#
  $C403,$02 Attribute: #COLOUR(#PC+$01)
  $C405,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C407,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0AC,attr=$46) }
. UDGTABLE#
  $C408,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0C4,attr=$46) }
. UDGTABLE#
  $C409,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E08C,attr=$46) }
. UDGTABLE#
  $C40A,$02 Attribute: #COLOUR(#PC+$01)
  $C40C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0B4,attr=$45) }
. UDGTABLE#
  $C40D,$02 Attribute: #COLOUR(#PC+$01)
  $C40F,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C411,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0AC,attr=$46) }
. UDGTABLE#
  $C412,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0BC,attr=$46) }
. UDGTABLE#
  $C413,$01 Action: move down one character block.
  $C414,$02 Attribute: #COLOUR(#PC+$01)
  $C416,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0B4,attr=$45) }
. UDGTABLE#
  $C417,$02 Attribute: #COLOUR(#PC+$01)
  $C419,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C41B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0AC,attr=$46) }
. UDGTABLE#
  $C41C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0C4,attr=$46) }
. UDGTABLE#
  $C41D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E08C,attr=$46) }
. UDGTABLE#
  $C41E,$02 Attribute: #COLOUR(#PC+$01)
  $C420,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0B4,attr=$45) }
. UDGTABLE#
  $C421,$02 Attribute: #COLOUR(#PC+$01)
  $C423,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C425,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0BC,attr=$46) }
. UDGTABLE#
  $C426,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C428,$02 Attribute: #COLOUR(#PC+$01)
  $C42A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0B4,attr=$45) }
. UDGTABLE#
  $C42B,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C42D,$02 Attribute: #COLOUR(#PC+$01)
  $C42F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E08C,attr=$46) }
. UDGTABLE#
  $C430,$02 Attribute: #COLOUR(#PC+$01)
  $C432,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0B4,attr=$45) }
. UDGTABLE#
  $C433,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C435,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0B4,attr=$45) }
. UDGTABLE#
  $C436,$01 Terminator.

b $C437 Graphic ID #N$2A
@ $C437 label=graphic_2a
M $C437,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C437,$01
W $C438,$02
  $C43A,$02 Attribute: #COLOUR(#PC+$01)
  $C43C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF74,attr=$45) }
. UDGTABLE#
  $C43D,$02 Attribute: #COLOUR(#PC+$01)
  $C43F,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($DF94,attr=$47), | ) }
. UDGTABLE#
  $C442,$02 Attribute: #COLOUR(#PC+$01)
  $C444,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF7C,attr=$45) }
. UDGTABLE#
  $C445,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF74,attr=$45) }
. UDGTABLE#
  $C446,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF7C,attr=$45) }
. UDGTABLE#
  $C447,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF74,attr=$45) }
. UDGTABLE#
  $C448,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF7C,attr=$45) }
. UDGTABLE#
  $C449,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C44B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF74,attr=$45) }
. UDGTABLE#
  $C44C,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DF6C,attr=$45), | ) }
. UDGTABLE#
  $C44F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF84,attr=$45) }
. UDGTABLE#
  $C450,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF64,attr=$45) }
. UDGTABLE#
  $C451,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C453,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF8C,attr=$45) }
. UDGTABLE#
  $C454,$02 Attribute: #COLOUR(#PC+$01)
  $C456,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DF94,attr=$43), | ) }
. UDGTABLE#
  $C459,$02 Attribute: #COLOUR(#PC+$01)
  $C45B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF7C,attr=$45) }
. UDGTABLE#
  $C45C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF64,attr=$45) }
. UDGTABLE#
  $C45D,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C45F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF74,attr=$45) }
. UDGTABLE#
  $C460,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DF6C,attr=$45), | ) }
. UDGTABLE#
  $C463,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF84,attr=$45) }
. UDGTABLE#
  $C464,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF64,attr=$45) }
. UDGTABLE#
  $C465,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C467,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF8C,attr=$45) }
. UDGTABLE#
  $C468,$02 Attribute: #COLOUR(#PC+$01)
  $C46A,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DF94,attr=$46), | ) }
. UDGTABLE#
  $C46D,$02 Attribute: #COLOUR(#PC+$01)
  $C46F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF7C,attr=$45) }
. UDGTABLE#
  $C470,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF64,attr=$45) }
. UDGTABLE#
  $C471,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C473,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF74,attr=$45) }
. UDGTABLE#
  $C474,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DF6C,attr=$45), | ) }
. UDGTABLE#
  $C477,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF84,attr=$45) }
. UDGTABLE#
  $C478,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF64,attr=$45) }
. UDGTABLE#
  $C479,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C47B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF8C,attr=$45) }
. UDGTABLE#
  $C47C,$02 Attribute: #COLOUR(#PC+$01)
  $C47E,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DF94,attr=$42), | ) }
. UDGTABLE#
  $C481,$02 Attribute: #COLOUR(#PC+$01)
  $C483,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF7C,attr=$45) }
. UDGTABLE#
  $C484,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF64,attr=$45) }
. UDGTABLE#
  $C485,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C487,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF74,attr=$45) }
. UDGTABLE#
  $C488,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DF6C,attr=$45), | ) }
. UDGTABLE#
  $C48B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF84,attr=$45) }
. UDGTABLE#
  $C48C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF64,attr=$45) }
. UDGTABLE#
  $C48D,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C48F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF8C,attr=$45) }
. UDGTABLE#
  $C490,$02 Attribute: #COLOUR(#PC+$01)
  $C492,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DF94,attr=$44), | ) }
. UDGTABLE#
  $C495,$02 Attribute: #COLOUR(#PC+$01)
  $C497,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF6C,attr=$45) }
. UDGTABLE#
  $C498,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF84,attr=$45) }
. UDGTABLE#
  $C499,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF8C,attr=$45) }
. UDGTABLE#
  $C49A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF84,attr=$45) }
. UDGTABLE#
  $C49B,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C49D,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$07,,4(n,{ #Nn | #UDG($DF64,attr=$45) })
. UDGTABLE#
  $C4A0,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C4A2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF8C,attr=$45) }
. UDGTABLE#
  $C4A3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF6C,attr=$45) }
. UDGTABLE#
  $C4A4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF7C,attr=$45) }
. UDGTABLE#
  $C4A5,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C4A7,$02 Attribute: #COLOUR(#PC+$01)
  $C4A9,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$07,,4(n,{ #Nn | #UDG($DFA4,attr=$47) })
. UDGTABLE#
  $C4AC,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C4AE,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($DFA4,attr=$47) })
. UDGTABLE#
  $C4B1,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C4B3,$02 Attribute: #COLOUR(#PC+$01)
  $C4B5,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($DF64,attr=$45) })
. UDGTABLE#
  $C4B8,$02 Attribute: #COLOUR(#PC+$01)
  $C4BA,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($DF9C,attr=$47) })
. UDGTABLE#
  $C4BD,$02 Attribute: #COLOUR(#PC+$01)
  $C4BF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF64,attr=$45) }
. UDGTABLE#
  $C4C0,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C4C2,$02 Attribute: #COLOUR(#PC+$01)
  $C4C4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF54,attr=$46) }
. UDGTABLE#
  $C4C5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF5C,attr=$46) }
. UDGTABLE#
  $C4C6,$02 Attribute: #COLOUR(#PC+$01)
  $C4C8,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C4CA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF44,attr=$44) }
. UDGTABLE#
  $C4CB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF4C,attr=$44) }
. UDGTABLE#
  $C4CC,$01 Terminator.

b $C4CD Graphic ID #N$2B
@ $C4CD label=graphic_2b
M $C4CD,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C4CD,$01
W $C4CE,$02
  $C4D0,$02 Attribute: #COLOUR(#PC+$01)
  $C4D2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1BC,attr=$43) }
. UDGTABLE#
  $C4D3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1C4,attr=$43) }
. UDGTABLE#
  $C4D4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1CC,attr=$43) }
. UDGTABLE#
  $C4D5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1CC,attr=$43) }
. UDGTABLE#
  $C4D6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1BC,attr=$43) }
. UDGTABLE#
  $C4D7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1C4,attr=$43) }
. UDGTABLE#
  $C4D8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1CC,attr=$43) }
. UDGTABLE#
  $C4D9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1CC,attr=$43) }
. UDGTABLE#
  $C4DA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1BC,attr=$43) }
. UDGTABLE#
  $C4DB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1C4,attr=$43) }
. UDGTABLE#
  $C4DC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1CC,attr=$43) }
. UDGTABLE#
  $C4DD,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1CC,attr=$43) }
. UDGTABLE#
  $C4DE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1BC,attr=$43) }
. UDGTABLE#
  $C4DF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1C4,attr=$43) }
. UDGTABLE#
  $C4E0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1CC,attr=$43) }
. UDGTABLE#
  $C4E1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1CC,attr=$43) }
. UDGTABLE#
  $C4E2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1BC,attr=$43) }
. UDGTABLE#
  $C4E3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1C4,attr=$43) }
. UDGTABLE#
  $C4E4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1CC,attr=$43) }
. UDGTABLE#
  $C4E5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1CC,attr=$43) }
. UDGTABLE#
  $C4E6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1BC,attr=$43) }
. UDGTABLE#
  $C4E7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1C4,attr=$43) }
. UDGTABLE#
  $C4E8,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C4EA,$02 Attribute: #COLOUR(#PC+$01)
  $C4EC,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D1EC,attr=$45) })
. UDGTABLE#
  $C4EF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1F4,attr=$45) }
. UDGTABLE#
  $C4F0,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C4F2,$02 Attribute: #COLOUR(#PC+$01)
  $C4F4,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D1EC,attr=$46) })
. UDGTABLE#
  $C4F7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1F4,attr=$46) }
. UDGTABLE#
  $C4F8,$01 Action: move down one character block.
  $C4F9,$02 Attribute: #COLOUR(#PC+$01)
  $C4FB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1FC,attr=$46) }
. UDGTABLE#
  $C4FC,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C4FE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1FC,attr=$46) }
. UDGTABLE#
  $C4FF,$02 Attribute: #COLOUR(#PC+$01)
  $C501,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1FC,attr=$44) }
. UDGTABLE#
  $C502,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C504,$02 Attribute: #COLOUR(#PC+$01)
  $C506,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1FC,attr=$42) }
. UDGTABLE#
  $C507,$02 Attribute: #COLOUR(#PC+$01)
  $C509,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1FC,attr=$47) }
. UDGTABLE#
  $C50A,$02 Attribute: #COLOUR(#PC+$01)
  $C50C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1FC,attr=$46) }
. UDGTABLE#
  $C50D,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C50F,$02 Attribute: #COLOUR(#PC+$01)
  $C511,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1FC,attr=$44) }
. UDGTABLE#
  $C512,$02 Attribute: #COLOUR(#PC+$01)
  $C514,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1FC,attr=$46) }
. UDGTABLE#
  $C515,$02 Attribute: #COLOUR(#PC+$01)
  $C517,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1FC,attr=$45) }
. UDGTABLE#
  $C518,$02 Attribute: #COLOUR(#PC+$01)
  $C51A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1FC,attr=$46) }
. UDGTABLE#
  $C51B,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C51D,$02 Attribute: #COLOUR(#PC+$01)
  $C51F,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D1EC,attr=$47) })
. UDGTABLE#
  $C522,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1F4,attr=$47) }
. UDGTABLE#
  $C523,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C525,$02 Attribute: #COLOUR(#PC+$01)
  $C527,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D1EC,attr=$44) })
. UDGTABLE#
  $C52A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1F4,attr=$44) }
. UDGTABLE#
  $C52B,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C52D,$02 Attribute: #COLOUR(#PC+$01)
  $C52F,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D1EC,attr=$46) })
. UDGTABLE#
  $C532,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1F4,attr=$46) }
. UDGTABLE#
  $C533,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C535,$02 Attribute: #COLOUR(#PC+$01)
  $C537,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D1EC,attr=$45) })
. UDGTABLE#
  $C53A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1F4,attr=$45) }
. UDGTABLE#
  $C53B,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C53D,$02 Attribute: #COLOUR(#PC+$01)
  $C53F,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D1EC,attr=$44) })
. UDGTABLE#
  $C542,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1F4,attr=$44) }
. UDGTABLE#
  $C543,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C545,$02 Attribute: #COLOUR(#PC+$01)
  $C547,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D1EC,attr=$42) })
. UDGTABLE#
  $C54A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1F4,attr=$42) }
. UDGTABLE#
  $C54B,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C54D,$02 Attribute: #COLOUR(#PC+$01)
  $C54F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1FC,attr=$46) }
. UDGTABLE#
  $C550,$02 Attribute: #COLOUR(#PC+$01)
  $C552,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1FC,attr=$45) }
. UDGTABLE#
  $C553,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C555,$02 Attribute: #COLOUR(#PC+$01)
  $C557,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1FC,attr=$44) }
. UDGTABLE#
  $C558,$02 Attribute: #COLOUR(#PC+$01)
  $C55A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1FC,attr=$46) }
. UDGTABLE#
  $C55B,$02 Attribute: #COLOUR(#PC+$01)
  $C55D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1FC,attr=$47) }
. UDGTABLE#
  $C55E,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C560,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1FC,attr=$47) }
. UDGTABLE#
  $C561,$02 Attribute: #COLOUR(#PC+$01)
  $C563,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1FC,attr=$45) }
. UDGTABLE#
  $C564,$02 Attribute: #COLOUR(#PC+$01)
  $C566,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1FC,attr=$46) }
. UDGTABLE#
  $C567,$02 Attribute: #COLOUR(#PC+$01)
  $C569,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D1FC,attr=$44) }
. UDGTABLE#
  $C56A,$01 Terminator.

b $C56B Graphic ID #N$2C
@ $C56B label=graphic_2c
M $C56B,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C56B,$01
W $C56C,$02
  $C56E,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C570,$02 Attribute: #COLOUR(#PC+$01)
  $C572,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFF4,attr=$45) }
. UDGTABLE#
  $C573,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFFC,attr=$45) }
. UDGTABLE#
  $C574,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E004,attr=$45) }
. UDGTABLE#
  $C575,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E00C,attr=$45) }
. UDGTABLE#
  $C576,$01 Terminator.

b $C577 Graphic ID #N$2D
@ $C577 label=graphic_2d
M $C577,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C577,$01
W $C578,$02
  $C57A,$02 Attribute: #COLOUR(#PC+$01)
  $C57C,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$0C,,4(n,{ #Nn | #UDG($D4BC,attr=$44) })
. UDGTABLE#
  $C57F,$01 Terminator.

b $C580 Graphic ID #N$2E
@ $C580 label=graphic_2e
M $C580,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C580,$01
W $C581,$02
  $C583,$02 Attribute: #COLOUR(#PC+$01)
  $C585,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D454,attr=$47) }
. UDGTABLE#
  $C586,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D45C,attr=$47) }
. UDGTABLE#
  $C587,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C589,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D464,attr=$47) }
. UDGTABLE#
  $C58A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D46C,attr=$47) }
. UDGTABLE#
  $C58B,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C58D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D474,attr=$47) }
. UDGTABLE#
  $C58E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D47C,attr=$47) }
. UDGTABLE#
  $C58F,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C591,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D484,attr=$47) }
. UDGTABLE#
  $C592,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D48C,attr=$47) }
. UDGTABLE#
  $C593,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C595,$02 Attribute: #COLOUR(#PC+$01)
  $C597,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D424,attr=$46) }
. UDGTABLE#
  $C598,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D434,attr=$46) }
. UDGTABLE#
  $C599,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C59B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D424,attr=$46) }
. UDGTABLE#
  $C59C,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D42C,attr=$46), | ) }
. UDGTABLE#
  $C59F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D434,attr=$46) }
. UDGTABLE#
  $C5A0,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C5A2,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D494,attr=$46), | ) }
. UDGTABLE#
  $C5A5,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C5A7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D424,attr=$46) }
. UDGTABLE#
  $C5A8,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D42C,attr=$46), | ) }
. UDGTABLE#
  $C5AB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D434,attr=$46) }
. UDGTABLE#
  $C5AC,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C5AE,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D494,attr=$46), | ) }
. UDGTABLE#
  $C5B1,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C5B3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D424,attr=$46) }
. UDGTABLE#
  $C5B4,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c12 Columns } { #FOR$01,$0C(n,=h #Nn, | ) }
. { #FOR$01,$0C(n,#UDG($D42C,attr=$46), | ) }
. UDGTABLE#
  $C5B7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D434,attr=$46) }
. UDGTABLE#
  $C5B8,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C5BA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D43C,attr=$46) }
. UDGTABLE#
  $C5BB,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c10 Columns } { #FOR$01,$0A(n,=h #Nn, | ) }
. { #FOR$01,$0A(n,#UDG($D44C,attr=$46), | ) }
. UDGTABLE#
  $C5BE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D444,attr=$46) }
. UDGTABLE#
  $C5BF,$01 Terminator.

b $C5C0 Graphic ID #N$2F
@ $C5C0 label=graphic_2f
M $C5C0,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C5C0,$01
W $C5C1,$02
  $C5C3,$02 Attribute: #COLOUR(#PC+$01)
  $C5C5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D3E4,attr=$45) }
. UDGTABLE#
  $C5C6,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($D3EC,attr=$45), | ) }
. UDGTABLE#
  $C5C9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D3F4,attr=$45) }
. UDGTABLE#
  $C5CA,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C5CC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D3FC,attr=$45) }
. UDGTABLE#
  $C5CD,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($D404,attr=$45), | ) }
. UDGTABLE#
  $C5D0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D40C,attr=$45) }
. UDGTABLE#
  $C5D1,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C5D3,$02 Attribute: #COLOUR(#PC+$01)
  $C5D5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D414,attr=$43) }
. UDGTABLE#
  $C5D6,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C5D8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D41C,attr=$43) }
. UDGTABLE#
  $C5D9,$01 Terminator.

b $C5DA Graphic ID #N$30
@ $C5DA label=graphic_30
M $C5DA,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C5DA,$01
W $C5DB,$02
  $C5DD,$02 Attribute: #COLOUR(#PC+$01)
  $C5DF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D264,attr=$43) }
. UDGTABLE#
  $C5E0,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($D24C,attr=$43), | ) }
. UDGTABLE#
  $C5E3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D26C,attr=$43) }
. UDGTABLE#
  $C5E4,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C5E6,$02 Attribute: #COLOUR(#PC+$01)
  $C5E8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D254,attr=$42) }
. UDGTABLE#
  $C5E9,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($D244,attr=$42), | ) }
. UDGTABLE#
  $C5EC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D25C,attr=$42) }
. UDGTABLE#
  $C5ED,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $C5EF,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C5EF,$01
W $C5F0,$02
  $C5F2,$02 Attribute: #COLOUR(#PC+$01)
  $C5F4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D414,attr=$44) }
. UDGTABLE#
  $C5F5,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C5F7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D41C,attr=$44) }
. UDGTABLE#
  $C5F8,$01 Terminator.

b $C5F9 Graphic ID #N$31
@ $C5F9 label=graphic_31
M $C5F9,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C5F9,$01
W $C5FA,$02
  $C5FC,$02 Attribute: #COLOUR(#PC+$01)
  $C5FE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D264,attr=$43) }
. UDGTABLE#
  $C5FF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D26C,attr=$43) }
. UDGTABLE#
  $C600,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C602,$02 Attribute: #COLOUR(#PC+$01)
  $C604,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D254,attr=$42) }
. UDGTABLE#
  $C605,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D25C,attr=$42) }
. UDGTABLE#
  $C606,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C608,$02 Attribute: #COLOUR(#PC+$01)
M $C60A,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C60A,$01
W $C60B,$02
  $C60D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D414,attr=$44) }
. UDGTABLE#
  $C60E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D41C,attr=$44) }
. UDGTABLE#
  $C60F,$01 Terminator.

b $C610 Graphic ID #N$32
@ $C610 label=graphic_32
M $C610,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C610,$01
W $C611,$02
  $C613,$02 Attribute: #COLOUR(#PC+$01)
  $C615,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D2F4,attr=$45)#UDG($D2FC,attr=$45), | ) }
. UDGTABLE#
  $C619,$01 Terminator.

b $C61A Graphic ID #N$33
@ $C61A label=graphic_33
M $C61A,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C61A,$01
W $C61B,$02
  $C61D,$02 Attribute: #COLOUR(#PC+$01)
  $C61F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D27C,attr=$47) }
. UDGTABLE#
  $C620,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D284,attr=$47), | ) }
. UDGTABLE#
  $C623,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D28C,attr=$47) }
. UDGTABLE#
  $C624,$01 Terminator.

b $C625 Graphic ID #N$34
@ $C625 label=graphic_34
M $C625,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C625,$01
W $C626,$02
  $C628,$02 Attribute: #COLOUR(#PC+$01)
  $C62A,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($D2AC,attr=$45) })
. UDGTABLE#
  $C62D,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C62F,$02 Attribute: #COLOUR(#PC+$01)
  $C631,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D294,attr=$43) }
. UDGTABLE#
  $C632,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D29C,attr=$43) }
. UDGTABLE#
  $C633,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D2A4,attr=$43) }
. UDGTABLE#
  $C634,$01 Terminator.

b $C635 Graphic ID #N$35
@ $C635 label=graphic_35
M $C635,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C635,$01
W $C636,$02
  $C638,$02 Attribute: #COLOUR(#PC+$01)
  $C63A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D2DC,attr=$47) }
. UDGTABLE#
  $C63B,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($D2E4,attr=$47), | ) }
. UDGTABLE#
  $C63E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D2EC,attr=$47) }
. UDGTABLE#
  $C63F,$02 Attribute: #COLOUR(#PC+$01)
  $C641,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C643,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D2CC,attr=$46) })
. UDGTABLE#
  $C646,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D2B4,attr=$46) }
. UDGTABLE#
  $C647,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($D2BC,attr=$46), | ) }
. UDGTABLE#
  $C64A,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C64C,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D2D4,attr=$46) })
. UDGTABLE#
  $C64F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D2C4,attr=$46) }
. UDGTABLE#
  $C650,$01 Terminator.

b $C651 Graphic ID #N$36
@ $C651 label=graphic_36
M $C651,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C651,$01
W $C652,$02
  $C654,$02 Attribute: #COLOUR(#PC+$01)
  $C656,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D374,attr=$44) }
. UDGTABLE#
  $C657,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C658,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C659,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C65A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D37C,attr=$44) }
. UDGTABLE#
  $C65B,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C65D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D374,attr=$44) }
. UDGTABLE#
  $C65E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C65F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C660,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C661,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C662,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C663,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C664,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D37C,attr=$44) }
. UDGTABLE#
  $C665,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C667,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D374,attr=$44) }
. UDGTABLE#
  $C668,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C669,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C66A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C66B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C66C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C66D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C66E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C66F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C670,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C672,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C673,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C674,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C675,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C676,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C677,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C678,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C679,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C67A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C67B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C67C,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C67E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C67F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C680,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C681,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C682,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C683,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C684,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C685,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C686,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C687,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D384,attr=$44) }
. UDGTABLE#
  $C688,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C68A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D374,attr=$44) }
. UDGTABLE#
  $C68B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C68C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C68D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C68E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C68F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C690,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C691,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C692,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C693,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C694,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D37C,attr=$44) }
. UDGTABLE#
  $C695,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C697,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D38C,attr=$44) }
. UDGTABLE#
  $C698,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C699,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C69A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C69B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C69C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C69D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C69E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C69F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C6A0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C6A1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C6A2,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6A4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C6A5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C6A6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C6A7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C6A8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C6A9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C6AA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C6AB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C6AC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C6AD,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D384,attr=$44) }
. UDGTABLE#
  $C6AE,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6B0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D38C,attr=$44) }
. UDGTABLE#
  $C6B1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C6B2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C6B3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C6B4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C6B5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$44) }
. UDGTABLE#
  $C6B6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C6B7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$44) }
. UDGTABLE#
  $C6B8,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6BA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D38C,attr=$44) }
. UDGTABLE#
  $C6BB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D384,attr=$44) }
. UDGTABLE#
  $C6BC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$44) }
. UDGTABLE#
  $C6BD,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D384,attr=$44) }
. UDGTABLE#
  $C6BE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D38C,attr=$44) }
. UDGTABLE#
  $C6BF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D384,attr=$44) }
. UDGTABLE#
  $C6C0,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6C2,$02 Attribute: #COLOUR(#PC+$01)
  $C6C4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D3A4,attr=$42) }
. UDGTABLE#
  $C6C5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D3AC,attr=$42) }
. UDGTABLE#
  $C6C6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D3B4,attr=$42) }
. UDGTABLE#
  $C6C7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D3BC,attr=$42) }
. UDGTABLE#
  $C6C8,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6CA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D394,attr=$42) }
. UDGTABLE#
  $C6CB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D39C,attr=$42) }
. UDGTABLE#
  $C6CC,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6CE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D394,attr=$42) }
. UDGTABLE#
  $C6CF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D39C,attr=$42) }
. UDGTABLE#
  $C6D0,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6D2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D39C,attr=$42) }
. UDGTABLE#
  $C6D3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D394,attr=$42) }
. UDGTABLE#
  $C6D4,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6D6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D39C,attr=$42) }
. UDGTABLE#
  $C6D7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D394,attr=$42) }
. UDGTABLE#
  $C6D8,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6DA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D394,attr=$42) }
. UDGTABLE#
  $C6DB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D39C,attr=$42) }
. UDGTABLE#
  $C6DC,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6DE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D3C4,attr=$42) }
. UDGTABLE#
  $C6DF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D3CC,attr=$42) }
. UDGTABLE#
  $C6E0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D3D4,attr=$42) }
. UDGTABLE#
  $C6E1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D3DC,attr=$42) }
. UDGTABLE#
  $C6E2,$01 Terminator.

b $C6E3 Graphic ID #N$37
@ $C6E3 label=graphic_37
M $C6E3,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C6E3,$01
W $C6E4,$02
  $C6E6,$02 Attribute: #COLOUR(#PC+$01)
  $C6E8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$4) }
. UDGTABLE#
  $C6E9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$4) }
. UDGTABLE#
  $C6EA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$4) }
. UDGTABLE#
  $C6EB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$4) }
. UDGTABLE#
  $C6EC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$4) }
. UDGTABLE#
  $C6ED,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6EF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$4) }
. UDGTABLE#
  $C6F0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$4) }
. UDGTABLE#
  $C6F1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$4) }
. UDGTABLE#
  $C6F2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$4) }
. UDGTABLE#
  $C6F3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$4) }
. UDGTABLE#
  $C6F4,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6F6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$4) }
. UDGTABLE#
  $C6F7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$4) }
. UDGTABLE#
  $C6F8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$4) }
. UDGTABLE#
  $C6F9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$4) }
. UDGTABLE#
  $C6FA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$4) }
. UDGTABLE#
  $C6FB,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6FD,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$4) }
. UDGTABLE#
  $C6FE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$4) }
. UDGTABLE#
  $C6FF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$4) }
. UDGTABLE#
  $C700,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$4) }
. UDGTABLE#
  $C701,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$4) }
. UDGTABLE#
  $C702,$01 Terminator.

b $C703 Graphic ID #N$38
@ $C703 label=graphic_38
M $C703,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C703,$01
W $C704,$02
  $C706,$02 Attribute: #COLOUR(#PC+$01)
  $C708,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$4) }
. UDGTABLE#
  $C709,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$4) }
. UDGTABLE#
  $C70A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$4) }
. UDGTABLE#
  $C70B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$4) }
. UDGTABLE#
  $C70C,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C70E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$4) }
. UDGTABLE#
  $C70F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$4) }
. UDGTABLE#
  $C710,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$4) }
. UDGTABLE#
  $C711,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$4) }
. UDGTABLE#
  $C712,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C714,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$4) }
. UDGTABLE#
  $C715,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$4) }
. UDGTABLE#
  $C716,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$4) }
. UDGTABLE#
  $C717,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$4) }
. UDGTABLE#
  $C718,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C71A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D35C,attr=$4) }
. UDGTABLE#
  $C71B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$4) }
. UDGTABLE#
  $C71C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D36C,attr=$4) }
. UDGTABLE#
  $C71D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D364,attr=$4) }
. UDGTABLE#
  $C71E,$01 Terminator.

b $C71F Graphic ID #N$39
@ $C71F label=graphic_39
M $C71F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C71F,$01
W $C720,$02
  $C722,$02 Attribute: #COLOUR(#PC+$01)
  $C724,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($D334,attr=$43), | ) }
. UDGTABLE#
  $C727,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C729,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($D344,attr=$43), | ) }
. UDGTABLE#
  $C72C,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C72E,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($D33C,attr=$43), | ) }
. UDGTABLE#
  $C731,$01 Terminator.

b $C732 Graphic ID #N$3A
@ $C732 label=graphic_3a
M $C732,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C732,$01
W $C733,$02
  $C735,$02 Attribute: #COLOUR(#PC+$01)
  $C737,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D334,attr=$43), | ) }
. UDGTABLE#
  $C73A,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C73C,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D344,attr=$43), | ) }
. UDGTABLE#
  $C73F,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C741,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D33C,attr=$43), | ) }
. UDGTABLE#
  $C744,$01 Terminator.

b $C745 Graphic ID #N$3B
@ $C745 label=graphic_3b
M $C745,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C745,$01
W $C746,$02
  $C748,$02 Attribute: #COLOUR(#PC+$01)
  $C74A,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($D354,attr=$45), | ) }
. UDGTABLE#
  $C74D,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C74F,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C752,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C754,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C757,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C759,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C75C,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C75E,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C761,$01 Terminator.

b $C762 Graphic ID #N$3C
@ $C762 label=graphic_3c
M $C762,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C762,$01
W $C763,$02
  $C765,$02 Attribute: #COLOUR(#PC+$01)
  $C767,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D354,attr=$45), | ) }
. UDGTABLE#
  $C76A,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C76C,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C76F,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C771,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C774,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C776,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C779,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C77B,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C77E,$01 Terminator.

b $C77F Graphic ID #N$3D
@ $C77F label=graphic_3d
M $C77F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C77F,$01
W $C780,$02
  $C782,$02 Attribute: #COLOUR(#PC+$01)
  $C784,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C787,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C789,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C78C,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C78E,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C791,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C793,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C796,$01 Terminator.

b $C797 Graphic ID #N$3E
@ $C797 label=graphic_3e
M $C797,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C797,$01
W $C798,$02
  $C79A,$02 Attribute: #COLOUR(#PC+$01)
M $C79C,$03 Switch #REGhl to #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C79C,$01
W $C79D,$02
M $C79F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C79F,$01
W $C7A0,$02
  $C7A2,$02 Attribute: #COLOUR(#PC+$01)
  $C7A4,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C7A7,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7A9,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C7AC,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7AE,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C7B1,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7B3,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C7B6,$01 Terminator.

b $C79F Graphic ID #N$3F
@ $C79F label=graphic_3f
M $C79F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C79F,$01
W $C7A0,$02
  $C7A2,$02 Attribute: #COLOUR(#PC+$01)
  $C7A4,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C7A7,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7A9,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C7AC,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7AE,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C7B1,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7B3,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C7B6,$01 Terminator.

b $C7B7 Graphic ID #N$40
@ $C7B7 label=graphic_40
M $C7B7,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C7B7,$01
W $C7B8,$02
  $C7BA,$02 Attribute: #COLOUR(#PC+$01)
M $C7BC,$03 Switch #REGhl to #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C7BC,$01
W $C7BD,$02
M $C7BF,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C7BF,$01
W $C7C0,$02
  $C7C2,$02 Attribute: #COLOUR(#PC+$01)
  $C7C4,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D52C,attr=$2), | ) }
. UDGTABLE#
  $C7C7,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7C9,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7CD,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7CF,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7D3,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7D5,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7D9,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7DB,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7DF,$01 Terminator.

b $C7BF Graphic ID #N$41
@ $C7BF label=graphic_41
M $C7BF,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C7BF,$01
W $C7C0,$02
  $C7C2,$02 Attribute: #COLOUR(#PC+$01)
  $C7C4,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D52C,attr=$2), | ) }
. UDGTABLE#
  $C7C7,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7C9,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7CD,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7CF,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7D3,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7D5,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7D9,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7DB,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7DF,$01 Terminator.

b $C7E0 Graphic ID #N$42
@ $C7E0 label=graphic_42
M $C7E0,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C7E0,$01
W $C7E1,$02
  $C7E3,$02 Attribute: #COLOUR(#PC+$01)
  $C7E5,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D52C,attr=$2), | ) }
. UDGTABLE#
  $C7E8,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7EA,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7EE,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7F0,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7F4,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7F6,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7FA,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7FC,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C800,$01 Terminator.

b $C801 Graphic ID #N$43
@ $C801 label=graphic_43
M $C801,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C801,$01
W $C802,$02
  $C804,$02 Attribute: #COLOUR(#PC+$01)
  $C806,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5FC,attr=$47) }
. UDGTABLE#
  $C807,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D604,attr=$47), | ) }
. UDGTABLE#
  $C80A,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C80C,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($D634,attr=$47) })
. UDGTABLE#
  $C80F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D67C,attr=$47) }
. UDGTABLE#
  $C810,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D684,attr=$47), | ) }
. UDGTABLE#
  $C813,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $C815,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C815,$01
W $C816,$02
  $C818,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($E0DC,attr=$47), | ) }
. UDGTABLE#
  $C81B,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C81D,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($E0DC,attr=$47), | ) }
. UDGTABLE#
  $C820,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C822,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($E0DC,attr=$47), | ) }
. UDGTABLE#
  $C825,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C827,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($E0DC,attr=$47), | ) }
. UDGTABLE#
  $C82A,$01 Terminator.

b $C82B Graphic ID #N$44
@ $C82B label=graphic_44
M $C82B,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C82B,$01
W $C82C,$02
  $C82E,$02 Attribute: #COLOUR(#PC+$01)
  $C830,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D604,attr=$47), | ) }
. UDGTABLE#
  $C833,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D60C,attr=$47) })
. UDGTABLE#
  $C836,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($D63C,attr=$47) })
. UDGTABLE#
  $C839,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C83B,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D684,attr=$47), | ) }
. UDGTABLE#
  $C83E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D68C,attr=$47) }
. UDGTABLE#
  $C83F,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $C841,$03 Switch #REGhl to #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C841,$01
W $C842,$02
M $C844,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C844,$01
W $C845,$02
  $C847,$02 Attribute: #COLOUR(#PC+$01)
  $C849,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5FC,attr=$47) }
. UDGTABLE#
  $C84A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D604,attr=$47) }
. UDGTABLE#
  $C84B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D60C,attr=$47) }
. UDGTABLE#
  $C84C,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C84E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D634,attr=$47) }
. UDGTABLE#
  $C84F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D62C,attr=$47) }
. UDGTABLE#
  $C850,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D63C,attr=$47) }
. UDGTABLE#
  $C851,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C853,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D614,attr=$47) }
. UDGTABLE#
  $C854,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D61C,attr=$47) }
. UDGTABLE#
  $C855,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D624,attr=$47) }
. UDGTABLE#
  $C856,$01 Terminator.

b $C844 Graphic ID #N$45
@ $C844 label=graphic_45
M $C844,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C844,$01
W $C845,$02
  $C847,$02 Attribute: #COLOUR(#PC+$01)
  $C849,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5FC,attr=$47) }
. UDGTABLE#
  $C84A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D604,attr=$47) }
. UDGTABLE#
  $C84B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D60C,attr=$47) }
. UDGTABLE#
  $C84C,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C84E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D634,attr=$47) }
. UDGTABLE#
  $C84F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D62C,attr=$47) }
. UDGTABLE#
  $C850,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D63C,attr=$47) }
. UDGTABLE#
  $C851,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C853,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D614,attr=$47) }
. UDGTABLE#
  $C854,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D61C,attr=$47) }
. UDGTABLE#
  $C855,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D624,attr=$47) }
. UDGTABLE#
  $C856,$01 Terminator.

b $C857 Graphic ID #N$46
@ $C857 label=graphic_46
M $C857,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C857,$01
W $C858,$02
  $C85A,$02 Attribute: #COLOUR(#PC+$01)
  $C85C,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$12,,4(n,{ #Nn | #UDG($E0DC,attr=$46) })
. UDGTABLE#
  $C85F,$01 Terminator.

b $C860 Graphic ID #N$47
@ $C860 label=graphic_47
M $C860,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C860,$01
W $C861,$02
  $C863,$02 Attribute: #COLOUR(#PC+$01)
  $C865,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5FC,attr=$47) }
. UDGTABLE#
  $C866,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D604,attr=$47) }
. UDGTABLE#
  $C867,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D604,attr=$47) }
. UDGTABLE#
  $C868,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D60C,attr=$47) }
. UDGTABLE#
  $C869,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C86B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D634,attr=$47) }
. UDGTABLE#
  $C86C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D62C,attr=$47) }
. UDGTABLE#
  $C86D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D62C,attr=$47) }
. UDGTABLE#
  $C86E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D63C,attr=$47) }
. UDGTABLE#
  $C86F,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C871,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D614,attr=$47) }
. UDGTABLE#
  $C872,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D61C,attr=$47) }
. UDGTABLE#
  $C873,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D61C,attr=$47) }
. UDGTABLE#
  $C874,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D624,attr=$47) }
. UDGTABLE#
  $C875,$01 Terminator.

b $C876 Graphic ID #N$48
@ $C876 label=graphic_48
M $C876,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C876,$01
W $C877,$02
  $C879,$02 Attribute: #COLOUR(#PC+$01)
  $C87B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D34C,attr=$45) }
. UDGTABLE#
  $C87C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D34C,attr=$45) }
. UDGTABLE#
  $C87D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D34C,attr=$45) }
. UDGTABLE#
  $C87E,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C880,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D34C,attr=$45) }
. UDGTABLE#
  $C881,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D34C,attr=$45) }
. UDGTABLE#
  $C882,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D34C,attr=$45) }
. UDGTABLE#
  $C883,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C885,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D34C,attr=$45) }
. UDGTABLE#
  $C886,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D34C,attr=$45) }
. UDGTABLE#
  $C887,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D34C,attr=$45) }
. UDGTABLE#
  $C888,$01 Terminator.

b $C889 Graphic ID #N$49
@ $C889 label=graphic_49
M $C889,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C889,$01
W $C88A,$02
  $C88C,$02 Attribute: #COLOUR(#PC+$01)
  $C88E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5FC,attr=$47) }
. UDGTABLE#
  $C88F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D604,attr=$47) }
. UDGTABLE#
  $C890,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D604,attr=$47) }
. UDGTABLE#
  $C891,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D60C,attr=$47) }
. UDGTABLE#
  $C892,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C894,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D634,attr=$47) }
. UDGTABLE#
  $C895,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D62C,attr=$47) }
. UDGTABLE#
  $C896,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D62C,attr=$47) }
. UDGTABLE#
  $C897,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D63C,attr=$47) }
. UDGTABLE#
  $C898,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C89A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D67C,attr=$47) }
. UDGTABLE#
  $C89B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D684,attr=$47) }
. UDGTABLE#
  $C89C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D684,attr=$47) }
. UDGTABLE#
  $C89D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D68C,attr=$47) }
. UDGTABLE#
  $C89E,$01 Terminator.

b $C89F Graphic ID #N$4A
@ $C89F label=graphic_4a
M $C89F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C89F,$01
W $C8A0,$02
  $C8A2,$02 Attribute: #COLOUR(#PC+$01)
  $C8A4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5A4,attr=$47) }
. UDGTABLE#
  $C8A5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5AC,attr=$47) }
. UDGTABLE#
  $C8A6,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8A8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5C4,attr=$47) }
. UDGTABLE#
  $C8A9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5BC,attr=$47) }
. UDGTABLE#
  $C8AA,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8AC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5B4,attr=$47) }
. UDGTABLE#
  $C8AD,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5BC,attr=$47) }
. UDGTABLE#
  $C8AE,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8B0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5CC,attr=$47) }
. UDGTABLE#
  $C8B1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5D4,attr=$47) }
. UDGTABLE#
  $C8B2,$01 Terminator.

b $C8B3 Graphic ID #N$4B
@ $C8B3 label=graphic_4b
M $C8B3,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C8B3,$01
W $C8B4,$02
  $C8B6,$02 Attribute: #COLOUR(#PC+$01)
  $C8B8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D654,attr=$47) }
. UDGTABLE#
  $C8B9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D664,attr=$47) }
. UDGTABLE#
  $C8BA,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8BC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D66C,attr=$47) }
. UDGTABLE#
  $C8BD,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D674,attr=$47) }
. UDGTABLE#
  $C8BE,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8C0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D66C,attr=$47) }
. UDGTABLE#
  $C8C1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D674,attr=$47) }
. UDGTABLE#
  $C8C2,$01 Terminator.

b $C8C3 Graphic ID #N$4C
@ $C8C3 label=graphic_4c
M $C8C3,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C8C3,$01
W $C8C4,$02
  $C8C6,$02 Attribute: #COLOUR(#PC+$01)
  $C8C8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D654,attr=$47) }
. UDGTABLE#
  $C8C9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D65C,attr=$47) }
. UDGTABLE#
  $C8CA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D65C,attr=$47) }
. UDGTABLE#
  $C8CB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D664,attr=$47) }
. UDGTABLE#
  $C8CC,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8CE,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($D66C,attr=$47) })
. UDGTABLE#
  $C8D1,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8D3,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($D674,attr=$47) })
. UDGTABLE#
  $C8D6,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $C8D8,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C8D8,$01
W $C8D9,$02
  $C8DB,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($E0DC,attr=$47) })
. UDGTABLE#
  $C8DE,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8E0,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($E0DC,attr=$47) })
. UDGTABLE#
  $C8E3,$01 Terminator.

b $C8E4 Graphic ID #N$4D
@ $C8E4 label=graphic_4d
M $C8E4,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C8E4,$01
W $C8E5,$02
  $C8E7,$02 Attribute: #COLOUR(#PC+$01)
  $C8E9,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C8EC,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8EE,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C8F1,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8F3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D34C,attr=$45) }
. UDGTABLE#
M $C8F4,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C8F4,$01
W $C8F5,$02
  $C8F7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D64C,attr=$45) }
. UDGTABLE#
M $C8F8,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C8F8,$01
W $C8F9,$02
  $C8FB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D34C,attr=$45) }
. UDGTABLE#
  $C8FC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D34C,attr=$45) }
. UDGTABLE#
  $C8FD,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8FF,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C902,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C904,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C907,$01 Terminator.

b $C908 Graphic ID #N$4E
@ $C908 label=graphic_4e
M $C908,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C908,$01
W $C909,$02
  $C90B,$02 Attribute: #COLOUR(#PC+$01)
  $C90D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D644,attr=$47) }
. UDGTABLE#
  $C90E,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($D644,attr=$47) })
. UDGTABLE#
  $C911,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C913,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D64C,attr=$47) })
. UDGTABLE#
  $C916,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D644,attr=$47) })
. UDGTABLE#
  $C919,$01 Terminator.

b $C91A Graphic ID #N$4F
@ $C91A label=graphic_4f
M $C91A,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C91A,$01
W $C91B,$02
  $C91D,$02 Attribute: #COLOUR(#PC+$01)
  $C91F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5FC,attr=$47) }
. UDGTABLE#
  $C920,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D604,attr=$47) }
. UDGTABLE#
  $C921,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D604,attr=$47) }
. UDGTABLE#
  $C922,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D60C,attr=$47) }
. UDGTABLE#
  $C923,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C925,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($D634,attr=$47) })
. UDGTABLE#
  $C928,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C92A,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($D63C,attr=$47) })
. UDGTABLE#
  $C92D,$01 Terminator.

b $C92E Graphic ID #N$50
@ $C92E label=graphic_50
M $C92E,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C92E,$01
W $C92F,$02
  $C931,$02 Attribute: #COLOUR(#PC+$01)
  $C933,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D694,attr=$47) }
. UDGTABLE#
  $C934,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c18 Columns } { #FOR$01,$12(n,=h #Nn, | ) }
. { #FOR$01,$12(n,#UDG($D69C,attr=$47), | ) }
. UDGTABLE#
  $C937,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D6A4,attr=$47) })
. UDGTABLE#
  $C93A,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($D6B4,attr=$47) })
. UDGTABLE#
  $C93D,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C93F,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($D6AC,attr=$47) })
. UDGTABLE#
  $C942,$01 Terminator.

b $C943 Graphic ID #N$51
@ $C943 label=graphic_51
M $C943,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C943,$01
W $C944,$02
  $C946,$02 Attribute: #COLOUR(#PC+$01)
  $C948,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D694,attr=$47) }
. UDGTABLE#
  $C949,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D69C,attr=$47) }
. UDGTABLE#
  $C94A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D69C,attr=$47) }
. UDGTABLE#
  $C94B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6A4,attr=$47) }
. UDGTABLE#
  $C94C,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C94E,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($D6AC,attr=$47) })
. UDGTABLE#
  $C951,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C953,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($D6B4,attr=$47) })
. UDGTABLE#
  $C956,$01 Terminator.

b $C957 Graphic ID #N$52
@ $C957 label=graphic_52
M $C957,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C957,$01
W $C958,$02
  $C95A,$02 Attribute: #COLOUR(#PC+$01)
  $C95C,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c30 Columns } { #FOR$01,$1E(n,=h #Nn, | ) }
. { #FOR$01,$1E(n,#UDG($E034,attr=$44), | ) }
. UDGTABLE#
  $C95F,$01 Terminator.

b $C960 Graphic ID #N$53
@ $C960 label=graphic_53
M $C960,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C960,$01
W $C961,$02
  $C963,$02 Attribute: #COLOUR(#PC+$01)
  $C965,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c2 Columns } { #FOR$01,$02(n,=h #Nn, | ) }
. { #FOR$01,$02(n,#UDG($D55C,attr=$46)#UDG($D564,attr=$46), | ) }
. UDGTABLE#
  $C969,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C96B,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c2 Columns } { #FOR$01,$02(n,=h #Nn, | ) }
. { #FOR$01,$02(n,#UDG($D55C,attr=$46)#UDG($D564,attr=$46), | ) }
. UDGTABLE#
  $C96F,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C971,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D55C,attr=$46) }
. UDGTABLE#
  $C972,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D564,attr=$46) }
. UDGTABLE#
  $C973,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C975,$02 Attribute: #COLOUR(#PC+$01)
M $C977,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C977,$01
W $C978,$02
  $C97A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E02C,attr=$44) }
. UDGTABLE#
  $C97B,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C97D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E02C,attr=$44) }
. UDGTABLE#
  $C97E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E02C,attr=$44) }
. UDGTABLE#
  $C97F,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C981,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E02C,attr=$44) }
. UDGTABLE#
  $C982,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C984,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E02C,attr=$44) }
. UDGTABLE#
  $C985,$01 Terminator.

b $C986 Graphic ID #N$54
@ $C986 label=graphic_54
M $C986,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C986,$01
W $C987,$02
  $C989,$02 Attribute: #COLOUR(#PC+$01)
  $C98B,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D55C,attr=$46)#UDG($D564,attr=$46), | ) }
. UDGTABLE#
  $C98F,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C991,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D564,attr=$46)#UDG($D55C,attr=$46), | ) }
. UDGTABLE#
  $C995,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C997,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D55C,attr=$46)#UDG($D564,attr=$46), | ) }
. UDGTABLE#
  $C99B,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C99D,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D564,attr=$46)#UDG($D55C,attr=$46), | ) }
. UDGTABLE#
  $C9A1,$01 Terminator.

b $C9A2 Graphic ID #N$55
@ $C9A2 label=graphic_55
M $C9A2,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C9A2,$01
W $C9A3,$02
  $C9A5,$02 Attribute: #COLOUR(#PC+$01)
  $C9A7,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D55C,attr=$46)#UDG($D564,attr=$46), | ) }
. UDGTABLE#
  $C9AB,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C9AD,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D564,attr=$46)#UDG($D55C,attr=$46), | ) }
. UDGTABLE#
  $C9B1,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C9B3,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D55C,attr=$46)#UDG($D564,attr=$46), | ) }
. UDGTABLE#
  $C9B7,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C9B9,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D564,attr=$46)#UDG($D55C,attr=$46), | ) }
. UDGTABLE#
  $C9BD,$01 Terminator.

b $C9BE Graphic ID #N$56
@ $C9BE label=graphic_56
M $C9BE,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C9BE,$01
W $C9BF,$02
  $C9C1,$02 Attribute: #COLOUR(#PC+$01)
  $C9C3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D534,attr=$43) }
. UDGTABLE#
  $C9C4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D53C,attr=$43) }
. UDGTABLE#
  $C9C5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D53C,attr=$43) }
. UDGTABLE#
  $C9C6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D53C,attr=$43) }
. UDGTABLE#
  $C9C7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D534,attr=$43) }
. UDGTABLE#
  $C9C8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D53C,attr=$43) }
. UDGTABLE#
  $C9C9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D53C,attr=$43) }
. UDGTABLE#
  $C9CA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D53C,attr=$43) }
. UDGTABLE#
  $C9CB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D534,attr=$43) }
. UDGTABLE#
  $C9CC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D53C,attr=$43) }
. UDGTABLE#
  $C9CD,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D53C,attr=$43) }
. UDGTABLE#
  $C9CE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D53C,attr=$43) }
. UDGTABLE#
  $C9CF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D534,attr=$43) }
. UDGTABLE#
  $C9D0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D53C,attr=$43) }
. UDGTABLE#
  $C9D1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D53C,attr=$43) }
. UDGTABLE#
  $C9D2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D53C,attr=$43) }
. UDGTABLE#
  $C9D3,$01 Terminator.

b $C9D4 Graphic ID #N$57
@ $C9D4 label=graphic_57
M $C9D4,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C9D4,$01
W $C9D5,$02
  $C9D7,$02 Attribute: #COLOUR(#PC+$01)
  $C9D9,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D59C,attr=$44), | ) }
. UDGTABLE#
  $C9DC,$01 Terminator.

b $C9DD Graphic ID #N$58
@ $C9DD label=graphic_58
M $C9DD,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C9DD,$01
W $C9DE,$02
  $C9E0,$02 Attribute: #COLOUR(#PC+$01)
  $C9E2,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D544,attr=$43) })
. UDGTABLE#
  $C9E5,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D54C,attr=$43) })
. UDGTABLE#
  $C9E8,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D554,attr=$43) })
. UDGTABLE#
  $C9EB,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D54C,attr=$43) })
. UDGTABLE#
  $C9EE,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D554,attr=$43) })
. UDGTABLE#
  $C9F1,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D54C,attr=$43) })
. UDGTABLE#
  $C9F4,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D554,attr=$43) })
. UDGTABLE#
  $C9F7,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D54C,attr=$43) })
. UDGTABLE#
  $C9FA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D554,attr=$43) }
. UDGTABLE#
  $C9FB,$01 Terminator.

b $C9FC Graphic ID #N$59
@ $C9FC label=graphic_59
M $C9FC,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C9FC,$01
W $C9FD,$02
  $C9FF,$02 Attribute: #COLOUR(#PC+$01)
  $CA01,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D4F4,attr=$45) }
. UDGTABLE#
  $CA02,$02 Attribute: #COLOUR(#PC+$01)
  $CA04,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA06,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D4DC,attr=$46) }
. UDGTABLE#
  $CA07,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D4E4,attr=$46) }
. UDGTABLE#
  $CA08,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D4EC,attr=$46) }
. UDGTABLE#
  $CA09,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA0B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D4C4,attr=$46) }
. UDGTABLE#
  $CA0C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D4CC,attr=$46) }
. UDGTABLE#
  $CA0D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D4D4,attr=$46) }
. UDGTABLE#
  $CA0E,$02 Attribute: #COLOUR(#PC+$01)
  $CA10,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA12,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D4BC,attr=$45) }
. UDGTABLE#
  $CA13,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA15,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D4A4,attr=$45) }
. UDGTABLE#
  $CA16,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D49C,attr=$45) }
. UDGTABLE#
  $CA17,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D4AC,attr=$45) }
. UDGTABLE#
  $CA18,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA1A,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$08,,4(n,{ #Nn | #UDG($D4BC,attr=$45) })
. UDGTABLE#
  $CA1D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D4B4,attr=$45) }
. UDGTABLE#
  $CA1E,$01 Terminator.

b $CA1F Graphic ID #N$5A
@ $CA1F label=graphic_5a
M $CA1F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CA1F,$01
W $CA20,$02
  $CA22,$02 Attribute: #COLOUR(#PC+$01)
  $CA24,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D70C,attr=$46) }
. UDGTABLE#
  $CA25,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D714,attr=$46) }
. UDGTABLE#
  $CA26,$01 Action: move down one character block.
  $CA27,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D70C,attr=$46) }
. UDGTABLE#
  $CA28,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D714,attr=$46) }
. UDGTABLE#
  $CA29,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA2B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D71C,attr=$46) }
. UDGTABLE#
  $CA2C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D724,attr=$46) }
. UDGTABLE#
  $CA2D,$01 Action: move down one character block.
  $CA2E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D71C,attr=$46) }
. UDGTABLE#
  $CA2F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D724,attr=$46) }
. UDGTABLE#
  $CA30,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA32,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D70C,attr=$46) }
. UDGTABLE#
  $CA33,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D714,attr=$46) }
. UDGTABLE#
  $CA34,$01 Action: move down one character block.
  $CA35,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D70C,attr=$46) }
. UDGTABLE#
  $CA36,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D714,attr=$46) }
. UDGTABLE#
  $CA37,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA39,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D71C,attr=$46) }
. UDGTABLE#
  $CA3A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D724,attr=$46) }
. UDGTABLE#
  $CA3B,$01 Action: move down one character block.
  $CA3C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D71C,attr=$46) }
. UDGTABLE#
  $CA3D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D724,attr=$46) }
. UDGTABLE#
  $CA3E,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA40,$02 Attribute: #COLOUR(#PC+$01)
  $CA42,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6BC,attr=$43) }
. UDGTABLE#
  $CA43,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($D6C4,attr=$43), | ) }
. UDGTABLE#
  $CA46,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6CC,attr=$43) }
. UDGTABLE#
  $CA47,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA49,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D6FC,attr=$43) })
. UDGTABLE#
  $CA4C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6BC,attr=$43) }
. UDGTABLE#
  $CA4D,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($D6C4,attr=$43), | ) }
. UDGTABLE#
  $CA50,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6CC,attr=$43) }
. UDGTABLE#
  $CA51,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA53,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D704,attr=$43) })
. UDGTABLE#
  $CA56,$01 Terminator.

b $CA57 Graphic ID #N$5B
@ $CA57 label=graphic_5b
M $CA57,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CA57,$01
W $CA58,$02
  $CA5A,$02 Attribute: #COLOUR(#PC+$01)
  $CA5C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6BC,attr=$43) }
. UDGTABLE#
  $CA5D,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D6C4,attr=$43), | ) }
. UDGTABLE#
  $CA60,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D6CC,attr=$43) })
. UDGTABLE#
  $CA63,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$07,,4(n,{ #Nn | #UDG($D704,attr=$43) })
. UDGTABLE#
  $CA66,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA68,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$07,,4(n,{ #Nn | #UDG($D6FC,attr=$43) })
. UDGTABLE#
  $CA6B,$02 Attribute: #COLOUR(#PC+$01)
  $CA6D,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA6F,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D6D4,attr=$46) })
. UDGTABLE#
  $CA72,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($D6DC,attr=$46) })
. UDGTABLE#
  $CA75,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA77,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D6D4,attr=$46) })
. UDGTABLE#
  $CA7A,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($D6DC,attr=$46) })
. UDGTABLE#
  $CA7D,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA7F,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D6D4,attr=$46) })
. UDGTABLE#
  $CA82,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($D6DC,attr=$46) })
. UDGTABLE#
  $CA85,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA87,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D6D4,attr=$46) })
. UDGTABLE#
  $CA8A,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($D6DC,attr=$46) })
. UDGTABLE#
  $CA8D,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA8F,$02 Attribute: #COLOUR(#PC+$01)
  $CA91,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6E4,attr=$47) }
. UDGTABLE#
  $CA92,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6EC,attr=$47) }
. UDGTABLE#
  $CA93,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6F4,attr=$47) }
. UDGTABLE#
  $CA94,$01 Action: move down one character block.
  $CA95,$01 Action: move down one character block.
  $CA96,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6E4,attr=$47) }
. UDGTABLE#
  $CA97,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6EC,attr=$47) }
. UDGTABLE#
  $CA98,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6F4,attr=$47) }
. UDGTABLE#
  $CA99,$01 Terminator.

b $CA9A Graphic ID #N$5C
@ $CA9A label=graphic_5c
M $CA9A,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CA9A,$01
W $CA9B,$02
  $CA9D,$02 Attribute: #COLOUR(#PC+$01)
  $CA9F,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D4F4,attr=$46) })
. UDGTABLE#
  $CAA2,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$07,,4(n,{ #Nn | #UDG($D4BC,attr=$46) })
. UDGTABLE#
  $CAA5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D4B4,attr=$46) }
. UDGTABLE#
  $CAA6,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CAA8,$02 Attribute: #COLOUR(#PC+$01)
  $CAAA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D4FC,attr=$44) }
. UDGTABLE#
  $CAAB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D504,attr=$44) }
. UDGTABLE#
  $CAAC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D50C,attr=$44) }
. UDGTABLE#
  $CAAD,$01 Terminator.

b $CAAE Graphic ID #N$5D
@ $CAAE label=graphic_5d
M $CAAE,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CAAE,$01
W $CAAF,$02
  $CAB1,$02 Attribute: #COLOUR(#PC+$01)
  $CAB3,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D5EC,attr=$42)#UDG($D5F4,attr=$42), | ) }
. UDGTABLE#
  $CAB7,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CAB9,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D5EC,attr=$42)#UDG($D5F4,attr=$42), | ) }
. UDGTABLE#
  $CABD,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CABF,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D5EC,attr=$42)#UDG($D5F4,attr=$42), | ) }
. UDGTABLE#
  $CAC3,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CAC5,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D5EC,attr=$42)#UDG($D5F4,attr=$42), | ) }
. UDGTABLE#
  $CAC9,$01 Terminator.

b $CACA Graphic ID #N$5E
@ $CACA label=graphic_5e
M $CACA,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CACA,$01
W $CACB,$02
  $CACD,$02 Attribute: #COLOUR(#PC+$01)
  $CACF,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($DB1C,attr=$43), | ) }
. UDGTABLE#
  $CAD2,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $CAD4,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CAD4,$01
W $CAD5,$02
  $CAD7,$02 Attribute: #COLOUR(#PC+$01)
  $CAD9,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D5E4,attr=$45), | ) }
. UDGTABLE#
  $CADC,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CADE,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D5E4,attr=$45), | ) }
. UDGTABLE#
  $CAE1,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CAE3,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D5E4,attr=$45), | ) }
. UDGTABLE#
  $CAE6,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CAE8,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D5E4,attr=$45), | ) }
. UDGTABLE#
  $CAEB,$01 Terminator.

b $CAEC Graphic ID #N$5F
@ $CAEC label=graphic_5f
M $CAEC,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CAEC,$01
W $CAED,$02
  $CAEF,$02 Attribute: #COLOUR(#PC+$01)
  $CAF1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D6BC,attr=$43) }
. UDGTABLE#
  $CAF2,$02 Attribute: #COLOUR(#PC+$01)
  $CAF4,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c13 Columns } { #FOR$01,$0D(n,=h #Nn, | ) }
. { #FOR$01,$0D(n,#UDG($D6C4,attr=$46), | ) }
. UDGTABLE#
  $CAF7,$02 Attribute: #COLOUR(#PC+$01)
  $CAF9,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D6CC,attr=$43) })
. UDGTABLE#
  $CAFC,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$0A,,4(n,{ #Nn | #UDG($D704,attr=$43) })
. UDGTABLE#
  $CAFF,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB01,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$0A,,4(n,{ #Nn | #UDG($D6FC,attr=$43) })
. UDGTABLE#
  $CB04,$01 Terminator.

b $CB05 Graphic ID #N$60
@ $CB05 label=graphic_60
M $CB05,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CB05,$01
W $CB06,$02
  $CB08,$02 Attribute: #COLOUR(#PC+$01)
  $CB0A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D23C,attr=$46) }
. UDGTABLE#
  $CB0B,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($D20C,attr=$46), | ) }
. UDGTABLE#
  $CB0E,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D214,attr=$46) })
. UDGTABLE#
  $CB11,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D21C,attr=$46) })
. UDGTABLE#
  $CB14,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB16,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D224,attr=$46) })
. UDGTABLE#
  $CB19,$01 Terminator.

b $CB1A Graphic ID #N$61
@ $CB1A label=graphic_61
M $CB1A,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CB1A,$01
W $CB1B,$02
  $CB1D,$02 Attribute: #COLOUR(#PC+$01)
  $CB1F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D23C,attr=$43) }
. UDGTABLE#
  $CB20,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($D20C,attr=$43), | ) }
. UDGTABLE#
  $CB23,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D214,attr=$43) })
. UDGTABLE#
  $CB26,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D274,attr=$43) })
. UDGTABLE#
  $CB29,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB2B,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D274,attr=$43) })
. UDGTABLE#
  $CB2E,$01 Terminator.

b $CB2F Graphic ID #N$62
@ $CB2F label=graphic_62
M $CB2F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CB2F,$01
W $CB30,$02
  $CB32,$02 Attribute: #COLOUR(#PC+$01)
  $CB34,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D7FC,attr=$42) }
. UDGTABLE#
  $CB35,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D804,attr=$42) }
. UDGTABLE#
  $CB36,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D80C,attr=$42) }
. UDGTABLE#
  $CB37,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB39,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D7BC,attr=$42) }
. UDGTABLE#
  $CB3A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D7DC,attr=$42) }
. UDGTABLE#
  $CB3B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D7C4,attr=$42) }
. UDGTABLE#
  $CB3C,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB3E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D7F4,attr=$42) }
. UDGTABLE#
  $CB3F,$02 Attribute: #COLOUR(#PC+$01)
  $CB41,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D814,attr=$45) }
. UDGTABLE#
  $CB42,$02 Attribute: #COLOUR(#PC+$01)
  $CB44,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D7E4,attr=$42) }
. UDGTABLE#
  $CB45,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB47,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D7CC,attr=$42) }
. UDGTABLE#
  $CB48,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D7EC,attr=$42) }
. UDGTABLE#
  $CB49,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D7D4,attr=$42) }
. UDGTABLE#
  $CB4A,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB4C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D7BC,attr=$42) }
. UDGTABLE#
  $CB4D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D7DC,attr=$42) }
. UDGTABLE#
  $CB4E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D7C4,attr=$42) }
. UDGTABLE#
  $CB4F,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB51,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D7CC,attr=$42) }
. UDGTABLE#
  $CB52,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D7EC,attr=$42) }
. UDGTABLE#
  $CB53,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D7D4,attr=$42) }
. UDGTABLE#
  $CB54,$01 Terminator.

b $CB55 Graphic ID #N$63
@ $CB55 label=graphic_63
M $CB55,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CB55,$01
W $CB56,$02
  $CB58,$02 Attribute: #COLOUR(#PC+$01)
  $CB5A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D84C,attr=$42) }
. UDGTABLE#
  $CB5B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D854,attr=$42) }
. UDGTABLE#
  $CB5C,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB5E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D83C,attr=$42) }
. UDGTABLE#
  $CB5F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D844,attr=$42) }
. UDGTABLE#
  $CB60,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB62,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D82C,attr=$42) }
. UDGTABLE#
  $CB63,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D834,attr=$42) }
. UDGTABLE#
  $CB64,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB66,$02 Attribute: #COLOUR(#PC+$01)
  $CB68,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D81C,attr=$45) }
. UDGTABLE#
  $CB69,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D824,attr=$45) }
. UDGTABLE#
  $CB6A,$01 Terminator.

b $CB6B Graphic ID #N$64
@ $CB6B label=graphic_64
M $CB6B,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CB6B,$01
W $CB6C,$02
  $CB6E,$02 Attribute: #COLOUR(#PC+$01)
  $CB70,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D8A4,attr=$42) }
. UDGTABLE#
  $CB71,$02 Attribute: #COLOUR(#PC+$01)
  $CB73,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D874,attr=$56) }
. UDGTABLE#
  $CB74,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D87C,attr=$56) }
. UDGTABLE#
  $CB75,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D884,attr=$56) }
. UDGTABLE#
  $CB76,$02 Attribute: #COLOUR(#PC+$01)
  $CB78,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D8B4,attr=$42) }
. UDGTABLE#
  $CB79,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB7B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D8AC,attr=$42) }
. UDGTABLE#
  $CB7C,$02 Attribute: #COLOUR(#PC+$01)
  $CB7E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D88C,attr=$56) }
. UDGTABLE#
  $CB7F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D894,attr=$56) }
. UDGTABLE#
  $CB80,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D89C,attr=$56) }
. UDGTABLE#
  $CB81,$02 Attribute: #COLOUR(#PC+$01)
  $CB83,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D8BC,attr=$42) }
. UDGTABLE#
  $CB84,$01 Terminator.

b $CB85 Graphic ID #N$65
@ $CB85 label=graphic_65
M $CB85,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CB85,$01
W $CB86,$02
  $CB88,$02 Attribute: #COLOUR(#PC+$01)
  $CB8A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$42) }
. UDGTABLE#
  $CB8B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$42) }
. UDGTABLE#
  $CB8C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$42) }
. UDGTABLE#
  $CB8D,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB8F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$42) }
. UDGTABLE#
  $CB90,$01 Action: move down one character block.
  $CB91,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$42) }
. UDGTABLE#
  $CB92,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB94,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$42) }
. UDGTABLE#
  $CB95,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$42) }
. UDGTABLE#
  $CB96,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA3C,attr=$42) }
. UDGTABLE#
  $CB97,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB99,$02 Attribute: #COLOUR(#PC+$01)
M $CB9B,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CB9B,$01
W $CB9C,$02
  $CB9E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D8C4,attr=$56) }
. UDGTABLE#
  $CB9F,$01 Terminator.

b $CBA0 Graphic ID #N$66
@ $CBA0 label=graphic_66
M $CBA0,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CBA0,$01
W $CBA1,$02
  $CBA3,$02 Attribute: #COLOUR(#PC+$01)
  $CBA5,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D4F4,attr=$47) })
. UDGTABLE#
  $CBA8,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$0C,,4(n,{ #Nn | #UDG($D4BC,attr=$47) })
. UDGTABLE#
  $CBAB,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D4B4,attr=$47) })
. UDGTABLE#
  $CBAE,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $CBB0,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CBB0,$01
W $CBB1,$02
  $CBB3,$02 Attribute: #COLOUR(#PC+$01)
  $CBB5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D5FC,attr=$46) }
. UDGTABLE#
  $CBB6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D604,attr=$46) }
. UDGTABLE#
  $CBB7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D604,attr=$46) }
. UDGTABLE#
  $CBB8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D604,attr=$46) }
. UDGTABLE#
  $CBB9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D60C,attr=$46) }
. UDGTABLE#
  $CBBA,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CBBC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D614,attr=$46) }
. UDGTABLE#
  $CBBD,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D61C,attr=$46) }
. UDGTABLE#
  $CBBE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D61C,attr=$46) }
. UDGTABLE#
  $CBBF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D61C,attr=$46) }
. UDGTABLE#
  $CBC0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D624,attr=$46) }
. UDGTABLE#
  $CBC1,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CBC3,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$03,,4(n,{ #Nn | #UDG($D634,attr=$46) })
. UDGTABLE#
  $CBC6,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CBC8,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$03,,4(n,{ #Nn | #UDG($D63C,attr=$46) })
. UDGTABLE#
M $CBCB,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CBCB,$01
W $CBCC,$02
  $CBCE,$02 Attribute: #COLOUR(#PC+$01)
  $CBD0,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CBD2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D8D4,attr=$7A) }
. UDGTABLE#
  $CBD3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D8DC,attr=$7A) }
. UDGTABLE#
  $CBD4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D8E4,attr=$7A) }
. UDGTABLE#
  $CBD5,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CBD7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D8EC,attr=$7A) }
. UDGTABLE#
  $CBD8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D8F4,attr=$7A) }
. UDGTABLE#
  $CBD9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D8FC,attr=$7A) }
. UDGTABLE#
  $CBDA,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CBDC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D904,attr=$7A) }
. UDGTABLE#
  $CBDD,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D90C,attr=$7A) }
. UDGTABLE#
  $CBDE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D914,attr=$7A) }
. UDGTABLE#
  $CBDF,$01 Terminator.

b $CBE0 Graphic ID #N$67
@ $CBE0 label=graphic_67
M $CBE0,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CBE0,$01
W $CBE1,$02
  $CBE3,$02 Attribute: #COLOUR(#PC+$01)
  $CBE5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D85C,attr=$43) }
. UDGTABLE#
  $CBE6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D864,attr=$43) }
. UDGTABLE#
  $CBE7,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CBE9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D83C,attr=$43) }
. UDGTABLE#
  $CBEA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D844,attr=$43) }
. UDGTABLE#
  $CBEB,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CBED,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D82C,attr=$43) }
. UDGTABLE#
  $CBEE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D834,attr=$43) }
. UDGTABLE#
  $CBEF,$01 Terminator.

b $CBF0 Graphic ID #N$68
@ $CBF0 label=graphic_68
M $CBF0,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CBF0,$01
W $CBF1,$02
  $CBF3,$02 Attribute: #COLOUR(#PC+$01)
  $CBF5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D91C,attr=$45) }
. UDGTABLE#
  $CBF6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D924,attr=$45) }
. UDGTABLE#
  $CBF7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D92C,attr=$45) }
. UDGTABLE#
  $CBF8,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CBFA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D934,attr=$45) }
. UDGTABLE#
  $CBFB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D93C,attr=$45) }
. UDGTABLE#
  $CBFC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D944,attr=$45) }
. UDGTABLE#
  $CBFD,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CBFF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D94C,attr=$45) }
. UDGTABLE#
  $CC00,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D954,attr=$45) }
. UDGTABLE#
  $CC01,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D95C,attr=$45) }
. UDGTABLE#
  $CC02,$01 Terminator.

b $CC03 Graphic ID #N$69
@ $CC03 label=graphic_69
M $CC03,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CC03,$01
W $CC04,$02
  $CC06,$02 Attribute: #COLOUR(#PC+$01)
  $CC08,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c15 Columns } { #FOR$01,$0F(n,=h #Nn, | ) }
. { #FOR$01,$0F(n,#UDG($E0DC,attr=$4F), | ) }
. UDGTABLE#
  $CC0B,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC0D,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c15 Columns } { #FOR$01,$0F(n,=h #Nn, | ) }
. { #FOR$01,$0F(n,#UDG($E0DC,attr=$4F), | ) }
. UDGTABLE#
  $CC10,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC12,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c15 Columns } { #FOR$01,$0F(n,=h #Nn, | ) }
. { #FOR$01,$0F(n,#UDG($E0DC,attr=$4F), | ) }
. UDGTABLE#
  $CC15,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $CC17,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CC17,$01
W $CC18,$02
  $CC1A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D994,attr=$4F) }
. UDGTABLE#
  $CC1B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D99C,attr=$4F) }
. UDGTABLE#
  $CC1C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9A4,attr=$4F) }
. UDGTABLE#
  $CC1D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9AC,attr=$4F) }
. UDGTABLE#
  $CC1E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9D4,attr=$4F) }
. UDGTABLE#
  $CC1F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9DC,attr=$4F) }
. UDGTABLE#
  $CC20,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9B4,attr=$4F) }
. UDGTABLE#
  $CC21,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9BC,attr=$4F) }
. UDGTABLE#
  $CC22,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9C4,attr=$4F) }
. UDGTABLE#
  $CC23,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9CC,attr=$4F) }
. UDGTABLE#
  $CC24,$01 Terminator.

b $CC25 Graphic ID #N$6A
@ $CC25 label=graphic_6a
M $CC25,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CC25,$01
W $CC26,$02
  $CC28,$02 Attribute: #COLOUR(#PC+$01)
  $CC2A,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($E0DC,attr=$57), | ) }
. UDGTABLE#
  $CC2D,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $CC2F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CC2F,$01
W $CC30,$02
  $CC32,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D964,attr=$57) }
. UDGTABLE#
  $CC33,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D96C,attr=$57) }
. UDGTABLE#
  $CC34,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D974,attr=$57) }
. UDGTABLE#
  $CC35,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D97C,attr=$57) }
. UDGTABLE#
  $CC36,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D984,attr=$57) }
. UDGTABLE#
  $CC37,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D98C,attr=$57) }
. UDGTABLE#
  $CC38,$01 Terminator.

b $CC39 Graphic ID #N$6B
@ $CC39 label=graphic_6b
M $CC39,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CC39,$01
W $CC3A,$02
  $CC3C,$02 Attribute: #COLOUR(#PC+$01)
  $CC3E,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($DB44,attr=$45) })
. UDGTABLE#
  $CC41,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC43,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($DB4C,attr=$45) })
. UDGTABLE#
  $CC46,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC48,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($DB54,attr=$45) })
. UDGTABLE#
  $CC4B,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC4D,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($DB44,attr=$45) })
. UDGTABLE#
  $CC50,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC52,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($DB4C,attr=$45) })
. UDGTABLE#
  $CC55,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC57,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($DB54,attr=$45) })
. UDGTABLE#
  $CC5A,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC5C,$01 Terminator.

b $CC5D Graphic ID #N$6C
@ $CC5D label=graphic_6c
M $CC5D,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CC5D,$01
W $CC5E,$02
  $CC60,$02 Attribute: #COLOUR(#PC+$01)
  $CC62,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA4C,attr=$45) }
. UDGTABLE#
  $CC63,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA54,attr=$45) }
. UDGTABLE#
  $CC64,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA5C,attr=$45) }
. UDGTABLE#
  $CC65,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC67,$02 Attribute: #COLOUR(#PC+$01)
  $CC69,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($DA1C,attr=$44) })
. UDGTABLE#
  $CC6C,$02 Attribute: #COLOUR(#PC+$01)
  $CC6E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA04,attr=$47) }
. UDGTABLE#
  $CC6F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA34,attr=$47) }
. UDGTABLE#
  $CC70,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA0C,attr=$47) }
. UDGTABLE#
  $CC71,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC73,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9F4,attr=$47) }
. UDGTABLE#
  $CC74,$01 Action: move down one character block.
  $CC75,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9FC,attr=$47) }
. UDGTABLE#
  $CC76,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC78,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9E4,attr=$47) }
. UDGTABLE#
  $CC79,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA2C,attr=$47) }
. UDGTABLE#
  $CC7A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9EC,attr=$47) }
. UDGTABLE#
  $CC7B,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC7D,$02 Attribute: #COLOUR(#PC+$01)
  $CC7F,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($DA14,attr=$45) })
. UDGTABLE#
  $CC82,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($DA1C,attr=$45) })
. UDGTABLE#
  $CC85,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA24,attr=$45) }
. UDGTABLE#
  $CC86,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $CC88,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CC88,$01
W $CC89,$02
  $CC8B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E25C,attr=$45) }
. UDGTABLE#
  $CC8C,$01 Terminator.

b $CC8D Graphic ID #N$6D
@ $CC8D label=graphic_6d
M $CC8D,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CC8D,$01
W $CC8E,$02
  $CC90,$02 Attribute: #COLOUR(#PC+$01)
  $CC92,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($DB5C,attr=$44) })
. UDGTABLE#
  $CC95,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB3C,attr=$44) }
. UDGTABLE#
  $CC96,$01 Terminator.

b $CC97 Graphic ID #N$6E
@ $CC97 label=graphic_6e
M $CC97,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CC97,$01
W $CC98,$02
  $CC9A,$02 Attribute: #COLOUR(#PC+$01)
  $CC9C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB64,attr=$46) }
. UDGTABLE#
  $CC9D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB6C,attr=$46) }
. UDGTABLE#
  $CC9E,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB74,attr=$46) }
. UDGTABLE#
  $CC9F,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCA1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB7C,attr=$46) }
. UDGTABLE#
  $CCA2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB84,attr=$46) }
. UDGTABLE#
  $CCA3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB8C,attr=$46) }
. UDGTABLE#
  $CCA4,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCA6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB94,attr=$46) }
. UDGTABLE#
  $CCA7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB9C,attr=$46) }
. UDGTABLE#
  $CCA8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DBA4,attr=$46) }
. UDGTABLE#
  $CCA9,$01 Terminator.

b $CCAA Graphic ID #N$6F
@ $CCAA label=graphic_6f
M $CCAA,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CCAA,$01
W $CCAB,$02
  $CCAD,$02 Attribute: #COLOUR(#PC+$01)
  $CCAF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0DC,attr=$46) }
. UDGTABLE#
  $CCB0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E0DC,attr=$46) }
. UDGTABLE#
  $CCB1,$01 Terminator.

b $CCB2 Graphic ID #N$70
@ $CCB2 label=graphic_70
M $CCB2,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CCB2,$01
W $CCB3,$02
  $CCB5,$02 Attribute: #COLOUR(#PC+$01)
  $CCB7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DAEC,attr=$47) }
. UDGTABLE#
  $CCB8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DAF4,attr=$47) }
. UDGTABLE#
  $CCB9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DAF4,attr=$47) }
. UDGTABLE#
  $CCBA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DAFC,attr=$47) }
. UDGTABLE#
  $CCBB,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCBD,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB04,attr=$47) }
. UDGTABLE#
  $CCBE,$01 Action: move down one character block.
  $CCBF,$01 Action: move down one character block.
  $CCC0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB0C,attr=$47) }
. UDGTABLE#
  $CCC1,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCC3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB04,attr=$47) }
. UDGTABLE#
  $CCC4,$01 Action: move down one character block.
  $CCC5,$01 Action: move down one character block.
  $CCC6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB0C,attr=$47) }
. UDGTABLE#
  $CCC7,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCC9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DAEC,attr=$47) }
. UDGTABLE#
  $CCCA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DAF4,attr=$47) }
. UDGTABLE#
  $CCCB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DAF4,attr=$47) }
. UDGTABLE#
  $CCCC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DAFC,attr=$47) }
. UDGTABLE#
  $CCCD,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCCF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB04,attr=$47) }
. UDGTABLE#
  $CCD0,$01 Action: move down one character block.
  $CCD1,$01 Action: move down one character block.
  $CCD2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB0C,attr=$47) }
. UDGTABLE#
  $CCD3,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCD5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB14,attr=$47) }
. UDGTABLE#
  $CCD6,$01 Action: move down one character block.
  $CCD7,$01 Action: move down one character block.
  $CCD8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB24,attr=$47) }
. UDGTABLE#
  $CCD9,$01 Terminator.

b $CCDA Graphic ID #N$71
@ $CCDA label=graphic_71
M $CCDA,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CCDA,$01
W $CCDB,$02
  $CCDD,$02 Attribute: #COLOUR(#PC+$01)
  $CCDF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA9C,attr=$44) }
. UDGTABLE#
  $CCE0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DAA4,attr=$44) }
. UDGTABLE#
  $CCE1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DAAC,attr=$44) }
. UDGTABLE#
  $CCE2,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCE4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DAB4,attr=$44) }
. UDGTABLE#
  $CCE5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DABC,attr=$44) }
. UDGTABLE#
  $CCE6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DAC4,attr=$44) }
. UDGTABLE#
  $CCE7,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCE9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DAB4,attr=$44) }
. UDGTABLE#
  $CCEA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DACC,attr=$44) }
. UDGTABLE#
  $CCEB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DAC4,attr=$44) }
. UDGTABLE#
  $CCEC,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCEE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DAD4,attr=$44) }
. UDGTABLE#
  $CCEF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DADC,attr=$44) }
. UDGTABLE#
  $CCF0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DAE4,attr=$44) }
. UDGTABLE#
  $CCF1,$01 Terminator.

b $CCF2 Graphic ID #N$72
@ $CCF2 label=graphic_72
M $CCF2,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CCF2,$01
W $CCF3,$02
  $CCF5,$02 Attribute: #COLOUR(#PC+$01)
  $CCF7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB2C,attr=$44) }
. UDGTABLE#
  $CCF8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DAEC,attr=$44) }
. UDGTABLE#
  $CCF9,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DAF4,attr=$44) }
. UDGTABLE#
  $CCFA,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DAFC,attr=$44) }
. UDGTABLE#
  $CCFB,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCFD,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB34,attr=$44) }
. UDGTABLE#
  $CCFE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB04,attr=$44) }
. UDGTABLE#
  $CCFF,$01 Action: move down one character block.
  $CD00,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB0C,attr=$44) }
. UDGTABLE#
  $CD01,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD03,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB04,attr=$44) }
. UDGTABLE#
  $CD04,$01 Action: move down one character block.
  $CD05,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB0C,attr=$44) }
. UDGTABLE#
  $CD06,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD08,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB14,attr=$44) }
. UDGTABLE#
  $CD09,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB1C,attr=$44) }
. UDGTABLE#
  $CD0A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DB24,attr=$44) }
. UDGTABLE#
M $CD0B,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CD0B,$01
W $CD0C,$02
  $CD0E,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD10,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($E0DC,attr=$44) })
. UDGTABLE#
  $CD13,$01 Terminator.

b $CD14 Graphic ID #N$73
@ $CD14 label=graphic_73
M $CD14,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CD14,$01
W $CD15,$02
  $CD17,$02 Attribute: #COLOUR(#PC+$01)
  $CD19,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($E0DC,attr=$72), | ) }
. UDGTABLE#
  $CD1C,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD1E,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($E0DC,attr=$72), | ) }
. UDGTABLE#
  $CD21,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD23,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($E0DC,attr=$72), | ) }
. UDGTABLE#
  $CD26,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $CD28,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CD28,$01
W $CD29,$02
  $CD2B,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF34,attr=$72) }
. UDGTABLE#
  $CD2C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF3C,attr=$72) }
. UDGTABLE#
  $CD2D,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DF3C,attr=$72) }
. UDGTABLE#
  $CD2E,$01 Terminator.

b $CD2F Graphic ID #N$74
@ $CD2F label=graphic_74
M $CD2F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CD2F,$01
W $CD30,$02
  $CD32,$02 Attribute: #COLOUR(#PC+$01)
  $CD34,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DFD4,attr=$46), | ) }
. UDGTABLE#
  $CD37,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD39,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFE4,attr=$46) }
. UDGTABLE#
  $CD3A,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD3C,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DFCC,attr=$46), | ) }
. UDGTABLE#
  $CD3F,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD41,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DFDC,attr=$46) }
. UDGTABLE#
  $CD42,$01 Terminator.

b $CD43 Graphic ID #N$75
@ $CD43 label=graphic_75
M $CD43,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CD43,$01
W $CD44,$02
  $CD46,$02 Attribute: #COLOUR(#PC+$01)
  $CD48,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA04,attr=$43) }
. UDGTABLE#
  $CD49,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c30 Columns } { #FOR$01,$1E(n,=h #Nn, | ) }
. { #FOR$01,$1E(n,#UDG($DA34,attr=$43), | ) }
. UDGTABLE#
  $CD4C,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($DA0C,attr=$43) }
. UDGTABLE#
  $CD4D,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD4F,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9F4,attr=$43) }
. UDGTABLE#
  $CD50,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c30 Columns } { #FOR$01,$1E(n,=h #Nn, | ) }
. { #FOR$01,$1E(n,#UDG($DA3C,attr=$43), | ) }
. UDGTABLE#
  $CD53,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9FC,attr=$43) }
. UDGTABLE#
  $CD54,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD56,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9E4,attr=$43) }
. UDGTABLE#
  $CD57,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c30 Columns } { #FOR$01,$1E(n,=h #Nn, | ) }
. { #FOR$01,$1E(n,#UDG($DA2C,attr=$43), | ) }
. UDGTABLE#
  $CD5A,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($D9EC,attr=$43) }
. UDGTABLE#
  $CD5B,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD5D,$02 Attribute: #COLOUR(#PC+$01)
  $CD5F,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($DA94,attr=$6)#UDG($DA8C,attr=$6), | ) }
. UDGTABLE#
  $CD63,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD65,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($DA8C,attr=$6)#UDG($DA94,attr=$6), | ) }
. UDGTABLE#
  $CD69,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD6B,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($DA94,attr=$6)#UDG($DA8C,attr=$6), | ) }
. UDGTABLE#
  $CD6F,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD71,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($DA8C,attr=$6)#UDG($DA94,attr=$6), | ) }
. UDGTABLE#
  $CD75,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD77,$02 Attribute: #COLOUR(#PC+$01)
M $CD79,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CD79,$01
W $CD7A,$02
  $CD7C,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c32 Columns } { #FOR$01,$20(n,=h #Nn, | ) }
. { #FOR$01,$20(n,#UDG($E0CC,attr=$42), | ) }
. UDGTABLE#
  $CD7F,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD81,$02 Attribute: #COLOUR(#PC+$01)
  $CD83,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($E07C,attr=$46) })
. UDGTABLE#
  $CD86,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($E08C,attr=$46) })
. UDGTABLE#
  $CD89,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD8B,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($E07C,attr=$46) })
. UDGTABLE#
  $CD8E,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($E08C,attr=$46) })
. UDGTABLE#
  $CD91,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD93,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($E07C,attr=$46) })
. UDGTABLE#
  $CD96,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($E08C,attr=$46) })
. UDGTABLE#
  $CD99,$02 Attribute: #COLOUR(#PC+$01)
  $CD9B,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $CD9D,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CD9D,$01
W $CD9E,$02
  $CDA0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E244,attr=$5F) }
. UDGTABLE#
  $CDA1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E224,attr=$5F) }
. UDGTABLE#
  $CDA2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E234,attr=$5F) }
. UDGTABLE#
  $CDA3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E26C,attr=$5F) }
. UDGTABLE#
  $CDA4,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E254,attr=$5F) }
. UDGTABLE#
  $CDA5,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E144,attr=$5F) }
. UDGTABLE#
  $CDA6,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E214,attr=$5F) }
. UDGTABLE#
  $CDA7,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E204,attr=$5F) }
. UDGTABLE#
  $CDA8,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E24C,attr=$5F) }
. UDGTABLE#
  $CDA9,$02 Screen: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CDAB,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E244,attr=$5F) }
. UDGTABLE#
  $CDAC,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E224,attr=$5F) }
. UDGTABLE#
  $CDAD,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E234,attr=$5F) }
. UDGTABLE#
  $CDAE,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E26C,attr=$5F) }
. UDGTABLE#
  $CDAF,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E254,attr=$5F) }
. UDGTABLE#
  $CDB0,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E144,attr=$5F) }
. UDGTABLE#
  $CDB1,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E214,attr=$5F) }
. UDGTABLE#
  $CDB2,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E204,attr=$5F) }
. UDGTABLE#
  $CDB3,$01 Tile #N(#PEEK(#PC)):
. #UDGTABLE
. { #UDG($E24C,attr=$5F) }
. UDGTABLE#
  $CDB4,$01 Terminator.
