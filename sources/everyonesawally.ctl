; Copyright Mikro-Gen 1985, 2023 ArcadeGeek LTD.
; NOTE: Disassembly is Work-In-Progress.
; Label naming is loosely based on Action_ActionName_SubAction e.g. Print_HighScore_Loop.

> $4000 @org=$4000
b $4000 Loading Screen
D $4000 #UDGTABLE { =h Everyone's a Wally Loading Screen. } { #SCR$02(loading) } UDGTABLE#
@ $4000 label=Loading
  $4000,$1800,$20 Pixels
  $5800,$0300,$20 Attributes

b $5B00

c $5B80
  $5B80,$03 #REGbc=#N$A299.
  $5B83,$03 #REGhl=#N$5B97.
  $5B86,$03 #REGr=#N$00.

  $5B8D,$01 Decrease #REGbc by one.
  $5B8E,$01 Increment #REGhl by one.
  $5B8F,$04 Jump to #R$5B89 unless #REGbc is now zero.
  $5B93,$01 Return.
  $5B94,$03 Call #R$5B80.
  $5B97,$03 Jump to #R$8184.

b $5B9A

b $6B00 Shadow Buffer
@ $6B00 label=ShadowBuffer
  $6B00,$1000

b $7B00

t $7C00 Messaging: Wally
  $7C00,$06 "#STR$7C00,$08($b==$FF)".

t $7C06 Messaging: Wilma
  $7C06,$06 "#STR$7C06,$08($b==$FF)".

t $7C0C Messaging: Tom
  $7C0C,$04 "#STR$7C0C,$08($b==$FF)".

t $7C10 Messaging: Dick
  $7C10,$05 "#STR$7C10,$08($b==$FF)".

t $7C15 Messaging: Harry
  $7C15,$06 "#STR$7C15,$08($b==$FF)".

t $7C1B Messaging: Wages
@ $7C1B label=Messaging_Wages
B $7C1B,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
  $7C1D,$0D #FONT:(TODAY'S WAGES)$E0DC,attr=$43(wages-01)
B $7C2A,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
B $7C2C,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
  $7C2E,$0B #FONT:(WALLY'S PAY)$E0DC,attr=$46(wages-02)
B $7C39,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7C3B,$0B #FONT:(WILMA'S PAY)$E0DC,attr=$46(wages-03)
B $7C46,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7C48,$09 #FONT:(TOM'S PAY)$E0DC,attr=$46(wages-04)
B $7C51,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7C53,$0A #FONT:(DICK'S PAY)$E0DC,attr=$46(wages-05)
B $7C5D,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7C5F,$0B #FONT:(HARRY'S PAY)$E0DC,attr=$46(wages-06)
B $7C6A,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
B $7C6C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7C6E,$07 #FONT:(OVERALL)$E0DC,attr=$43(wages-07)
B $7C75,$01 Terminator.

t $7C76 Messaging: Congratulations
@ $7C76 label=Messaging_Congratulations
B $7C76,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
  $7C78,$1B #FONT:(YOU CLEVER DICK  PLUS TOM,)$E0DC,attr=$44(congratulations-01)
B $7C93,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7C95,$18 #FONT:(HARRY, WILMA AND WALLY.)$E0DC,attr=$44(congratulations-02)
B $7CAD,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7CAF,$17 #FONT:(YOU'VE OPENED THE SAFE.)$E0DC,attr=$44(congratulations-03)
B $7CC6,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7CC8,$1B #FONT:(PERHAPS  EVERYONE'S  NOT  A)$E0DC,attr=$44(congratulations-04)
B $7CE3,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7CE5,$10 #FONT:(WALLY AFTER ALL.)$E0DC,attr=$44(congratulations-05)
B $7CF5,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7CF7,$1B #FONT:(THE GANG HAVE BEEN PAID AND)$E0DC,attr=$44(congratulations-06)
B $7D12,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7D14,$1A #FONT:(ARE NOW OFF ON THEIR HOLS.)$E0DC,attr=$44(congratulations-07)
B $7D2E,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7D30,$17 #FONT:(SEE YOU AGAIN SOMETIME.)$E0DC,attr=$44(congratulations-08)
B $7D47,$01 Terminator.

t $7D48 Messaging: Tough Luck
@ $7D48 label=Messaging_ToughLuck
B $7D48,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
  $7D4A,$19 #FONT:(TOUGH LUCK.  THE GANG HAS)$E0DC,attr=$44(tough-luck-01)
B $7D63,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7D65,$06 #FONT:(EARNED)$E0DC,attr=$44(tough-luck-02)
B $7D6B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7D6D,$0D #FONT:(,  BUT  CAN'T)$E0DC,attr=$44(tough-luck-03)
B $7D7A,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7D7C,$19 #FONT:(HAVE  IT  'COS  THE  SAFE)$E0DC,attr=$44(tough-luck-04)
B $7D95,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7D97,$19 #FONT:(WASN'T OPENED, AND THAT'S)$E0DC,attr=$44(tough-luck-05)
B $7DB0,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7DB2,$13 #FONT:(WHERE THE MONEY IS.)$E0DC,attr=$44(tough-luck-06)
B $7DC5,$01 Terminator.

t $7DC6 Messaging: Splash Screen
@ $7DC6 label=Messaging_Splash
B $7DC6,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
  $7DC8,$05 #FONT:(KEY:-)$E0DC,attr=$42(key)
B $7DCD,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
  $7DCF,$16 #FONT:(   1.SINCLAIR JOYSTICK)$E0DC,attr=$46(sinclair)
B $7DE5,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
B $7DE7,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
  $7DE9,$05 #FONT:(KEY:-)$E0DC,attr=$42(key)
B $7DEE,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
  $7DF0,$16 #FONT:(   2.KEMPSTON JOYSTICK)$E0DC,attr=$46(kempston)
B $7E06,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
B $7E08,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
  $7E0A,$05 #FONT:(KEY:-)$E0DC,attr=$42(key)
B $7E0F,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
  $7E11,$0D #FONT:(   3.KEYBOARD)$E0DC,attr=$46(keyboard)
B $7E1E,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
B $7E20,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
  $7E22,$14 #FONT:(PRESS KEY 4 TO START)$E0DC,attr=$46(start)
B $7E36,$01 Terminator.

t $7E37 Messaging: Key
@ $7E37 label=Messaging_Key
B $7E37,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
  $7E39,$06 #FONT:(KEY:-)$E0DC,attr=$47(key-chosen)

t $7E3F Messaging: Banner
@ $7E3F label=Messaging_Banner
M $7E3F,$03 Sprite Bank: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
B $7E3F,$01
W $7E40,$02
B $7E42,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
  $7E44,$0A #FONT:(CHARACTER:)$E0DC,attr=$47(character)
B $7E4E,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
B $7E50,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
  $7E52,$0A #FONT:(ENDURANCE:)$E0DC,attr=$47(endurance)
B $7E5C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
B $7E5E,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
  $7E60,$02 #FONT:(  )$E0DC,attr=$47(whitespace) (whitespace).
B $7E62 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7E64,$02 #FONT:(  )$E0DC,attr=$47(whitespace) (whitespace).
B $7E66 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
@ $7E68 label=Messaging_Banner_Underline
M $7E68,$03 Sprite Bank: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
B $7E68,$01
W $7E69,$02
B $7E6B,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
B $7E6D,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c32 Columns } { #FOR$01,$20(n,=h #Nn, | ) }
. { #FOR$01,$20(n,#UDG($E2B4,attr=$42), | ) }
. UDGTABLE#


  $7E70,$01 Terminator.

t $7E71 Messaging: Tea Break
@ $7E71 label=Messaging_TeaBreak
B $7E71,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
B $7E73,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7E75,$16 #FONT:(HO HUM, TIME FOR A BUN)$E0DC,attr=$45(tea-break-01)
B $7E8B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7E8D,$11 #FONT:(MORNING TEA BREAK)$E0DC,attr=$45(tea-break-02)
B $7E9E,$01 Terminator.

t $7E9F Messaging: Lunch Time
@ $7E9F label=Messaging_LunchTime
B $7E9F,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
B $7EA1,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7EA3,$1C #FONT:(RUBBA DUB DUB, TIME FOR GRUB)$E0DC,attr=$43(lunch-time-01)
B $7EBF,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7EC1,$0A #FONT:(LUNCH TIME)$E0DC,attr=$43(lunch-time-02)
B $7ECB,$01 Terminator.

t $7ECC Messaging: Afternoon Tea Break
@ $7ECC label=Messaging_AfternoonTeaBreak
B $7ECC,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
B $7ECE,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7ED0,$1C #FONT:(FIDDLE DEE DEE, TIME FOR TEA)$E0DC,attr=$46(afternoon-01)
B $7EEC,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7EEE,$13 #FONT:(AFTERNOON TEA BREAK)$E0DC,attr=$46(afternoon-02)
B $7F01,$01 Terminator.

b $7F02
  $7F02,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
M $7F04,$03 Sprite Bank: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $7F04,$01
W $7F05,$02
  $7F07,$01 Tile #N(#PEEK(#PC)): #UDGTABLE {{ #UDG($D7BC,attr=$42) }} UDGTABLE#
  $7F08,$01 Tile #N(#PEEK(#PC)): #UDGTABLE {{ #UDG($D7C4,attr=$42) }} UDGTABLE#
  $7F09,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7F0B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE {{ #UDG($D7CC,attr=$42) }} UDGTABLE#
  $7F0C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE {{ #UDG($D7CC,attr=$42) }} UDGTABLE#
  $7F0D,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7F0F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE {{ #UDG($D7BC,attr=$42) }} UDGTABLE#
  $7F10,$01 Tile #N(#PEEK(#PC)): #UDGTABLE {{ #UDG($D7C4,attr=$42) }} UDGTABLE#
  $7F11,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $7F13,$01 Tile #N(#PEEK(#PC)): #UDGTABLE {{ #UDG($D7BC,attr=$42) }} UDGTABLE#
  $7F14,$01 Tile #N(#PEEK(#PC)): #UDGTABLE {{ #UDG($D7C4,attr=$42) }} UDGTABLE#
  $7F15,$01 Terminator.
M $7F16,$03 Sprite Bank: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $7F16,$01
W $7F17,$02
  $7F19,$02 Attribute: #COLOUR(#PEEK(#PC+$01)).
  $7F1B,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c32 Columns } { #FOR$01,$20(n,=h #Nn, | ) }
. { #FOR$01,$20(n,#UDG($DFFC,attr=$46), | ) }
. UDGTABLE#
  $7F1E,$01 Terminator.

t $7F1F Messaging: The Town Square
@ $7F1F label=Messaging_TownSquare
  $7F1F,$0F "#STR$7F1F,$08($b==$FF)".
B $7F2E,$01 Terminator.

t $7F2F Messaging: Stamp Street
@ $7F2F label=Messaging_StampStreet
  $7F2F,$0C "#STR$7F2F,$08($b==$FF)".
B $7F3B,$01 Terminator.

t $7F3C Messaging: The Post Office
@ $7F3C label=Messaging_PostOffice
  $7F3C,$0F "#STR$7F3C,$08($b==$FF)".
B $7F4B,$01 Terminator.

t $7F4C Messaging: Market Street
@ $7F4C label=Messaging_MarketStreet
  $7F4C,$0D "#STR$7F4C,$08($b==$FF)".
B $7F59,$01 Terminator.

t $7F5A Messaging: The Super Market
@ $7F5A label=Messaging_SuperMarket
  $7F5A,$10 "#STR$7F5A,$08($b==$FF)".
B $7F6A,$01 Terminator.

t $7F6B Messaging: The Park
@ $7F6B label=Messaging_ThePark
  $7F6B,$08 "#STR$7F6B,$08($b==$FF)".
B $7F73,$01 Terminator.

t $7F74 Messaging: Wobbly Walk
@ $7F74 label=Messaging_WobblyWalk
  $7F74,$0B "#STR$7F74,$08($b==$FF)".
B $7F7F,$01 Terminator.

t $7F80 Messaging: Rubble Road
@ $7F80 label=Messaging_RubbleRoad
  $7F80,$0B "#STR$7F80,$08($b==$FF)".
B $7F8B,$01 Terminator.

t $7F8C Messaging: Wall Street
@ $7F8C label=Messaging_WallStreet
  $7F8C,$0B "#STR$7F8C,$08($b==$FF)".
B $7F97,$01 Terminator.

t $7F98 Messaging: Pete Street
@ $7F98 label=Messaging_PeteStreet
  $7F98,$0B "#STR$7F98,$08($b==$FF)".
B $7FA3,$01 Terminator.

t $7FA4 Messaging: The Work Shed
@ $7FA4 label=Messaging_WorkShed
  $7FA4,$0D "#STR$7FA4,$08($b==$FF)".
B $7FB1,$01 Terminator.

t $7FB2 Messaging: School Lane
@ $7FB2 label=Messaging_SchoolLane
  $7FB2,$0B "#STR$7FB2,$08($b==$FF)".
B $7FBD,$01 Terminator.

t $7FBE Messaging: The School
@ $7FBE label=Messaging_TheSchool
  $7FBE,$0A "#STR$7FBE,$08($b==$FF)".
B $7FC8,$01 Terminator.

t $7FC9 Messaging: Baker Street
@ $7FC9 label=Messaging_BakerStreet
  $7FC9,$0C "#STR$7FC9,$08($b==$FF)".
B $7FD5,$01 Terminator.

t $7FD6 Messaging: The Bakers
@ $7FD6 label=Messaging_TheBakers
  $7FD6,$0A "#STR$7FD6,$08($b==$FF)".
B $7FE0,$01 Terminator.

t $7FE1 Messaging: The Pub
@ $7FE1 label=Messaging_ThePub
  $7FE1,$07 "#STR$7FE1,$08($b==$FF)".
B $7FE8,$01 Terminator.

t $7FE9 Messaging: Motor Way
@ $7FE9 label=Messaging_MotorWay
  $7FE9,$09 "#STR$7FE9,$08($b==$FF)".
B $7FF2,$01 Terminator.

t $7FF3 Messaging: The Laboratory
@ $7FF3 label=Messaging_Laboratory
  $7FF3,$0E "#STR$7FF3,$08($b==$FF)".
B $8001,$01 Terminator.

t $8002 Messaging: The Garage
@ $8002 label=Messaging_TheGarage
  $8002,$0A "#STR$8002,$08($b==$FF)".
B $800C,$01 Terminator.

t $800D Messaging: Reference Road
@ $800D label=Messaging_ReferenceRoad
  $800D,$0E "#STR$800D,$08($b==$FF)".
B $801B,$01 Terminator.

t $801C Messaging: The Library
@ $801C label=Messaging_Library
  $801C,$0B "#STR$801C,$08($b==$FF)".
B $8027,$01 Terminator.

t $8028 Messaging: Penny Lane
@ $8028 label=Messaging_PennyLane
  $8028,$0A "#STR$8028,$08($b==$FF)".
B $8032,$01 Terminator.

t $8033 Messaging: The Bank
@ $8033 label=Messaging_TheBank
  $8033,$08 "#STR$8033,$08($b==$FF)".
B $803B,$01 Terminator.

t $803C Messaging: Wally's House
@ $803C label=Messaging_WallysHouse
  $803C,$0D "#STR$803C,$08($b==$FF)".
B $8049,$01 Terminator.

t $804A Messaging: Meat Street
@ $804A label=Messaging_MeatStreet
  $804A,$0B "#STR$804A,$08($b==$FF)".
B $8055,$01 Terminator.

t $8056 Messaging: The Butchers
@ $8056 label=Messaging_Butchers
  $8056,$0C "#STR$8056,$08($b==$FF)".
B $8062,$01 Terminator.

t $8063 Messaging: Trunk Road
@ $8063 label=Messaging_TrunkRoad
  $8063,$0A "#STR$8063,$08($b==$FF)".
B $806D,$01 Terminator.

t $806E Messaging: The Zoo
@ $806E label=Messaging_TheZoo
  $806E,$07 "#STR$806E,$08($b==$FF)".
B $8075,$01 Terminator.

t $8076 Messaging: Rail Road
@ $8076 label=Messaging_RailRoad
  $8076,$09 "#STR$8076,$08($b==$FF)".
B $807F,$01 Terminator.

t $8080 Messaging: The Station
@ $8080 label=Messaging_TheStation
  $8080,$0B "#STR$8080,$08($b==$FF)".
B $808B,$01 Terminator.

t $808C Messaging: The Docks
@ $808C label=Messaging_TheDocks
  $808C,$09 "#STR$808C,$08($b==$FF)".
B $8095,$01 Terminator.

t $8096 Messaging: The Sewer
@ $8096 label=Messaging_TheSewer
  $8096,$09 "#STR$8096,$08($b==$FF)".
B $809F,$01 Terminator.

t $80A0 Messaging: The Cave
@ $80A0 label=Messaging_TheCave
  $80A0,$08 "#STR$80A0,$08($b==$FF)".
B $80A8,$01 Terminator.

b $80A9

c $80E5 Game Selection Menu
@ $80E5 label=GameMenu
  $80E5,$03 Call #R$B8ED.
N $80EB Print up all the options.
@ $80EB label=GameMenu_Loop
  $80E8,$03 Call #R$B471.
  $80EB,$03 #REGhl=#R$7DC6.
  $80EE,$03 #REGde=#N($0003,$04,$04).
  $80F1,$03 Call #R$B8C4.
N $80F4 Set up displaying the active game option.
  $80F4,$03 #REGhl=#R$7E37.
N $80F7 Calculate the screen position of the active control method.
  $80F7,$08 #REGb=#N$02-*#R$B2DB.
N $80FF #REGd contains the vertical position.
  $80FF,$05 #REGd=(#REGb*#N$08)-#REGb.
N $8104 And #REGe is hardcoded for the horizontal position.
  $8104,$02 #REGe=#N$03.
N $8106 Print the active key to the screen, this just overwrites the one which is already present (so turns it white).
  $8106,$03 Call #R$B8C4.
@ $8109 label=GameMenu_Initialise
  $8109,$05 Write #N$FF to #R$B4E9.
  $810E,$03 Call #R$B482.
N $8111 Check if demo mode should start.
  $8111,$06 If #R$B55F is not zero jump to #R$8155.
  $8117,$03 #REGa=*#R$B4E9.
N $811A Handler for selecting "Sinclair Joystick".
  $811A,$04 If bit 0 is not set, jump to #R$8123.
  $811E,$03 Call #R$B2DC.
  $8121,$02 Jump to #R$80EB.
N $8123 Handler for selecting "Kempston Joystick".
@ $8123 label=GameMenu_Kempston
  $8123,$04 If bit 1 is not set, jump to #R$812C.
  $8127,$03 Call #R$B2E2.
  $812A,$02 Jump to #R$80EB.
N $812C Handler for selecting "Keyboard".
@ $812C label=GameMenu_Keyboard
  $812C,$04 If bit 2 is not set, jump to #R$8135.
  $8130,$03 Call #R$B2E8.
  $8133,$02 Jump to #R$80EB.
N $8135 Handler for selecting "Start".
@ $8135 label=GameMenu_StartGame
  $8135,$04 If bit 3 is not set, jump to #R$8109.
  $8139,$01 Return.

g $813A
B $813A,$01

c $813B
  $813B,$03 Call #R$B952.
  $813E,$03 #REGbc=#N($0014,$04,$04).
  $8141,$01 Stash #REGbc on the stack.
  $8142,$03 Call #R$EEA2.
  $8145,$03 Call #R$F578.
  $8148,$03 Call #R$B9D6.
  $814B,$03 Call #R$B9FB.
  $814E,$01 Restore #REGbc from the stack.
  $814F,$01 Decrease #REGbc by one.
  $8150,$04 Jump to #R$8141 until #REGbc is zero.
  $8154,$01 Return.

c $8155 Start Demo Mode
@ $8155 label=Demo_Start
  $8155,$03 Call #R$BAD8.
  $8158,$03 Call #R$B8ED.
  $815B,$03 Call #R$E3FD.
  $815E,$03 Call #R$813B.
  $8161,$03 Write #REGa to #R$813A.
  $8164,$03 #REGa=*#R$813A.
  $8167,$05 If #REGiy+#N$0F is zero, jump to #R$8175.
  $816C,$06 Write #REGiy+#N$0F to #R$813A.
  $8172,$03 Call #R$B952.
  $8175,$03 Call #R$81AE.
  $8178,$01 #REGa=#N$00.

  $817B,$02,b$01 Set bits 5-7.
  $817D,$05 Jump to #R$80E5 if not #N$FF.
  $8182,$02 Jump to #R$8164.

c $8184 Game Loop
@ $8184 label=GameLoop
  $8184,$01 Disable interrupts.
  $8185,$03 Set the stack pointer to #R$FC00.
  $8188,$03 Call #R$80E5.
  $818B,$03 Call #R$BAD8.
  $818E,$03 Call #R$E3FD.
  $8191,$03 Call #R$813B.
@ $8194 label=Game_Running_Loop
  $8194,$03 Call #R$EB55.
  $8197,$03 Call #R$EABF.
  $819A,$03 Call #R$AC06.
  $819D,$03 Call #R$E79B.
  $81A0,$03 Call #R$B09F.
  $81A3,$03 Call #R$81AE.
  $81A6,$03 Call #R$81C4.
  $81A9,$03 Call #R$ED2A.
  $81AC,$02 Jump to #R$8194.

c $81AE
  $81AE,$03 Call #R$BAB4.
  $81B1,$03 Call #R$A92C.
  $81B4,$03 Call #R$EEC1.
  $81B7,$03 Call #R$F10E.
  $81BA,$03 Call #R$F814.
  $81BD,$03 Call #R$F277.
  $81C0,$03 Call #R$B9D6.
  $81C3,$01 Return.

c $81C4
  $81D1,$03 Jump to #R$81C4.

c $81D4

b $81F8 Screen Buffer Locations
@ $81F8 label=ScreenBuffer_Locations
W $81F8,$180,$02

b $8378 Graphics: Items
@ $8378 label=Graphics_Items
N $8378 Item: The Plunger.
  $8378,$20,$02 #ITEM(#PC)(item-the-plunger.png)
N $8398 Item: The Letter A.
  $8398,$20,$02 #ITEM(#PC)(item-the-letter-a.png)
N $83B8 Item: Book Two.
  $83B8,$20,$02 #ITEM(#PC)(item-book-two.png)
N $83D8 Item: The Sand.
  $83D8,$20,$02 #ITEM(#PC)(item-the-sand.png)
N $83F8 Item: The Battery.
  $83F8,$20,$02 #ITEM(#PC)(item-the-battery.png)
N $8418 Item: The Letter K.
  $8418,$20,$02 #ITEM(#PC)(item-the-letter-k.png)
N $8438 Item: The Cement.
  $8438,$20,$02 #ITEM(#PC)(item-the-cement.png)
N $8458 Item: Book Three.
  $8458,$20,$02 #ITEM(#PC)(item-book-three.png)
N $8478 Item: The Trowel.
  $8478,$20,$02 #ITEM(#PC)(item-the-trowel.png)
N $8498 Item: The Matches.
  $8498,$20,$02 #ITEM(#PC)(item-the-matches.png)
N $84B8 Item: The Cracked Insulator.
  $84B8,$20,$02 #ITEM(#PC)(item-the-cracked-insulator.png)
N $84D8 Item: Book One.
  $84D8,$20,$02 #ITEM(#PC)(item-book-one.png)
N $84F8 Item: The Monkey Nuts.
  $84F8,$20,$02 #ITEM(#PC)(item-the-monkey-nuts.png)
N $8518 Item: The Money.
  $8518,$20,$02 #ITEM(#PC)(item-the-money.png)
N $8538 Item: Superglue.
  $8538,$20,$02 #ITEM(#PC)(item-superglue.png)
N $8558 Item: The Chewing Gum.
  $8558,$20,$02 #ITEM(#PC)(item-the-chewing-gum.png)
N $8578 Item: The Bucket.
  $8578,$20,$02 #ITEM(#PC)(item-the-bucket.png)
N $8598 Item: The Jump Leads.
  $8598,$20,$02 #ITEM(#PC)(item-the-jump-leads.png)
N $85B8 Item: The Bunsen Burner.
  $85B8,$20,$02 #ITEM(#PC)(item-the-bunsen-burner.png)
N $85D8 Item: The Letter B.
  $85D8,$20,$02 #ITEM(#PC)(item-the-letter-b.png)
N $85F8 Item: Gas Mask.
  $85F8,$20,$02 #ITEM(#PC)(item-gas-mask.png)
N $8618 Item: The Parcel.
  $8618,$20,$02 #ITEM(#PC)(item-the-parcel.png)
N $8638 Item: The Fuse.
  $8638,$20,$02 #ITEM(#PC)(item-the-fuse.png)
N $8658 Item: The Meat.
  $8658,$20,$02 #ITEM(#PC)(item-the-meat.png)
N $8678 Item: The Monkey Wrench.
  $8678,$20,$02 #ITEM(#PC)(item-the-monkey-wrench.png)
N $8698 Item: Screwdriver.
  $8698,$20,$02 #ITEM(#PC)(item-screwdriver.png)
N $86B8 Item: The Letter E.
  $86B8,$20,$02 #ITEM(#PC)(item-the-letter-e.png)
N $86D8 Item: The Hook.
  $86D8,$20,$02 #ITEM(#PC)(item-the-hook.png)
N $86F8 Item: The Patch.
  $86F8,$20,$02 #ITEM(#PC)(item-the-patch.png)
N $8718 Item: The Pipe.
  $8718,$20,$02 #ITEM(#PC)(item-the-pipe.png)
N $8738 Item: The Letter R.
  $8738,$20,$02 #ITEM(#PC)(item-the-letter-r.png)
N $8758 Item: The Oil Can.
  $8758,$20,$02 #ITEM(#PC)(item-the-oil-can.png)
N $8778 Item: The Fuse Wire.
  $8778,$20,$02 #ITEM(#PC)(item-the-fuse-wire.png)
N $8798 Item: The Good Insulator.
  $8798,$20,$02 #ITEM(#PC)(item-the-good-insulator.png)
N $87B8 Item: The Bottle.
  $87B8,$20,$02 #ITEM(#PC)(item-the-bottle.png)
N $87D8 Item: The Red Herring.
  $87D8,$20,$02 #ITEM(#PC)(item-the-red-herring.png)
N $87F8 Item: The Test Tube.
  $87F8,$20,$02 #ITEM(#PC)(item-the-test-tube.png)
N $8818 Item: The Can Of Beans.
  $8818,$20,$02 #ITEM(#PC)(item-the-can-of-beans.png)
N $8838 Item: The Rubber Stamp.
  $8838,$20,$02 #ITEM(#PC)(item-the-rubber-stamp.png)
N $8858 Item: The Pliers.
  $8858,$20,$02 #ITEM(#PC)(item-the-pliers.png)
N $8878 Item: The Whistle.
  $8878,$20,$02 #ITEM(#PC)(item-the-whistle.png)

b $8898
  $8898,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $88F8,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8938,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8978,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $89B8,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $89F8,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8A38,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8A78,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8AB8,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8AF8,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8B38,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8B78,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8BB8,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8BF8,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8C38,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8C78,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8CB8,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8CF8,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8D38,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8D78,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8DB8,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8DF8,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8E38,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8E78,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8EB8,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8EF8,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8F38,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8F78,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8FB8,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $8FF8,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $9038,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $9078,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $90B8,$40,$04 #SPRITE(#PC)(item-(#PC).png)
  $90F8,$40,$04 #SPRITE(#PC)(item-(#PC).png)

b $91D5
  $91D5,$08
  $9818
  $9878

b $A838
b $A839

g $A83B Temp Stack Pointer Storage
@ $A83B label=Temp_StackPointer_Storage
W $A83B,$02

c $A83D
  $A83D,$01 Disable interrupts.
  $A83E,$01 Switch to the shadow registers.
  $A83F,$01 Stash #REGaf on the stack.
  $A840,$04 Write #REGsp to #R$A83B.
  $A844,$03 Create an offset in #REGhl.
  $A847,$05 #REGhl*=#N$20.
  $A84C,$05 #REGsp=#R$8378+#REGhl.
  $A851,$04 #REGb=*#R$A838.
  $A855,$02,b$01 Keep only bits 0-2.
  $A857,$01 Increment #REGa by one.
  $A858,$03 Write #REGa to #R$A87A(#N$A87B).
  $A85B,$01 #REGa=#REGb.
  $A85C,$02,b$01 Keep only bits 3-7.
  $A85E,$03

  $A86C,$03 Create an offset in #REGhl.
  $A86F,$05 #REGhl*=#N$20.
  $A874,$02 #REGd=#N$6B.
  $A876,$01 #REGhl+=#REGde.
  $A877,$02 #REGc=#N$10.
  $A879,$01 Restore #REGde from the stack.
N $A87A This is modified from #R$A858.
  $A87A,$02 #REGb=#N$00.
  $A87C,$01 Decrease #REGb by one.
  $A87D,$02 Jump to #R$A889 if #REGb is zero.
  $A87F,$01 #REGa=#N$00.

  $A899,$04 Restore #REGsp from #R$A83B.
  $A89D,$01 Restore #REGaf from the stack.
  $A89E,$01 Switch to the normal registers.
  $A89F,$01 Return.

c $A8A0
  $A8A0,$01 Switch to the shadow registers.
  $A8A1,$01 Stash #REGaf on the stack.
  $A8A2,$04 Write #REGsp to #R$A83B.
  $A8A6,$03 #REGsp=#R$8378.
  $A8A9,$03 Create an offset in #REGhl.
  $A8AC,$07 #REGsp=(#REGhl*#N$20)+#REGsp.
  $A8B3,$04 #REGb=#R$A838.
  $A8B7,$02,b$01 Keep only bits 0-2.
  $A8B9,$01 Increment #REGa by one.
  $A8BA,$06 Write #REGa to #LIST { #R$A8DF(#N$A8E0) } { #R$A8FB(#N$A8FC) } LIST#
  $A8C1,$02,b$01 Keep only bits 3-7.
  $A8C3,$03
  $A8C6,$03 Write #REGa to #R$EFAE(#N$EFAF).
  $A8C9,$03 #REGe=#REGa+#N$02.
  $A8CC,$02 #REGc=#N$10.
  $A8CE,$03 #REGa=*#R$A839.

  $A912,$04 #REGhl+=#N($0022,$04,$04).
  $A916,$01 Decrease #REGc by one.
  $A917,$03 If #REGc is not zero, jump to #R$A8DE.
  $A91A,$01 Switch to the normal registers.
  $A91B,$04 Restore #REGsp from #R$A83B.
  $A91F,$01 Restore #REGaf from the stack.
  $A920,$01 Return.

c $A921 Check If Active Character
@ $A921 label=Character_Active
R $A921 IY Character pointer
R $A921 F Zero flag is set if the given character is active
  $A921,$03 #REGhl=#REGiy.
  $A924,$04 #REGde=*#R$B09D.
  $A928,$01 Reset the flags.
N $A929 Simply subtract one character address pointer from the current character pointer.
  $A929,$02 #REGhl-=#REGde.
  $A92B,$01 Return.

c $A92C Handler: Move Non-Player Characters
@ $A92C label=Handler_Move_Characters
  $A92C,$02 Stash #REGiy on the stack.
  $A92E,$06 Write #REGiy+#N$0F to #R$B951.
  $A934,$04 #REGiy=#R$BC67.
  $A938,$06 #REGb=(*#R$B55F)+#N$04.
  $A93E,$01 Stash #REGbc on the stack.
  $A93F,$06 If #R$B55F is not zero jump to #R$A94C.
  $A945,$03 Call #R$A921.
  $A94A,$02 Increment #REGiy by one.
  $A94C,$08 Compare the current room (#REGiy+#N$0F) against (#REGiy+#N$5A) jump to #R$A95B if they are different.
  $A95B,$03 Call #R$AFC4.

  $A964,$03 Call #R$B1B9.
  $A967,$03 Jump to #R$A989.

  $A96A,$03 #REGa=*#REGiy+N$37.
  $A96D,$03 If #REGa is zero, jump to #R$A975.
  $A970,$03 Call #R$B197.
  $A973,$02 Jump to #R$A989.

  $A975,$05 #REGe=(*#REGiy+#N$64)*#N$02.
  $A97A,$02 #REGd=#N$00.
  $A97C,$04 #REGhl=#R$AAA0+#REGde.
  $A980,$01 #REGe=*#REGhl.
  $A981,$01 Increment #REGhl by one.
  $A982,$01 #REGd=*#REGhl.
  $A983,$01 Switch the #REGde and #REGhl registers.
  $A984,$03 #REGde=#R$A989.
  $A987,$01 Stash #REGde on the stack.
  $A988,$01 Jump to *#REGhl.

N $A989 TODO.
  $A989,$01 Restore #REGbc from the stack.
  $A98A,$02 Increment #REGiy by one.
  $A98C,$02
  $A98E,$02 Restore #REGiy from the stack.
  $A990,$01 Return.

  $A991,$03 Call #R$AFC4.

  $AA11,$03 Call #R$AE8A.

  $AA24,$03 Write #REGd to #REGiy+#N$5A.
  $AA27,$03 Write #REGc to #REGiy+#N$0F.
  $AA2A,$03 Call #R$ADBA.
  $AA2D,$03 Jump to #R$A989.

c $AA30 Handler: Pick Up Objects
@ $AA30 label=Handler_PickUpObjects
  $AA30,$01 Stash #REGhl on the stack.
  $AA31,$03 Call #R$AA8C.
  $AA34,$03 Increment #REGhl by three.

  $AA3E,$02,b$01 Keep only bit 7.

  $AA42,$01 Stash #REGhl on the stack.
  $AA43,$03 Call #R$A921.
  $AA46,$01 Restore #REGhl from the stack.

  $AA4E,$02,b$01 Keep only bit 7.

N $AA5D Fetch the item 2 ID, we're about to drop it.
  $AA5D,$03 #REGa=*#REGiy+#N$55.
  $AA60,$03 Decrease #REGhl by three.
N $AA63 Fetch the picked up item ID.
  $AA63,$01 #REGe=*#REGhl.
N $AA64 Write the dropped item ID to *#REGhl.
  $AA64,$01 Write #REGa to *#REGhl.
N $AA65 Move the characters collected item 1 to item 2.
  $AA65,$03 #REGa=*#REGiy+#N$50.
  $AA68,$03 Write #REGa to *#REGiy+#N$55.
N $AA6B Write the picked up item to the characters item 1.
  $AA6B,$03 Write #REGe to *#REGiy+#N$50.
  $AA6E,$03 Call #R$A921.

  $AA7D,$01 Restore #REGhl from the stack.
  $AA7E,$01 Return.

c $AA7F Sounds: Pick Up
@ $AA7F label=Sounds_PickUp
  $AA7F,$03 #REGbc=#N$FF0A.
  $AA82,$03 #REGde=#N$0114.
  $AA85,$03 #REGhl=#N$1401.
  $AA88,$03 Call #R$E3D3.
  $AA8B,$01 Return.

c $AA8C Handler: Fetch Items In Current Room
@ $AA8C label=Handler_ItemsCurrentRoom
  $AA8C,$03 #REGa=*#REGiy+#N$0F (current room).
  $AA8F,$03 #REGhl=#R$BCE9.
  $AA92,$03 Call #R$AC6C.
  $AA95,$04 If #REGb is zero jump to #R$AA9F.
@ $AA99 label=Handler_ItemsCurrentRoom_Loop
  $AA99,$04 Increment #REGhl by four.
  $AA9D,$02 Decrease counter by one and loop back to #R$AA99 until counter is zero.
@ $AA9F label=Handler_ItemsCurrentRoom_Return
  $AA9F,$01 Return.

w $AAA0 Jump Table
@ $AAA0 label=Table_Jump
  $AAA0,$12,$02

c $AAB2
  $AAB2,$07 If #REGiy+#N$0A is #N$98 jump to #R$AACE.
  $AAB9,$07 If the current room (#REGiy+#N$0F) is not "The Sewer" (#N$1F) jump to #R$AACE.
  $AAC0,$07 If #REGiy+#N$05 is lower than #N$78 jump to #R$AACE.
  $AAC7,$04 Write #N$01 to #REGiy+#N$3C.
  $AACB,$03 Jump to #R$B288.

  $AACE,$04 Write #N$FF to #REGiy+#N$3C.
  $AAD2,$03 Call #R$B288.
  $AAD5,$07 If #REGiy+#N$05 is zero then jump to #R$AE5D.
  $AADC,$01 Return.

c $AADD
  $AADD,$07 If #REGiy+#N$0A is #N$98 jump to #R$AAF9.
  $AAE4,$07 If the current room (#REGiy+#N$0F) is not "The Sewer" (#N$1F) jump to #R$AAF9.
  $AAEB,$07 If #REGiy+#N$05 is higher than #N$78 jump to #R$AAF9.
  $AAF2,$04 Write #N$FF to #REGiy+#N$3C.
  $AAF6,$03 Jump to #R$B288.

  $AAF9,$04 Write #N$01 to #REGiy+#N$3C.
  $AAFD,$03 Call #R$B288.
  $AB00,$08 If #REGiy+#N$05 is #N$F0 then jump to #R$AE5D.
  $AB08,$01 Return.

c $AB09
  $AB09,$07 If #REGiy+#N$05 is lower than #N$78 jump to #R$AB16.
  $AB10,$04 Write #N$01 to #REGiy+#N$3C.
  $AB14,$02 Jump to #R$AB1A.
  $AB16,$04 Write #N$FF to #REGiy+#N$3C.
  $AB1A,$03 Call #R$B288.
  $AB1D,$08 If #REGiy+#N$05 is #N$78 jump to #R$AE5D.
  $AB25,$01 Return.

c $AB26

c $AB43

c $AB60
  $AB60,$07 If #REGiy+#N$0A is not #N$98 jump to #R$AB88.
  $AB67,$07 If #REGiy+#N$05 is lower than #N$66 jump to #R$AB74.
  $AB6E,$04 Write #N$01 to #REGiy+#N$3C.
  $AB72,$02 Jump to #R$AB78.
  $AB74,$04 Write #N$FF to #REGiy+#N$3C.
  $AB78,$03 Call #R$B288.
  $AB7B,$06 Return if #REGiy+#N$05 is not #N$66.
  $AB81,$04 Write #N$FF to #REGiy+#N$3C.
  $AB85,$03 Jump to #R$B1A6.
  $AB88,$04 If #REGiy+#N$0A is not #N$58 jump to #R$AB81.
  $AB8C,$04 Write #N$FF to #REGiy+#N$3C.
  $AB90,$03 Call #R$B288.
  $AB93,$07 If #REGiy+#N$05 is zero then jump to #R$AE5D.
  $AB9A,$01 Return.

c $AB9B
  $AB9B,$07 If #REGiy+#N$0A is not #N$98 jump to #R$ABC3.
  $ABA2,$07 If #REGiy+#N$05 is lower than #N$8A jump to #R$ABAF.
  $ABA9,$04 Write #N$01 to #REGiy+#N$3C.
  $ABAD,$02 Jump to #R$ABB3.
  $ABAF,$04 Write #N$FF to #REGiy+#N$3C.
  $ABB3,$03 Call #R$B288.
  $ABB6,$06 Return if #REGiy+#N$05 is not #N$8A.
  $ABBC,$04 Write #N$01 to #REGiy+#N$3C.
  $ABC0,$03 Jump to #R$B1A6.
  $ABC3,$04 If #REGiy+#N$0A is not #N$58 jump to #R$ABBC.
  $ABC7,$04 Write #N$01 to #REGiy+#N$3C.
  $ABCB,$03 Call #R$B288.
  $ABCE,$08 If #REGiy+#N$05 is #N$F0 jump to #R$AE5D.
  $ABD6,$01 Return.

c $ABD7 Controls: Exit Screen
@ $ABD7 label=Controls_ExitScreen
R $ABD7 O:A #N$00 for no press and #N$01 for pressed
  $ABD7,$06 If #R$B2DB is zero then jump to #R$ABEA.
  $ABDD,$04 If #R$B2DB is not #N$01 then jump to #R$ABFC.
N $ABE1 Handle Kempston Joystick.
  $ABE1,$02 Read from Kempston Joystick.
  $ABE3,$04 If bit 3 is set/ "UP" is being pressed then jump to #R$AC04.
N $ABE7 Key was pressed so return #REGa=#N$01.
@ $ABE7 label=Controls_Pressed_ExitScreen
  $ABE7,$02 #REGa=#N$01.
  $ABE9,$01 Return.
N $ABEA Handle Keyboard controls.
@ $ABEA label=Controls_ExitScreen_Keyboard
  $ABEA,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$FD | A | S | D | F | G }
. TABLE#
  $ABEE,$01 Store the result in #REGb.
  $ABEF,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$BF | ENTER | L | K | J | H }
. TABLE#
  $ABF3,$01 Merge in the bits from #REGb.
N $ABF4 Fill in the "blanks".
  $ABF4,$02,b$01 Set bits 5-7.
N $ABF6 If there's been any keypress at all then #REGa won't be #N$FF.
  $ABF6,$04 If the result is not #N$FF jump to #R$ABE7.
  $ABFA,$02 Jump to #R$AC04.
N $ABFC Handle Sinclair Joystick.
@ $ABFC label=Controls_ExitScreen_Sinclair
  $ABFC,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$EF | 0 | 9 | 8 | 7 | 6 }
. TABLE#
  $AC00,$04 If bit 1 is set jump to #R$ABE7.
N $AC04 No key was pressed so return #REGa=#N$00.
@ $AC04 label=Controls_NoPress_ExitScreen
  $AC04,$01 #REGa=#N$00.
  $AC05,$01 Return.

c $AC06

c $AC69
E $AC69 Continue on to #R$AC6C.
  $AC69,$03 #REGhl=#R$AC7F.

c $AC6C Find Data By ID
@ $AC6C label=FindDataById
R $AC6C A ID of data to find
R $AC6C HL Pointer to data for searching
R $AC6C O:HL Pointer to data correlating to the ID
N $AC6C If #REGa is zero, just return instantly.
  $AC6C,$02 Return if #REGa is zero.
  $AC6E,$02 Stash #REGbc and #REGde on the stack.
N $AC70 #REGe now holds the ID we want to find the memory location for. This is used as a "countdown".
  $AC70,$01 #REGe=#REGa.
N $AC71 All data is terminated by #N$FF, so essentially we're going to count how many terminators we find. This will
.       give us the start address of the data ID we're interested in.
  $AC71,$02 #REGa=#N$FF.
N $AC73 Set the counter to #N$10000.
  $AC73,$03 #REGbc=#N($0000,$04,$04).
@ $AC76 label=FindDataById_Loop
  $AC76,$02 Search for the first occurrence of #N$FF using *#REGhl.
N $AC78 Move onto the next ID, and keep looping back to #R$AC76 until we're on the ID we want to find the data for.
  $AC78,$01 Decrease #REGe by one.
  $AC79,$03 Jump to #R$AC76 until #REGe is zero.
N $AC7C Once we're here, #REGhl will contain the start address of the data correlating to the given ID.
  $AC7C,$02 Restore #REGde and #REGbc from the stack.
  $AC7E,$01 Return.

b $AC7F
  $AD78

c $ADBA
  $ADBA,$03 #REGa=current room ID (*#REGiy+#N$0F).
  $ADBD,$03

  $ADC2,$04 Write #N$01 to *#REGiy-#N$14.
  $ADC6,$01 Return.

  $ADC7,$02 #REGd=#N$FF.
  $ADC9,$03 Call #R$AC69.
  $ADCC,$03 #REGa=current room ID (*#REGiy+#N$0F).
  $ADCF,$03 Call #R$AE30.

  $ADDA,$03 Call #R$AE30.

  $ADE8,$02 Jump to #R$AE18.

  $ADF2,$03 Create an offset in #REGde.
  $ADF5,$04 #REGhl=#R$AD78+#REGde.

b $AE3C

c $AE5D
  $AE5D,$06 Write the current room ID (*#REGiy+#N$0F) to *#REGiy+#N$6E.

  $AE6C,$03 Call #R$AC5F.

  $AE78,$04 Write #N$00 to *#REGiy+#N$00.
  $AE7C,$03 Call #R$ADBA.
  $AE7F,$0A Write #N$00 to: #LIST { *#REGiy+#N$37 } { *#REGiy+#N$3C } { *#REGiy+#N$46 } LIST#
  $AE89,$01 Return.

c $AE8A
  $AE8A,$02 #REGd=#N$00.
  $AE8C,$03 #REGbc=#N$21FF.
  $AE8F,$03 #REGhl=#R$BCE9.

  $AE97,$04 Increment #REGhl by four.
  $AE9B,$01 Increment #REGc by one.

  $AE9F,$01 Return.

  $AEA0,$02 #REGc=#N$FF.
  $AEA2,$01 Increment #REGhl by one.
  $AEA3,$01 Increment #REGd by one.
  $AEA4,$02 Decrease counter by one and loop back to #R$AE92 until counter is zero.
  $AEA6,$01 Return.

b $AEA7
  $AED1

c $AED7

b $AF10

b $AF22 Platform Data
@ $AF22 label=Data_Platform_0
N $AF22 Platform 0.
  $AF22,$01 Terminator.
N $AF23 Platform 1.
@ $AF23 label=Data_Platform_1
  $AF23,$30,$03
  $AF53,$01 Terminator.
N $AF54 Platform 2.
@ $AF54 label=Data_Platform_2
  $AF54,$0F,$03
  $AF63,$01 Terminator.
N $AF64 Platform 3.
@ $AF64 label=Data_Platform_3
  $AF64,$03
  $AF67,$01 Terminator.
N $AF68 Platform 4.
@ $AF68 label=Data_Platform_4
  $AF68,$09,$03
  $AF71,$01 Terminator.
N $AF72 Platform 5.
@ $AF72 label=Data_Platform_5
  $AF72,$09,$03
  $AF7B,$01 Terminator.
N $AF7C Platform 6.
@ $AF7C label=Data_Platform_6
  $AF7C,$01 Terminator.
N $AF7D Platform 7.
@ $AF7D label=Data_Platform_7
  $AF7D,$06,$03
  $AF83,$01 Terminator.
N $AF84 Platform 8.
@ $AF84 label=Data_Platform_8
  $AF84,$03
  $AF87,$01 Terminator.
N $AF88 Platform 9.
@ $AF88 label=Data_Platform_9
  $AF88,$06,$03
  $AF8E,$01 Terminator.

w $AF8F Table: Platform Data
@ $AF8F label=Table_PlatformData
  $AF8F,$02 Platform #R(#PEEK(#PC)+#PEEK(#PC+$01)*$100)(#N((#PC-$AF8F)/$02)).
L $AF8F,$02,$0A

b $AFA3 Table: Room Platforms
@ $AFA3 label=Table_RoomPlatforms
  $AFA3,$01 #LET(room=#PC-$AFA3)#IF(#PEEK(#PC)>$00)(Platform #R($AF8F+#PEEK(#PC)*$02)(#N(#PEEK(#PC))) present in Room:,No platforms present in Room:) #R($CDB5+{room}*$02)(#N({room})).
L $AFA3,$01,$21

c $AFC4
  $AFC4,$04 Write #N$01 to *#REGiy+#N$37.
  $AFC8,$04 #REGe=current room ID (*#REGiy+#N$0F).
  $AFCC,$02 #REGd=#N$00.
  $AFCE,$04 #REGhl=#R$AFA3+#REGde.
  $AFD2,$03 #REGe=*#REGhl*#N$02.
  $AFD5,$04 #REGhl=#R$AF8F+#REGde.

  $AFF1,$02 Jump to #R$AFE7.

  $B00A,$01 Return.

c $B00B Controls: Right
@ $B00B label=Controls_Right
R $B00B O:A #N$00 for no press and #N$01 for pressed
  $B00B,$06 If #R$B2DB is zero then jump to #R$B028.
  $B011,$04 If #R$B2DB is not #N$01 then jump to #R$B01D.
N $B015 Handle Kempston Joystick.
  $B015,$02 Read from Kempston Joystick.
  $B017,$04 If bit 0 is not set/ "RIGHT" is being pressed then jump to #R$B025.
  $B01B,$02 Jump to #R$B03A.
N $B01D Handle Sinclair Joystick.
@ $B01D label=Controls_Right_Sinclair
  $B01D,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$EF | 0 | 9 | 8 | 7 | 6 }
. TABLE#
  $B021,$04 If bit 3 is not set jump to #R$B03A.
N $B025 Key was pressed so return #REGa=#N$01.
@ $B025 label=Controls_Pressed_Right
  $B025,$02 #REGa=#N$01.
  $B027,$01 Return.
N $B028 Handle Keyboard controls.
@ $B028 label=Controls_Right_Keyboard
  $B028,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$FB | Q | W | E | R | T }
. TABLE#
N $B02C Filter out the keys leaving only: W and R.
  $B02C,$02,b$01 Set bits 0, 2, 4-7.
  $B02E,$01 Store the result in #REGb.
  $B02F,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$DF | P | O | I | U | Y }
. TABLE#
N $B033 Filter out the keys leaving only: P, I and Y.
  $B033,$02,b$01 Set bits 1, 3, 5-7.
  $B035,$01 Merge in the bits from #REGb.
  $B036,$04 If the result is not #N$FF jump to #R$B025.
N $B03A No key was pressed so return #REGa=#N$00.
@ $B03A label=Controls_NoPress_Right
  $B03A,$01 #REGa=#N$00.
  $B03B,$01 Return.

c $B03C Controls: Left
@ $B03C label=Controls_Left
R $B03C O:A #N$00 for no press and #N$01 for pressed
  $B03C,$06 If #R$B2DB is zero then jump to #R$B059.
  $B042,$04 If #R$B2DB is not #N$01 then jump to #R$B04E.
N $B046 Handle Kempston Joystick.
  $B046,$02 Read from Kempston Joystick.
  $B048,$04 If bit 1 is not set/ "LEFT" is being pressed then jump to #R$B056.
  $B04C,$02 Jump to #R$B06B.
N $B04E Handle Sinclair Joystick.
@ $B04E label=Controls_Left_Sinclair
  $B04E,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$EF | 0 | 9 | 8 | 7 | 6 }
. TABLE#
  $B052,$04 If bit 4 is not set jump to #R$B06B.
N $B056 Key was pressed so return #REGa=#N$01.
@ $B056 label=Controls_Pressed_Left
  $B056,$02 #REGa=#N$01.
  $B058,$01 Return.
N $B059 Handle Keyboard controls.
@ $B059 label=Controls_Left_Keyboard
  $B059,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$FB | Q | W | E | R | T }
. TABLE#
N $B05D Filter out the keys leaving only: Q, E and T.
  $B05D,$02,b$01 Set bits 1, 3, 5-7.
  $B05F,$01 Store the result in #REGb.
  $B060,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$DF | P | O | I | U | Y }
. TABLE#
N $B064 Filter out the keys leaving only: O and U.
  $B064,$02,b$01 Set bits 0, 2, 4-7.
  $B066,$01 Merge in the bits from #REGb.
  $B067,$04 If the result is not #N$FF jump to #R$B056.
N $B06B No key was pressed so return #REGa=#N$00.
@ $B06B label=Controls_NoPress_Left
  $B06B,$01 #REGa=#N$00.
  $B06C,$01 Return.

c $B06D Controls: Jump
@ $B06D label=Controls_Jump
R $B06D O:A #N$00 for no press and #N$01 for pressed
  $B06D,$06 If #R$B2DB is zero then jump to #R$B08A.
  $B073,$04 If #R$B2DB is not #N$01 then jump to #R$B080.
N $B077 Handle Kempston Joystick.
  $B077,$02 Read from Kempston Joystick.
  $B079,$04 If bit 4 is set/ "FIRE" is being pressed then jump to #R$B09B.
N $B07D Key was pressed so return #REGa=#N$01.
@ $B07D label=Controls_Pressed_Jump
  $B07D,$02 #REGa=#N$01.
  $B07F,$01 Return.
N $B080 Handle Sinclair Joystick.
@ $B080 label=Controls_Jump_Sinclair
  $B080,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$EF | 0 | 9 | 8 | 7 | 6 }
. TABLE#
  $B084,$04 If bit 0 is set jump to #R$B07D.
  $B088,$02 Jump to #R$B09B.
N $B08A Handle Keyboard controls.
@ $B08A label=Controls_Jump_Keyboard
  $B08A,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$FE | SHIFT | Z | X | C | V }
. TABLE#
  $B08E,$01 Store the result in #REGb.
  $B08F,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$7F | SPACE | FULL-STOP | M | N | B }
. TABLE#
  $B093,$01 Merge in the bits from #REGb.
N $B094 Fill in the "blanks".
  $B094,$02,b$01 Set bits 5-7.
N $B096 If there's been any keypress at all then #REGa won't be #N$FF.
  $B096,$05 If the result is not #N$FF jump to #R$B07D.
N $B09B No key was pressed so return #REGa=#N$00.
@ $B09B label=Controls_NoPress_Jump
  $B09B,$01 #REGa=#N$00.
  $B09C,$01 Return.

g $B09D Current Character Pointer
@ $B09D label=CurrentCharacter
D $B09D Will be one of: #LIST #FOR($00,$04)(n,{ #R($BC67+n)(#CHARACTERn data.) }) LIST#
W $B09D,$02 Points to the base of where the interlaced character data begins.

c $B09F
  $B09F,$04 #REGiy=*#R$B09D.
  $B0A3,$06 Write *#REGiy+#N$0F to #R$B951.
  $B0A9,$03 Call #R$AFC4.

  $B0BA,$03 Call #R$B06D.

  $B0C5,$03 Call #R$B00B.

  $B0D3,$03 Jump to #R$B288.
  $B0D6,$03 Call #R$B03C.

  $B0DB,$04 Write #N$FF to *#REGiy+#N$3C.
  $B0DF,$04 Write #N$FF to *#REGiy+#N$41.
  $B0E3,$03 Jump to #R$B288.

c $B0E6 Draws Sprites To The Shadow Buffer
@ $B0E6 label=WriteSprite_ShadowBuffer
  $B0E6,$01 Switch to the shadow registers.
  $B0E7,$03 #REGe=*#REGiy+#N$23.
  $B0EA,$03 #REGd=*#REGiy+#N$28.
  $B0ED,$04 Write #REGsp to #R$A83B.
  $B0F1,$03 #REGh=*#REGiy+#N$00.
  $B0F4,$02 #REGl=#N$00.

  $B0FC,$04 #REGb=*#REGiy+#N$05.
  $B100,$02,b$01 Keep only bits 0-2.
N $B102 Self-modifying code.
  $B102,$03 Write #REGa to #R$B188(#N$B189).

  $B10D,$02,b$01 Keep only bits 3-7.

N $B112 Self-modifying code.
  $B112,$03 Write #REGa to #R$B17A(#N$B17B).

  $B166,$02,b$01 Keep only bits 0-2.
N $B16E Characters are #N$04 characters tall.
  $B16E,$02 #REGb=#N$04 (counter).
  $B170,$03 #REGa=*#REGiy+#N$0A.
  $B173,$02,b$01 Keep only bits 3-7.
  $B175,$03 Create an offset in #REGhl.
  $B178,$06 #REGhl=#R$FB00+(#REGhl*#N$04).
  $B17E,$03 #REGde=#N($001E,$04,$04).
N $B181 Grab the characters attribute byte.
  $B181,$03 #REGc=*#REGiy+#N$1E.
  $B184,$01 Write the attribute byte to the attribute buffer (*#REGhl).
  $B185,$01 Increment #REGhl by one.
  $B186,$01 Write the attribute byte to the attribute buffer (*#REGhl).
  $B187,$01 Increment #REGhl by one.

N $B188 This is modified from #R$B102.
  $B188,$02 #REGb=#N$FF.

  $B191,$01 Switch to the normal registers.
  $B192,$04 Restore #REGsp from #R$A83B.
  $B196,$01 Return.

c $B197
  $B1A5,$01 Return.

c $B1A6

  $B1B9,$07 If #REGiy+#N$3C is #N$01 jump to #R$B21C.
  $B1C0,$07 #REGe=(*#REGiy+#N$4B)*#N$03.
  $B1C7,$02 #REGd=#N$00.
  $B1C9,$04 #REGhl=#R$B264+#REGde.


  $B1E1,$02,b$01 Keep only bits 0-2.

  $B1E5,$04 Write #N$0B to #REGiy+#N$4B.
  $B1E9,$02 #REGb=#N$00.
  $B1EB,$02 Jump to #R$B205.

  $B201,$04 Write #N$00 to #REGiy+#N$05.
  $B205,$03 Write #REGb to #REGiy+#N$00.

  $B211,$04 Write #N$00 to #REGiy+#N$3C.
  $B215,$04 Write #N$00 to #REGiy+#N$46.
  $B219,$03 Jump to #R$E315.
  $B21C,$07 #REGe=(*#REGiy+#N$4B)*#N$03.
  $B223,$02 #REGd=#N$00.
  $B225,$04 #REGhl=#R$B264+#REGde.

  $B23D,$02,b$01 Keep only bits 0-2.

  $B241,$04 Write #N$0B to #REGiy+#N$4B.
  $B245,$02 #REGb=#N$00.
  $B247,$02 Jump to #R$B205.

  $B25F,$02 #REGa=#N$F0.
  $B261,$03 Jump to #R$B202.
B $B264,$24,$03

c $B288
  $B288,$03 Call #R$A921.
  $B28B,$02
  $B28D,$08
  $B295,$08

  $B2C1,$02 #REGa=#N$F0.
  $B2C3,$03 Jump to #R$B2D5.

  $B2D8,$03 Jump to #R$E2FC.

g $B2DB Game Options
@ $B2DB label=Game_Options
D $B2DB Holds the control method.
. #TABLE(default,centre,centre)
. { =h Byte | =h Option }
. { #N$00 | Keyboard }
. { #N$01 | Kempston Joystick }
. { #N$02 | Sinclair Joystick }
. TABLE#
B $B2DB,$01

c $B2DC Set Game Options
@ $B2DC label=Game_Options_Sinclair
N $B2DC Sets the game option for the Sinclair Joystick controller.
  $B2DC,$05 Write #N$02 to #R$B2DB.
  $B2E1,$01 Return.
N $B2E2 Sets the game option for the Kempston Joystick controller.
@ $B2E2 label=Game_Options_Kempston
  $B2E2,$05 Write #N$01 to #R$B2DB.
  $B2E7,$01 Return.
N $B2E8 Sets the game option for keyboard controls.
@ $B2E8 label=Game_Options_Keyboard
  $B2E8,$04 Write #N$00 to #R$B2DB.
  $B2EC,$01 Return.

b $B2ED

w $B2EF
  $B2EF,$02

c $B2F1 Print Wages
@ $B2F1 label=PrintWages
  $B2F1,$03 Call #R$B8ED.
  $B2F4,$03 #REGde=#N$010A.
  $B2F7,$03 #REGhl=#R$7C1B.
  $B2FA,$03 Call #R$B8C4.
  $B2FD,$02 Stash #REGiy on the stack.
  $B2FF,$03 #REGde=#N$0513.
N $B302 There are #N$05 characters (#REGb counter) and the attribute is #N$45 (#REGc #COLOUR$45).
  $B302,$03 #REGbc=#N$0545.
  $B305,$03 #REGhl=#R$B2ED.
  $B308,$04 #REGiy=#R$BC67.
  $B30C,$04 #REGix=#R$B2ED.
  $B310,$04 Write #N$00 to *#REGix+#N$00.
  $B314,$04 Write #N$00 to *#REGix+#N$01.
@ $B318 label=PrintWages_Loop
  $B318,$03 #REGa=*#REGiy-#N$0A.
  $B31B,$03 Write #REGa to *#REGix+#N$01.

  $B332,$03 Call #R$B34C.
  $B335,$03 Increment #REGd by three.
  $B338,$02 Increment #REGiy by one.
  $B33A,$02 Decrease counter by one and loop back to #R$B318 until counter is zero.
  $B33C,$02 Restore #REGiy from the stack.
  $B33E,$02 #REGd=#N$15.
  $B340,$03 #REGhl=#R$B2EF.
  $B343,$02 #REGe=#N$11.
  $B345,$03 Call #R$B34C.
  $B348,$03 Jump to #R$B3AB.

g $B34B Flag: Money Helper
@ $B34B label=Flag_MoneyHelper
D $B34B This is #N$00 until a digit has been written. It's used to suppress writing leading #N$00's so the output is "£ 10" instead of "£010".
B $B34B,$01 Either #N$00 or #N$01.

c $B34C Print Earnings
@ $B34C label=PrintEarnings
R $B34C C Initial colour attribute value
R $B34C DE Screen co-ordinates
R $B34C HL Pointer to money earned memory location
  $B34C,$03 Stash #REGhl, #REGbc and #REGde on the stack.
N $B34F Print (or don't print) the equals sign:
.       #UDGTABLE { #UDG($DFDC+$3D*$08,attr=$45) } UDGTABLE#
.       When called by #R$B451 the attribute for this is #N$00 (#COLOUR$00 and so, is invisible).
  $B34F,$02 #REGa=#N$3D.
  $B351,$03 Call #R$B715.
N $B354 Move one character block to the right.
  $B354,$01 Increment #REGe by one.
N $B355 Print the GBP pounds sign.
.       #UDGTABLE { #UDG($DFDC+$26*$08,attr=$42) } UDGTABLE#
  $B355,$02 #REGc=#N$42 (#COLOUR$42).
  $B357,$02 #REGa=#N$26.
  $B359,$03 Call #R$B715.
N $B35C Move one character block to the right.
  $B35C,$01 Increment #REGe by one.
N $B35D Initialise the leading zero suppression flag. See #R$B34B for details.
  $B35D,$04 Write #N$00 to #R$B34B.
N $B361 Set the attribute for all the money digits.
  $B361,$02 #REGc=#N$45 (#COLOUR$45).
N $B363 Money is stored as two digits.
  $B363,$02 #REGb=#N$02 (counter).
N $B365 Fetch the money digit.
@ $B365 label=PrintEarnings_Loop
  $B365,$01 #REGa=*#REGhl.
  $B366,$08 Shift and rotate the upper bits to be the lower bits.
N $B36E Convert the number into ASCII ready for printing to the screen.
N $B36E Add ASCII "0" - so for example #N$01 ends up being
.       #N$01 + #N$30 = #N$31 (e.g. "1" in ASCII).
  $B36E,$02 #REGa+=#N$30.
N $B370 If the resulting number is not zero, then it needs to be printed to the screen.
  $B370,$04 If #REGa is not #N$30 jump to #R$B37C.
N $B374 And, if it is zero - print it, unless the leading zero suppression flag says otherwise.
  $B374,$06 If #R$B34B is zero jump to #R$B384.
N $B37A Set the following printed character to be zero:
.       #UDGTABLE { #UDG($DFDC+$30*$08,attr=$45) } UDGTABLE#
  $B37A,$02 #REGa=#N$30.
@ $B37C label=PrintEarnings_Print_Upper
  $B37C,$03 Call #R$B715.
N $B37F Indicate that we have written a digit.
  $B37F,$05 Write #N$01 to #R$B34B.
N $B384 Move one character block to the right.
@ $B384 label=PrintEarnings_Skip
  $B384,$01 Increment #REGe by one.
N $B385 Refresh the money byte. We've processed the upper bits already and now we want to process the lower bits.
  $B385,$01 #REGa=*#REGhl.
  $B386,$02,b$01 Keep only bits 0-3.
N $B388 As above; add ASCII "0".
  $B388,$02 #REGa+=#N$30.
N $B38A If the resulting number is not zero, then it needs to be printed to the screen.
  $B38A,$04 If #REGa is not #N$30 jump to #R$B39B.
N $B38E Force some output if everything is zero.
  $B38E,$05 If #REGb (the counter) is #N$01 jump to #R$B399.
N $B393 If nothing has been printed yet just skip to the next money byte.
  $B393,$06 If #R$B34B is zero jump to #R$B3A3.
N $B399 #UDGTABLE { #UDG($DFDC+$30*$08,attr=$45) } UDGTABLE#
@ $B399 label=PrintEarnings_Print_Zero
  $B399,$02 #REGa=#N$30.
@ $B39B label=PrintEarnings_Print_Lower
  $B39B,$03 Call #R$B715.
  $B39E,$05 Write #N$01 to #R$B34B.
N $B3A3 Move one character block to the right.
@ $B3A3 label=PrintEarnings_NextByte
  $B3A3,$01 Increment #REGe by one.
N $B3A4 Move onto the next money byte.
  $B3A4,$01 Increment #REGhl by one.
  $B3A5,$02 Decrease counter by one and loop back to #R$B365 until counter is zero.
N $B3A7 Restore all the previous registers and return.
  $B3A7,$03 Restore #REGde, #REGbc and #REGhl from the stack.
  $B3AA,$01 Return.

c $B3AB Press Any Key
@ $B3AB label=PressAnyKey
N $B3AB Test for a keypress...
  $B3AB,$01 #REGa=#N$00.
  $B3AC,$02 Check for keyboard input.
  $B3AE,$02,b$01 Set bits 5-7.
  $B3B0,$04 If the result is not #N$FF jump to #R$B3AB.
N $B3B4 Test for a key release...
@ $B3B4 label=PressAnyKey_Debounce
  $B3B4,$01 #REGa=#N$00.
  $B3B5,$02 Check for keyboard input.
  $B3B7,$02,b$01 Set bits 5-7.
  $B3B9,$04 If the result is #N$FF jump to #R$B3B4.
  $B3BD,$01 Return.

c $B3BE
B $B3BE,$05
  $B3C3,$03 #REGde=#N$131C.
  $B3C6,$03 #REGhl=#R$CCF2.
  $B3C9,$03 Call #R$B82B.
  $B3CC,$04 #REGiy=#R$BC67.
  $B3D0,$03 #REGhl=#R$B3BE.
  $B3D3,$02 #REGb=#N$05.
  $B3D5,$01 Stash #REGbc on the stack.
  $B3D6,$04 Write #N$98 to #REGiy+#N$0A.
  $B3DA,$06
  $B3E0,$01 Stash #REGaf on the stack.

  $B430,$03 #REGde=#N($0400,$04,$04).
  $B433,$03 #REGhl=#R$7E68.
  $B436,$03 Call #R$B84B.
  $B439,$03 Call #R$B3AB.
  $B43C,$03 Call #R$B8ED.
  $B43F,$03 #REGde=#N($0002,$04,$04).
  $B442,$03 #REGhl=#R$7C76.
  $B445,$03 Call #R$B8C4.
  $B448,$03 Call #R$B3AB.
  $B44B,$03 Call #R$B2F1.
  $B44E,$03 Jump to #R$8184.

c $B451 Game Over
@ $B451 label=GameOver
  $B451,$03 Call #R$B8ED.
N $B454 Print the total gang earnings.
  $B454,$03 #REGhl=#R$ECFE.
  $B457,$03 #REGde=#N$080A (screen co-ordinates).
N $B45A Hide the first character, it's not relevant for this page.
  $B45A,$02 #REGc=#N$00 (#COLOUR$00).
  $B45C,$03 Call #R$B34C.
  $B45F,$03 #REGhl=#R$7D48.
  $B462,$03 #REGde=#N$0504.
  $B465,$03 Call #R$B8C4.
  $B468,$03 Call #R$B3AB.
  $B46B,$03 Call #R$B2F1.
  $B46E,$03 Jump to #R$8184.

c $B471 Initialise Theme Music
@ $B471 label=Initialise_Theme_Music
  $B471,$01 Disable interrupts.
  $B472,$06 Write #R$B560 to #R$B4E7.
  $B478,$05 Write #N$FF to #R$B4E9.
  $B47D,$04 Write #N$00 to #R$B55F.
  $B481,$01 Return.

c $B482 Check Music
@ $B482 label=Check_Music
N $B482 If the music is still playing, jump ahead to #R$B494.
  $B482,$03 #REGhl=*#R$B4E7.
N $B485 Retrieve music data (the terminator is #N$00).
  $B485,$01 #REGa=*#REGhl.
  $B486,$03 If #REGa is not zero jump to #R$B494.
N $B489 Music has finished, so kick off demo mode.
  $B489,$05 Write #N$01 to #R$B55F.
  $B48E,$05 Write #N$FF to #R$B4E9.
  $B493,$01 Return.

c $B494 Handler: Theme Music
@ $B494 label=ThemeMusic
R $B494 A Music data
R $B494 HL Music data address pointer
  $B494,$01 Increment music data address pointer held in #REGhl by one.
N $B495 The control character #N$FE signifies a key change.
  $B495,$04 If #REGa is not #N$FE jump to #R$B4A2.
  $B499,$01 #REGa=#N$00.
@ $B49A label=ThemeMusic_SetKey
  $B49A,$03 Write #REGa to #R$B4EA.
  $B49D,$03 Write #REGhl to #R$B4E7.
  $B4A0,$02 Jump to #R$B482.
N $B4A2 The control character #N$FF signifies a key change.
@ $B4A2 label=ThemeMusic_CheckKeyChange
  $B4A2,$04 If #REGa is not #N$FF jump to #R$B4AA.
  $B4A6,$02 #REGa=#N$01.
  $B4A8,$02 Jump to #R$B49A.

  $B4AA,$01 Stash #REGaf on the stack.
  $B4AB,$01 #REGa=*#REGhl.
  $B4AC,$01 Increment music data address pointer held in #REGhl by one.
  $B4AD,$03 Write #REGhl to #R$B4E7.
  $B4B0,$03 If #REGa is zero jump to #R$B4DB.
  $B4B3,$03 Create an offset in #REGhl.
  $B4B6,$01 #REGhl*=#N$02.
  $B4B7,$04 #REGhl+=#R$B537.
  $B4BB,$01 #REGc=*#REGhl.
  $B4BC,$02 #REGb=#N$00.
  $B4BE,$01 Increment music data address pointer held in #REGhl by one.
  $B4BF,$01 #REGe=*#REGhl.
  $B4C0,$01 #REGd=#N$00.
  $B4C1,$01 Restore #REGaf from the stack.
  $B4C2,$04 #REGhl+=#N($0000,$04,$04).
  $B4C6,$01 Decrease #REGa by one.
  $B4C7,$02 Jump to #R$B4C5 until #REGa is zero.
  $B4C9,$01 Switch the #REGde and #REGhl registers.
  $B4CA,$03 Call #R$B505.
  $B4CD,$03 #REGa=*#R$B4E9.
  $B4D0,$03 Return if #REGa is not #N$FF.
  $B4D3,$03 #REGbc=#N$0320.
  $B4D6,$03 Call #R$B4EB.
  $B4D9,$02 Jump to #R$B482.
  $B4DB,$03 #REGbc=#N$19C8.
  $B4DE,$01 Restore #REGaf from the stack.
  $B4DF,$03 Call #R$B4EB.
  $B4E2,$01 Decrease #REGa by one.
  $B4E3,$02 Jump to #R$B4DF until #REGa is zero.
  $B4E5,$02 Jump to #R$B4D3.

w $B4E7 Music Data Pointer
@ $B4E7 label=Pointer_MusicData
  $B4E7,$02

g $B4E9 Temporary Storage: Game Options
@ $B4E9 label=TempStore_GameOptions
B $B4E9,$01

g $B4EA Flag: Theme Music Key Change
@ $B4EA label=Flag_ThemeMusic_KeyChange
B $B4EA,$01

c $B4EB Handler: Game Menu Input
@ $B4EB label=Handler_GameMenuInput
R $B4EB BC Counter for a slight pause
  $B4EB,$03 Stash #REGaf, #REGbc and #REGde on the stack.
@ $B4EE label=Handler_GameMenuInput_Pause
  $B4EE,$01 Decrease #REGbc by one.
  $B4EF,$04 Jump to #R$B4EE until #REGbc is #N($0000,$04,$04).
N $B4F3 Collect the user input.
  $B4F3,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$F7 | 1 | 2 | 3 | 4 | 5 }
. TABLE#
N $B4F7 Pad out the bits we're not interested in (only keys 1, 2, 3 and 4).
  $B4F7,$02,b$01 Set bits 4-7.
  $B4F9,$01 Store the result in #REGe.
  $B4FA,$03 #REGa=*#R$B4E9.
  $B4FD,$01 Merge in the bits from #REGe.
  $B4FE,$03 Write #REGa to *#R$B4E9.
  $B501,$03 Restore #REGde, #REGbc and #REGaf from the stack.
  $B504,$01 Return.

c $B505 Play Theme Music
@ $B505 label=Play_ThemeMusic
  $B505,$06 If #R$B4EA is zero jump to #R$B50F.
  $B50B,$01 #REGh=#REGb.
  $B50C,$01 #REGl=#REGc.
  $B50D,$02 Jump to #R$B520.
@ $B50F label=Play_ThemeMusic_KeyChange
  $B50F,$01 #REGh=#REGb.
  $B510,$01 #REGl=#REGc.
  $B511,$02
  $B513,$02
  $B515,$01 #REGhl+=#REGbc.
  $B516,$02
  $B518,$02
  $B51A,$01 #REGhl+=#REGbc.
  $B51B,$02
  $B51D,$02
  $B51F,$01 #REGhl+=#REGbc.
N $B520 Flip speaker on (set bit 4).
M $B520,$04 #REGa=#N$10 (speaker on = bit 4).
@ $B520 label=Play_ThemeMusic_Sound
  $B520,$02,b$01
  $B522,$02
  $B524,$03 Call #R$B4EB.
N $B527 Flip speaker off (unset bit 4).
M $B527,$03 #REGa=#N$00 (speaker off).
  $B527,$01
  $B528,$02
  $B52A,$01 Stash #REGbc on the stack.
  $B52B,$01 #REGb=#REGh.
  $B52C,$01 #REGc=#REGl.
  $B52D,$03 Call #R$B4EB.
  $B530,$01 Restore #REGbc from the stack.
  $B531,$01 Decrease #REGde by one.
  $B532,$04 Jump to #R$B520 until #REGde is zero.
  $B536,$01 Return.

b $B537

g $B55F Flag: Demo Mode
@ $B55F label=Flag_DemoMode
B $B55F,$01

b $B560 Theme Music Data
@ $B560 label=Data_ThemeTune
  $B560,$01 Control character: "Normal".
  $B59B,$01 Control character: "High".
  $B620,$01 Control character: "Normal".
  $B68D,$01 Control character: "High".
  $B6D0,$01 Control character: "Normal".
  $B713,$02,$01 Terminator.

c $B715 Print Colour String
@ $B715 label=PrintStringColour
R $B715 C Attribute colour
  $B715,$06 Stash #REGaf, #REGix, #REGhl, #REGbc and #REGde on the stack.
  $B71B,$01 Exchange the #REGde and #REGhl registers.
  $B71C,$01 Stash #REGhl on the stack.
  $B71D,$02 #REGd=#N$58.
  $B71F,$01 #REGe=#REGl.
  $B720,$01 #REGl=#REGh.
  $B721,$02 #REGh=#N$00.

  $B72A,$01 Stash #REGde on the stack.
  $B72B,$04 #REGhl+=#N($0020,$04,$04).
  $B72F,$01 Restore #REGde from the stack.
  $B730,$01 Write #REGc to *#REGhl.
  $B731,$01 Restore #REGhl from the stack.
  $B732,$01 #REGl=#REGh.
  $B733,$02 #REGd=#N$00.
  $B735,$01 #REGh=#REGd.
  $B736,$01 #REGc=#REGe.
  $B737,$01 #REGb=#REGd.
  $B738,$04 #REGhl*=#N$10.
  $B73C,$03 #REGbc=#R$81F8.

  $B749,$04 #REGhl+=#R$DFDC.

  $B774,$06 Restore #REGde, #REGbc, #REGhl, #REGix and #REGaf from the stack.
  $B77A,$01 Return.

c $B77B Draw Character Item Graphics
@ $B77B label=DrawCharacterItemGraphics
R $B77B A The item ID
R $B77B DE Screen co-ordinate for printing the item
N $B77B Stash all the registers.
  $B77B,$04 Push #REGaf, #REGhl, #REGbc and #REGde on the stack.
  $B77F,$01 #REGc=#REGe.
  $B780,$01 #REGl=#REGd.
N $B781 Set #REGb, #REGd and #REGh to #N$00.
  $B781,$02 #REGd=#N$00.
  $B783,$01 #REGh=#REGd.
  $B784,$01 #REGb=#REGd.
  $B785,$04 #REGhl*=#N$10.
  $B789,$04 #REGhl+=#R$81F8.
  $B78D,$03 #REGix=#REGhl.
N $B790 Look up the item graphics data.
  $B790,$03 Create an offset for the item graphics data in #REGhl.
N $B793 All items are 2x2 (so #N$02 bytes width * #N$10 bytes high).
  $B793,$05 #REGhl*=#N$20.
  $B798,$04 #REGhl+=#R$8378.
  $B79C,$01 Switch the #REGde and #REGhl registers.
N $B79D Draw the item graphic to the screen.
  $B79D,$02 #REGa=#N$10 (height of items).
@ $B79F label=DrawPossesions_Loop
  $B79F,$06 #REGhl=the screen address from #REGix.
  $B7A5,$01 #REGhl+=#REGbc.
N $B7A6 Move onto the next line down.
  $B7A6,$04 Increment #REGix by two.
  $B7AA,$01 Switch the #REGde and #REGhl registers.
  $B7AB,$04 Blit two bytes of item graphics to the screen buffer.
  $B7AF,$01 Switch the #REGde and #REGhl registers.
  $B7B0,$02 Increment #REGbc by two.
  $B7B2,$01 Decrease #REGa by one.
  $B7B3,$02 Jump to #R$B79F until #REGa is zero.
N $B7B5 Restore all the registers and return.
  $B7B5,$04 Restore #REGde, #REGbc, #REGhl and #REGaf from the stack.
  $B7B9,$01 Return.

c $B7BA Draw Sprite Block To Screen
@ $B7BA label=DrawSprite
R $B7BA DE Screen Buffer Co-ordinates
R $B7BA HL Sprite data
R $B7BA A Sprite ID
R $B7BA C Sprite attribute value
  $B7BA,$04 Stash #REGaf, #REGhl, #REGbc and #REGde on the stack.
  $B7BE,$01 Exchange the #REGde and #REGhl registers.
  $B7BF,$01 Stash #REGhl on the stack.
  $B7C0,$02 #REGd=#N$58.
  $B7C2,$01 #REGe=#REGl.
  $B7C3,$01 #REGl=#REGh.
  $B7C4,$02 #REGh=#N$00.
  $B7C6,$06 #REGhl=(#REGhl*#N$20)+#REGde.
  $B7CC,$01 Write #REGc to *#REGhl.
  $B7CD,$01 Restore #REGhl from the stack.
  $B7CE,$01 #REGl=#REGh.
  $B7CF,$02 #REGd=#N$00.
  $B7D1,$01 #REGh=#REGd.
  $B7D2,$01 Stash #REGde on the stack.
  $B7D3,$04 #REGhl*=#N$10.
  $B7D7,$04 #REGhl+=#R$81F8.
  $B7DB,$01 #REGe=*#REGhl.
  $B7DC,$01 Increment #REGhl by one.
  $B7DD,$01 #REGd=*#REGhl.
  $B7DE,$01 Switch the #REGde and #REGhl registers.
  $B7DF,$01 Restore #REGde from the stack.
  $B7E0,$01 #REGhl+=#REGde.
  $B7E1,$01 Switch the #REGde and #REGhl registers.
  $B7E2,$03 Create an offset in #REGhl.
  $B7E5,$03 #REGhl*=#N$08.
N $B7E8 This is modified from #R$B872.
  $B7E8,$04 #REGhl+=#R$DFDC.
  $B7EC,$02 #REGb=#N$08 (counter).
@ $B7EE label=DrawSprite_Loop
  $B7EE,$02 Copy a byte from *#REGhl and write it to *#REGde.
  $B7F0,$01 Increment #REGhl by one.
  $B7F1,$01 Increment #REGd by one.
  $B7F2,$02 Decrease counter by one and loop back to #R$B7EE until counter is zero.
  $B7F4,$04 Restore #REGde, #REGbc, #REGhl and #REGaf from the stack.
  $B7F8,$01 Return.

c $B7F9
  $B7F9,$04 Stash #REGaf, #REGhl, #REGbc and #REGde on the stack.
  $B7FD,$01 Switch the #REGde and #REGhl registers.
  $B7FE,$01 Stash #REGhl on the stack.
  $B7FF,$02 #REGd=#N$FD.
  $B801,$01 #REGe=#REGl.
  $B802,$01 #REGl=#REGh.
  $B803,$02 #REGh=#N$00.
  $B805,$06 #REGhl*=(#N$20)+#REGde.
  $B80B,$01 Write #REGc to *#REGhl.
  $B80C,$01 Restore #REGhl from the stack.
  $B80D,$04 #REGhl+=#R$5300.
  $B811,$01 Switch the #REGde and #REGhl registers.
  $B812,$03 Create an offset in #REGhl.
  $B815,$03 #REGhl*=#N$08.
  $B818,$05 #REGhl+=*#R$B7E8(#N$B7E9).
  $B81D,$02 Write *#REGhl to *#REGde, increment both #REGde and #REGhl by one, and decrease #REGbc by one.
  $B81F,$01 Decrease #REGb by one.
  $B820,$04 #REGe+=#N$20.
  $B824,$02
  $B826,$04 Restore #REGde, #REGbc, #REGhl and #REGaf from the stack.
  $B82A,$01 Return.

c $B82B Switch Sprite Drawing Functions
@ $B82B label=Switch_DrawSprite_Functions
  $B82B,$01 Stash #REGhl on the stack.
  $B82C,$0C Write #R$B7F9 to: #LIST { #R$B8BD(#N$B8BE) } { #R$B8B4(#N$B8B5) } { #R$B894(#N$B895) } LIST#
  $B838,$01 Restore #REGhl from the stack.
  $B839,$03 Call #R$B84B.
  $B83C,$01 Stash #REGhl on the stack.
  $B83D,$0C Write #R$B7BA to: #LIST { #R$B894(#N$B895) } { #R$B8BD(#N$B8BE) } { #R$B8B4(#N$B8B5) } LIST#
  $B849,$01 Restore #REGhl from the stack.
  $B84A,$01 Return.

c $B84B Handler: Graphics Controller
@ $B84B label=Controller_Tile
R $B84B DE Screen cursor commands
R $B84B HL Pointer to graphics data
  $B84B,$01 #REGa=*#REGhl.
  $B84C,$01 Increment #REGhl by one.
  $B84D,$04 If #REGa is lower than #N$80, jump to #R$B8BD.
N $B851 Return if the terminator is reached.
  $B851,$03 Return if #REGa is the terminator (#N$FF).
N $B854 Check for the #N$FE control character. This signifies that the subsequent byte is the colour attribute.
  $B854,$04 If #REGa is not #N$FE, jump to #R$B85C.
  $B858,$01 #REGc=*#REGhl (set the attribute).
  $B859,$01 Increment #REGhl by one.
  $B85A,$02 Jump to #R$B84B.
N $B85C If the value is between #N$A8-#N$E8 then it is screen co-ordinates.
@ $B85C label=Controller_Tile_Screen_Instructions
  $B85C,$04 If #REGa is lower than #N$A8, jump to #R$B8BD.
  $B860,$04 If #REGa is higher than #N$E8, jump to #R$B86E.
N $B864 Remove the control number, then we're left with the desired screen co-ordinate data updates.
  $B864,$04 #REGe=(#REGa-#N$C8)+#REGe.
  $B868,$03 #REGd+=*#REGhl.
  $B86B,$01 Increment #REGhl by one.
  $B86C,$02 Jump to #R$B84B.
N $B86E Check for the #N$FB control character. This signifies that the following two bytes should be set as the sprite bank address.
@ $B86E label=Controller_Tile_Bank
  $B86E,$04 If #REGa is not #N$FB, jump to #R$B87E.
  $B872,$04 Write *#REGhl to #R$B7E8(#N$B7E9).
  $B876,$01 Increment #REGhl by one.
  $B877,$04 Write *#REGhl to #R$B7E8(#N$B7EA).
  $B87B,$01 Increment #REGhl by one.
  $B87C,$02 Jump to #R$B84B.

N $B87E Check for the #N$F1 control character. This signifies that the screen location should move down one block.
@ $B87E label=Controller_Tile_Check_Move_Down
  $B87E,$04 If #REGa is #N$F1, jump to #R$B8C0.

N $B882 Check for the #N$F3 control character. This alters the current message pointer (#REGhl).
  $B882,$04 If #REGa is not #N$F3, jump to #R$B88C.
  $B886,$01 #REGa=*#REGhl.
  $B887,$01 Increment #REGhl by one.
  $B888,$01 #REGh=*#REGhl.
  $B889,$01 #REGl=#REGa.
  $B88A,$02 Jump to #R$B84B.

N $B88C Anything from here involves repetition.
@ $B88C label=Controller_Tile_Repeaters
  $B88C,$01 #REGb=*#REGhl (counter).
  $B88D,$01 Increment #REGhl by one.
N $B88E Check for the #N$F0 control character.
. Tile sprite to the screen vertically, the number of times indicated in #REGb.
  $B88E,$04 If #REGa is not #N$F0, jump to #R$B89C.
  $B892,$01 #REGa=*#REGhl.
  $B893,$01 Increment #REGhl by one.
@ $B894 label=Controller_Tile_Vertical_Loop
  $B894,$03 Call #R$B7BA.
  $B897,$01 Increment #REGd by one.
  $B898,$02 Decrease counter by one and loop back to #R$B894 until counter is zero.
  $B89A,$02 Jump to #R$B84B.

N $B89C Check for the #N$F2 control character.
  $B89C,$04 If #REGa is not #N$F2, jump to #R$B8B2.

  $B8B0,$02 Jump to #R$B84B.

N $B8B2 Tile sprite to the screen horizontally, the number of times indicated in #REGb.
@ $B8B2 label=Controller_Tile_Horizontal
  $B8B2,$01 #REGa=*#REGhl.
  $B8B3,$01 Increment #REGhl by one.
@ $B8B4 label=Controller_Tile_Horizontal_Loop
  $B8B4,$03 Call #R$B7BA.
N $B8B7 Move to the next screen buffer column.
  $B8B7,$01 Increment #REGe by one.
  $B8B8,$02 Decrease counter by one and loop back to #R$B8B4 until counter is zero.
  $B8BA,$03 Jump to #R$B84B.

N $B8BD Draw a tile, and move the screen position down one character block.
@ $B8BD label=Controller_Tile_Draw_Move_Down
  $B8BD,$03 Call #R$B7BA.
@ $B8C0 label=Controller_Tile_Move_Down
  $B8C0,$01 Increment #REGe by one.
  $B8C1,$03 Jump to #R$B84B.

c $B8C4 Print String
@ $B8C4 label=PrintString
R $B8C4 DE Screen co-ordinates
R $B8C4 HL Message address
  $B8C4,$01 #REGa=*#REGhl.
  $B8C5,$01 Increment #REGhl by one.
  $B8C6,$04 If #REGa is higher than #N$80, jump to #R$B8E7.
N $B8CA Return if we've reached the terminator (#N$FF).
  $B8CA,$03 If #REGa is #N$FF then return.
N $B8CD If the current byte is our control byte (#N$FE) - we grab the next byte and store it in #REGc and then loop back to the start.
  $B8CD,$04 If #REGa is not #N$FE, jump to #R$B8D5.
  $B8D1,$01 #REGc=*#REGhl.
  $B8D2,$01 Increment #REGhl by one.
  $B8D3,$02 Jump to #R$B8C4.
N $B8D5 Any other data is processed from here.
  $B8D5,$04 If #REGa is higher than #N$A8, jump to #R$B8E7.
  $B8D9,$04 If #REGa is lower than #N$E8, jump to #R$B8E7.
  $B8DD,$02 #REGa-=#N$C8.
  $B8DF,$02 #REGe=#REGa+#REGe.
  $B8E1,$03 #REGd+=*#REGhl.
  $B8E4,$01 Increment #REGhl by one.
  $B8E5,$02 Jump to #R$B8C4.

  $B8E7,$03 Call #R$B715.
  $B8EA,$01 Increment #REGe by one.
  $B8EB,$02 Jump to #R$B8C4.

c $B8ED Clear Screen
@ $B8ED label=Clear_Screen
  $B8ED,$0D Clear the screen buffer.
  $B8FA,$07 Write #N$46 (#COLOUR$46) to the entire attribute buffer.
  $B901,$01 Return.

c $B902 Clear Play Area
@ $B902 label=Clear_PlayArea
  $B902,$03 Stash #REGhl, #REGbc and #REGde on the stack.
  $B905,$04 #REGix=#R$8248.
  $B909,$02 #REGc=#N$98.
  $B90B,$03 #REGl=#REGix+#N$00.
  $B90E,$03 #REGh=#REGix+#N$01.
  $B911,$02 #REGb=#N$20.

  $B91F,$03 #REGhl=#R$58A0.
  $B922,$03 #REGbc=#N$0260.
  $B925,$02 Write #N$46 to #REGhl (#COLOUR$46).
  $B927,$01 Increment #REGhl by one.
  $B928,$01 Decrease #REGbc by one.
  $B929,$04 Jump to #R$B925 until #REGbc is zero.
@ $B92D label=StackRestore
  $B92D,$03 Restore #REGde, #REGbc and #REGhl from the stack.
  $B930,$01 Return.

c $B931 Clear Banner
@ $B931 label=Clear_Banner
  $B931,$03 Stash #REGhl, #REGbc and #REGde on the stack.
  $B934,$04 #REGix=#R$81F8.
N $B938 We're not clearing the whole screen buffer, just #N$20 rows.
  $B938,$02 #REGc=#N$20 (row counter).
N $B93A Fetch the screen buffer location.
@ $B93A label=Clear_Banner_Vertical_Loop
  $B93A,$03 #REGl=*#REGix+#N$00.
  $B93D,$03 #REGh=*#REGix+#N$01.
N $B940 Clear the current row.
  $B940,$02 #REGb=#N$20 (column counter).
@ $B942 label=Clear_Banner_Horizontal_Loop
  $B942,$02 Write #N$00 to #REGhl.
  $B944,$01 Increment #REGhl by one.
  $B945,$02 Decrease column counter by one and loop back to #R$B942 until counter is zero.
N $B947 Move onto the next screen buffer location.
  $B947,$04 Increment #REGix by two.
  $B94B,$01 Decrease the row counter held in #REGc by one.
  $B94C,$02 Jump to #R$B93A until #REGc is zero.
  $B94E,$03 Jump to #R$B92D.

g $B951 Temporary Storage: Room ID
@ $B951 label=TempStore_Room
B $B951,$01

c $B952 Draw Room
@ $B952 label=DrawRoom
  $B952,$05 Write #N$B8 to #R$AF88.
  $B957,$03 Call #R$B902.
N $B95A Get the current room ID and double it. This is stored in #REGde as an offset.
  $B95A,$05 #REGe=(*#REGiy+#N$0F)*#N$02.
  $B95F,$02 #REGd=#N$00.
  $B961,$04 #REGhl=#R$CDB5+#REGde.
N $B965 Fetch the room data location from the lookup table.
  $B965,$01 #REGe=*#REGhl.
  $B966,$01 Increment #REGhl by one.
  $B967,$01 #REGd=*#REGhl.
  $B968,$01 Exchange the #REGde and #REGhl registers.
N $B969 #HTML(Fetch a room data pair and store it in #REGde. Note, this is <em>not</em> a memory address.)
@ $B969 label=DrawRoom_Loop
  $B969,$01 #REGd=*#REGhl.
  $B96A,$01 Increment #REGhl by one.
  $B96B,$01 #REGe=*#REGhl.
  $B96C,$01 Increment #REGhl by one.
N $B96D Drop bit 7 of #REGd and test for the control characters.
  $B96D,$01 #REGa=#REGd.
  $B96E,$02,b$01 Keep only bits 0-6.
N $B970 Are we done?
  $B970,$04 If the result is #N$7F jump to #R$B9A8.
N $B974 Some parts of rooms are dynamic (depending on if a task is completed or not), check if this should be actioned.
  $B974,$04 If the result is not #N$7E jump to #R$B982.
N $B978 Fetch the task ID.
  $B978,$01 #REGa=#REGe.
  $B979,$03 Call #R$EC1D.
  $B97C,$02 If the task is not complete, jump to #R$B969.
N $B97E Move onto the next room data pair.
  $B97E,$02 Increment #REGhl by two.
  $B980,$02 Jump to #R$B969.
N $B982 Pull out the screen co-ordinates and graphics address.
@ $B982 label=DrawRoom_ProcessData
  $B982,$01 Stash the room data pointer held by #REGhl on the stack.
  $B983,$01 #REGb=#REGa.
N $B984 Grab the second byte from the room data pair, this contains both the x and y cursor position commands.
N $B984 Y is essentially #REGc=bits 3-7 of the second byte of the room data, shifted to bits 0-4. This is assigned to
.       #REGe at #R$B995 below.
  $B984,$01 #REGa=#REGe.
  $B985,$02,b$01 Keep only bits 3-7.
  $B987,$03 Rotate #REGa right three times.
  $B98A,$01 #REGc=#REGa.
N $B98B Todo.
  $B98B,$02 Rotate #REGd left once.
  $B98D,$02 Rotate #REGe left once.
  $B98F,$01 #REGa=#REGe.
  $B990,$02,b$01 Keep only bits 0-3.
  $B992,$03 #REGd=#REGa+#N$05.
  $B995,$01 #REGe=#REGc.
N $B996 The offset below for the graphic ID is created using the first byte with bit 7 from #R$B96D and #R$B983.
  $B996,$01 #REGl=#REGb.
  $B997,$02 #REGh=#N$00.
  $B999,$01 #REGhl*=#N$02.
  $B99A,$04 #REGhl+=#R$BD86.
N $B99E Fetch the graphics control data from the lookup table.
  $B99E,$01 #REGa=*#REGhl.
  $B99F,$01 Increment #REGhl by one.
  $B9A0,$01 #REGh=*#REGhl.
  $B9A1,$01 #REGl=#REGa.
  $B9A2,$03 Call #R$B84B.
  $B9A5,$01 Restore the room data pointer held by #REGhl from the stack.
  $B9A6,$02 Jump to #R$B969.
N $B9A8 Finish by blitting the shadow buffer to the screen and return to the calling routine.
@ $B9A8 label=DrawRoom_Finish
  $B9A8,$03 Call #R$B9AC.
  $B9AB,$01 Return.

c $B9AC
  $B9AC,$03 #REGde=#N$5B00.
  $B9AF,$04 #REGix=#R$8278.
  $B9B3,$03 #REGbc=#N$1000 (bytes of data).
N $B9B6 Fetch the screen buffer from the look up table held by #REGix.
  $B9B6,$03 #REGl=*#REGix+#N$00.
  $B9B9,$03 #REGh=*#REGix+#N$01.
  $B9BC,$04 Increment #REGix by two.
  $B9C0,$03 Call #R$BA25.
  $B9C3,$03 Jump to #R$B9B6 until #REGbc is zero.
  $B9C6,$03 #REGbc=#N$0200 (bytes of data).
  $B9C9,$03 #REGde=#R$FE00.
  $B9CC,$03 #REGhl=#R$5900.
  $B9CF,$03 Call #R$BA25.
  $B9D2,$03 Jump to #R$B9CF until #REGbc is zero.
  $B9D5,$01 Return.

c $B9D6 Draw Characters In The Current Room
@ $B9D6 label=Draw_Characters_CurrentRoom
N $B9D6 Write the current room ID for referring back to.
  $B9D6,$06 Write the current room (#REGiy+#N$0F) to #R$B951.
N $B9DC There are five characters, cycle through each of them in reverse.
  $B9DC,$02 #REGb=#N$05 (counter).
N $B9DE Store the current character reference so it isn't corrupted.
  $B9DE,$02 Stash #REGiy on the stack.
N $B9E0 Starting at the end with Harry.
  $B9E0,$04 #REGiy=#R$BC6B.
@ $B9E4 label=Draw_Characters_CurrentRoom_Loop
  $B9E4,$01 Stash the counter in #REGbc on the stack.
N $B9E5 Don't draw the character if they're not in the current room.
  $B9E5,$03 #REGa=*#R$B951.
  $B9E8,$05 If #REGa is not equal to the current room (*#REGiy+#N$0F) jump to #R$B9F0.
N $B9ED Draw the character in the shadow buffer as they are in the room with our current character.
  $B9ED,$03 Call #R$B0E6.
N $B9F0 Move onto the next character.
@ $B9F0 label=Draw_Characters_CurrentRoom_Skip
  $B9F0,$02 Decrease #REGiy by one.
  $B9F2,$01 Restore the counter (#REGbc) from the stack.
  $B9F3,$02 Decrease counter by one and loop back to #R$B9E4 until counter is zero.
N $B9F5 Restores the current character pointer to #REGiy.
  $B9F5,$02 Restore #REGiy from the stack.
N $B9F7 Update the screen buffer and return.
  $B9F7,$03 Call #R$B9FB.
  $B9FA,$01 Return.

c $B9FB Copy Shadow Buffer To Screen
@ $B9FB label=ShadowBufferToScreen
N $B9FB Copy the shadow screen buffer to the playarea (beginning at memory location #N$4800).
  $B9FB,$03 #REGhl=#R$6B00.
  $B9FE,$04 #REGix=#R$8278.
  $BA02,$03 #REGbc=#N$1000 (bytes of data).
N $BA05 Fetch the screen buffer from the look up table held by #REGix.
@ $BA05 label=ShadowBufferToScreen_Loop
  $BA05,$03 #REGe=*#REGix+#N$00.
  $BA08,$03 #REGd=*#REGix+#N$01.
  $BA0B,$04 Increment #REGix by two.
  $BA0F,$03 Call #R$BA25.
  $BA12,$03 Jump to #R$BA05 until #REGbc is zero.
N $BA15 Copy the shadow attribute buffer to the attribute buffer.
  $BA15,$03 #REGbc=#N$0200 (bytes of data).
  $BA18,$03 #REGhl=#R$FC00.
  $BA1B,$03 #REGde=#R$5900.
@ $BA1E label=ShadowBufferToScreen_Attributes_Loop
  $BA1E,$03 Call #R$BA25.
  $BA21,$03 Jump to #R$BA1E until #REGbc is zero.
  $BA24,$01 Return.

c $BA25 Copy Routine
@ $BA25 label=CopyRoutine
  $BA25,$40 #HTML(Runs:
. <code><div> LD (#REGde),(#REGhl)</div>
. <div>DEC #REGbc</div>
. </code> #N$20 times.)
  $BA65,$01 Return.

t $BA66 Messaging: Is In
@ $BA66 label=Messaging_IsIn
  $BA66,$07 #UDGTABLE { #FONT:( IS IN )$E0DC,attr=$4E(is-in) } UDGTABLE#
B $BA6D,$01 Terminator.

c $BA6E Handler: Display Character Location
@ $BA6E label=Handler_DisplayCharacterLocation
N $BA6E When a character switch is attempted but the character is not in the current room, this routine shows the
.       current location of the chosen character.
N $BA6E For example:
. #UDGTABLE
. { #FONT:(WALLY IS IN THE TOWN SQUARE)$E0DC,attr=$4E(wally-is-in-the-town-square) }
. { #FONT:(WILMA IS IN PENNY LANE)$E0DC,attr=$4E(wilma-is-in-penny-lane) }
. { #FONT:(TOM IS IN THE PUB)$E0DC,attr=$4E(tom-is-in-the-pub) }
. { #FONT:(DICK IS IN THE DOCKS)$E0DC,attr=$4E(dick-is-in-the-docks) }
. { #FONT:(HARRY IS IN THE SUPER MARKET)$E0DC,attr=$4E(harry-is-in-the-super-market) }
. UDGTABLE#
N $BA6E Return if the messaging is already showing.
  $BA6E,$05 Return if *#R$BAB3 is not zero.
N $BA73 Set the appropriate UDG base address (#R$DFDC).
  $BA73,$06 Write #R$DFDC to *#R$B7E8(#N$B7E9).
N $BA79 Fetch the current room for the active character.
  $BA79,$03 #REGa=*#REGiy+#N$0F (current room).
N $BA7C Find the room name from the room ID.
N $BA7C As the room names vary in length (and there's no lookup table), we call #R$AC6C, which counts through each
.       terminator (#N$FF) to find the related room label memory location.
  $BA7C,$03 #REGhl=#R$7F1F.
  $BA7F,$03 Call #R$AC6C.
  $BA82,$01 Stash the room name memory address (#REGhl) on the stack.
N $BA83 Fetch the length of the room name.
  $BA83,$03 Call #R$BACE.
  $BA86,$01 #REGc=length of the room name.
N $BA87 Fetch the character name.
  $BA87,$02 #REGh=#N$7C.
  $BA89,$03 #REGl=*#REGiy-#N$23.
  $BA8C,$01 Stash the character name memory address (#REGhl) on the stack.
N $BA8D Fetch the length of the character name.
  $BA8D,$03 Call #R$BACE.
N $BA90 Hold the length of all the segments in #REGc (#N$07 is the length of " IS IN ").
  $BA90,$05 #REGc=#N$07+#REGb+#REGc.
  $BA95,$03 #REGa=#N$20-#REGc.
  $BA98,$02 Shift and rotate #REGa left one bit.
N $BA9A Set this to the screen co-ordinates held in #REGde.
  $BA9A,$01 #REGe=#REGa.
  $BA9B,$02 #REGd=#N$04.
N $BA9D Retrieve the character name label memory location.
  $BA9D,$01 Restore #REGhl from the stack.
  $BA9E,$02 #REGc=#N$4E (#COLOUR$4E).
  $BAA0,$03 Call #R$B84B.
N $BAA3 Prints " IS IN " to the screen.
  $BAA3,$03 #REGhl=#R$BA66.
  $BAA6,$03 Call #R$B84B.
N $BAA9 Retrieve the room label memory location.
  $BAA9,$01 Restore #REGhl from the stack.
N $BAAA Print the room name to the screen.
  $BAAA,$03 Call #R$B84B.
N $BAAD Kick off a countdown for showing the messaging for a brief period of time.
  $BAAD,$05 Write #N$1E to #R$BAB3.
  $BAB2,$01 Return.

g $BAB3 Messaging Countdown
D $BAB3 Initialised to #N$1E at #R$BAAD and the countdown is made by #R$BAB4.
@ $BAB3 label=MessagingCountdown
B $BAB3,$01

c $BAB4 Redraws Banner Underline
@ $BAB4 label=Redraw_Banner_Underline
  $BAB4,$03 #REGhl=#R$BAB3.
N $BAB7 Return if the "Character Is In Place" messaging countdown has already finished (i.e. is zero).
  $BAB7,$01 #REGa=*#REGhl.
  $BAB8,$02 Return if #REGa is zero.
N $BABA Take one away from the countdown count.
  $BABA,$01 Decrease *#REGhl by one.
N $BABB Return if the countdown is still "in-progress".
  $BABB,$01 Return if the result is not zero.
N $BABC If the countdown is now zero, refresh/ redraw the banner (which the messaging overlays).
  $BABC,$02 #REGc=#N$42 (#COLOUR$42).
  $BABE,$06 Write #R$DFDC to #R$B7E8(#N$B7E9).
  $BAC4,$03 #REGde=#N$0400 (screen co-ordinates).
  $BAC7,$03 #REGhl=#R$7E68.
  $BACA,$03 Call #R$B84B.
  $BACD,$01 Return.

c $BACE Helper: Count Bytes To Terminator
@ $BACE label=CountBytesToTerminator
R $BACE HL Data to examine
R $BACE O:B Number of bytes till the terminator
  $BACE,$02 #REGb=#N$00.
@ $BAD0 label=CountBytesToTerminator_Loop
  $BAD0,$01 #REGa=*#REGhl.
  $BAD1,$03 If #REGa is #N$FF then return.
  $BAD4,$01 Increment #REGb by one.
  $BAD5,$01 Increment #REGhl by one.
  $BAD6,$02 Jump to #R$BAD0.

c $BAD8 Game Initialisation
@ $BAD8 label=Game_Initialisation
  $BAD8,$04 #REGiy=#R$BC67.
  $BADC,$04 Write #REGiy to #R$B09D.
  $BAE0,$03 #REGhl=#R$BB3E.
  $BAE3,$03 #REGde=#R$BCE9.
  $BAE6,$02 #REGb=#N$1F (counter).
  $BAE8,$01 Stash #REGbc on the stack.
  $BAE9,$01 #REGa=*#REGde.
  $BAEA,$04 If #REGa is not the terminator (#N$FF) jump to #R$BAF1.
  $BAEE,$01 Increment #REGde by one.
  $BAEF,$02 Jump to #R$BAE9.

  $BAF1,$02
  $BAF3,$02 Increment #REGde by two.
  $BAF5,$02
  $BAF7,$01 Restore #REGbc from the stack.
  $BAF8,$02 Decrease counter by one and loop back to #R$BAE8 until counter is zero.

  $BAFA,$03 #REGbc=#N($00AF,$04,$04).
  $BAFD,$03 #REGhl=#R$BB7C.
  $BB00,$03 #REGde=#R$BC30.
  $BB03,$02

  $BB05,$0A Write #N$00 to: #LIST { #R$ECF5 } { #R$ECFE } { #R$ECFF } LIST#
  $BB0F,$04 Write #N$01 to #R$EDC5.
  $BB13,$05 Write #N$14 to #R$F9F4.
  $BB18,$05 Write #N$28 to #R$F5BE.
  $BB1D,$05 Write #N$3C to #R$F5C2.
  $BB22,$05 Write #N$20 to #R$F5C6.

  $BB27,$03 #REGhl=#R$EC5C.
  $BB2A,$02 #REGb=#N$20 (counter).
  $BB2C,$02 Write #N$00 to *#REGhl.
  $BB2E,$03 Increment #REGhl by three.
  $BB31,$02 Decrease counter by one and loop back to #R$BB2C until counter is zero.

  $BB33,$03 #REGhl=#R$EC0F.
  $BB36,$02 #REGb=#N$0E.
  $BB38,$02 Write #N$00 to *#REGhl.
  $BB3A,$01 Increment #REGhl by one.
  $BB3B,$02 Decrease counter by one and loop back to #R$BB38 until counter is zero.

  $BB3D,$01 Return.

b $BB3E

b $BB7C

b $BC30

g $BC67 Character: Frame ID
@ $BC67 label=FrameId_Wally
@ $BC68 label=FrameId_Wilma
@ $BC69 label=FrameId_Tom
@ $BC6A label=FrameId_Dick
@ $BC6B label=FrameId_Harry
B $BC67,$01 Current Frame ID for #CHARACTER(#PC-$BC67).
L $BC67,$01,$05

g $BC6C Character: X Screen Position
@ $BC6C label=Position_X_Wally
@ $BC6D label=Position_X_Wilma
@ $BC6E label=Position_X_Tom
@ $BC6F label=Position_X_Dick
@ $BC70 label=Position_X_Harry
B $BC6C,$01 X position for #CHARACTER(#PC-$BC6C).
L $BC6C,$01,$05

g $BC71 Character: Y Screen Position
@ $BC71 label=Position_Y_Wally
@ $BC72 label=Position_Y_Wilma
@ $BC73 label=Position_Y_Tom
@ $BC74 label=Position_Y_Dick
@ $BC75 label=Position_Y_Harry
B $BC71,$01 Y position for #CHARACTER(#PC-$BC71).
L $BC71,$01,$05

g $BC76 Character: Current Room ID
@ $BC76 label=CurrentRoom_Wally
@ $BC77 label=CurrentRoom_Wilma
@ $BC78 label=CurrentRoom_Tom
@ $BC79 label=CurrentRoom_Dick
@ $BC7A label=CurrentRoom_Harry
B $BC76,$01 Current room ID for #CHARACTER(#PC-$BC76).
L $BC76,$01,$05

g $BC7B
B $BC7B,$01 #CHARACTER(#PC-$BC7B).
L $BC7B,$01,$05

g $BC80
B $BC80,$01 #CHARACTER(#PC-$BC80).
L $BC80,$01,$05

g $BC85 Character: Colour Attribute
@ $BC85 label=Attribute_Wally
@ $BC86 label=Attribute_Wilma
@ $BC87 label=Attribute_Tom
@ $BC88 label=Attribute_Dick
@ $BC89 label=Attribute_Harry
B $BC85,$01 #CHARACTER(#PC-$BC85) colour attribute: #COLOUR(#PEEK(#PC)).
L $BC85,$01,$05

g $BC8A
B $BC8A,$01 #CHARACTER(#PC-$BC8A).
L $BC8A,$01,$05

g $BC8F
B $BC8F,$01 #CHARACTER(#PC-$BC8F).
L $BC8F,$01,$05

g $BC94 Character: Lives
@ $BC94 label=Lives_Wally
@ $BC95 label=Lives_Wilma
@ $BC96 label=Lives_Tom
@ $BC97 label=Lives_Dick
@ $BC98 label=Lives_Harry
B $BC94,$01 Current lives for #CHARACTER(#PC-$BC94).
L $BC94,$01,$05

g $BC99
B $BC99,$01 #CHARACTER(#PC-$BC99).
L $BC99,$01,$05

g $BC9E
B $BC9E,$01 #CHARACTER(#PC-$BC9E).
L $BC9E,$01,$05
B $BCA3,$01 #CHARACTER(#PC-$BCA3).
L $BCA3,$01,$05

g $BCA8
B $BCA8,$01 #CHARACTER(#PC-$BCA8).
L $BCA8,$01,$05
B $BCAD,$01 #CHARACTER(#PC-$BCAD).
L $BCAD,$01,$05
B $BCB2,$01 #CHARACTER(#PC-$BCB2).
L $BCB2,$01,$05

g $BCB7 Character: Items
@ $BCB7 label=Item_1_Wally
@ $BCB8 label=Item_1_Wilma
@ $BCB9 label=Item_1_Tom
@ $BCBA label=Item_1_Dick
@ $BCBB label=Item_1_Harry
B $BCB7,$01 Item 1 for #CHARACTER(#PC-$BCB7).
L $BCB7,$01,$05
@ $BCBC label=Item_2_Wally
@ $BCBD label=Item_2_Wilma
@ $BCBE label=Item_2_Tom
@ $BCBF label=Item_2_Dick
@ $BCC0 label=Item_2_Harry
B $BCBC,$01 Item 2 for #CHARACTER(#PC-$BCBC).
L $BCBC,$01,$05

g $BCC1

b $BCE9 Item Data
N $BCE9 Items in room #N$00: Town Square.
@ $BCE9 label=Items_TownSquare
  $BCE9,$01 Terminator.
N $BCEA Items in room #N$01: Stamp Street.
@ $BCEA label=Items_StampStreet
  $BCEA,$01 Terminator.
N $BCEB Items in room #N$02: The Post Office.
@ $BCEB label=Items_ThePostOffice
  $BCEB,$04 Item ID: #N(#PEEK(#PC)).
  $BCEF,$01 Terminator.
N $BCF0 Items in room #N$03: Market Street.
@ $BCF0 label=Items_MarketStreet
  $BCF0,$01 Terminator.
N $BCF1 Items in room #N$04: The Super Market.
@ $BCF1 label=Items_TheSuperMarket
  $BCF1,$04 Item ID: #N(#PEEK(#PC)).
  $BCF5,$04 Item ID: #N(#PEEK(#PC)).
  $BCF9,$01 Terminator.
N $BCFA Items in room #N$05: The Park.
@ $BCFA label=Items_ThePark
  $BCFA,$04 Item ID: #N(#PEEK(#PC)).
  $BCFE,$01 Terminator.
N $BCFF Items in room #N$06: Wobbly Walk.
@ $BCFF label=Items_WobblyWalk
  $BCFF,$01 Terminator.
N $BD00 Items in room #N$07: Rubble Road.
@ $BD00 label=Items_RubbleRoad
  $BD00,$01 Terminator.
N $BD01 Items in room #N$08: Wall Street.
@ $BD01 label=Items_WallStreet
  $BD01,$04 Item ID: #N(#PEEK(#PC)).
  $BD05,$04 Item ID: #N(#PEEK(#PC)).
  $BD09,$01 Terminator.
N $BD0A Items in room #N$09: Pete Street.
  $BD0A,$04 Item ID: #N(#PEEK(#PC)).
  $BD0E,$01 Terminator.
N $BD0F Items in room #N$0A: The Work Shed.
  $BD0F,$04 Item ID: #N(#PEEK(#PC)).
  $BD13,$04 Item ID: #N(#PEEK(#PC)).
  $BD17,$04 Item ID: #N(#PEEK(#PC)).
  $BD1B,$01 Terminator.
N $BD1C Items in room #N$0B: School Lane.
  $BD1C,$04 Item ID: #N(#PEEK(#PC)).
  $BD20,$01 Terminator.
N $BD21 Items in room #N$0C: The School.
  $BD21,$04 Item ID: #N(#PEEK(#PC)).
  $BD25,$01 Terminator.
N $BD26 Items in room #N$0D: Baker Street.
@ $BD26 label=Items_BakerStreet
  $BD26,$01 Terminator.
N $BD27 Items in room #N$0E: The Bakers.
  $BD27,$04 Item ID: #N(#PEEK(#PC)).
  $BD2B,$01 Terminator.
N $BD2C Items in room #N$0F: The Pub.
  $BD2C,$04 Item ID: #N(#PEEK(#PC)).
  $BD30,$01 Terminator.
N $BD31 Items in room #N$10: Motor Way.
  $BD31,$01 Terminator.
N $BD32 Items in room #N$11: The Laboratory.
  $BD32,$04 Item ID: #N(#PEEK(#PC)).
  $BD36,$04 Item ID: #N(#PEEK(#PC)).
  $BD3A,$01 Terminator.
N $BD3B Items in room #N$12: The Garage.
  $BD3B,$04 Item ID: #N(#PEEK(#PC)).
  $BD3F,$01 Terminator.
N $BD40 Items in room #N$13: Reference Road.
  $BD40,$01 Terminator.
N $BD41 Items in room #N$14: The Library.
  $BD41,$04 Item ID: #N(#PEEK(#PC)).
  $BD45,$04 Item ID: #N(#PEEK(#PC)).
  $BD49,$04 Item ID: #N(#PEEK(#PC)).
  $BD4D,$01 Terminator.
N $BD4E Items in room #N$15: Penny Lane.
  $BD4E,$01 Terminator.
N $BD4F Items in room #N$16: The Bank.
  $BD4F,$04 Item ID: #N(#PEEK(#PC)).
  $BD53,$01 Terminator.
N $BD54 Items in room #N$17: Wally's House.
  $BD54,$04 Item ID: #N(#PEEK(#PC)).
  $BD58,$01 Terminator.
N $BD59 Items in room #N$18: Meat Street.
  $BD59,$01 Terminator.
N $BD5A Items in room #N$19: The Butchers.
@ $BD5A label=Items_TheButchers
  $BD5A,$04 Item ID: #N(#PEEK(#PC)).
  $BD5E,$04 Item ID: #N(#PEEK(#PC)).
  $BD62,$01 Terminator.
N $BD63 Items in room #N$1A: Trunk Road.
  $BD63,$01 Terminator.
N $BD64 Items in room #N$1B: The Zoo.
  $BD64,$04 Item ID: #N(#PEEK(#PC)).
  $BD68,$01 Terminator.
N $BD69 Items in room #N$1C: Rail Road.
  $BD69,$01 Terminator.
N $BD6A Items in room #N$1D: The Station.
  $BD6A,$04 Item ID: #N(#PEEK(#PC)).
  $BD6E,$01 Terminator.
N $BD6F Items in room #N$1E: The Docks.
  $BD6F,$04 Item ID: #N(#PEEK(#PC)).
  $BD73,$04 Item ID: #N(#PEEK(#PC)).
  $BD77,$01 Terminator.
N $BD78 Items in room #N$1F: The Sewer.
  $BD78,$04 Item ID: #N(#PEEK(#PC)).
  $BD7C,$01 Terminator.
N $BD7D Items in room #N$20: The Cave.
  $BD7D,$04 Item ID: #N(#PEEK(#PC)).
  $BD81,$04 Item ID: #N(#PEEK(#PC)).
  $BD85,$01 Terminator.

b $BD86 Table: Graphic Data
@ $BD86 label=Table_GraphicData
W $BD86,$02 Graphic ID: #R(#PEEK(#PC)+#PEEK(#PC+$01)*$100)(#N((#PC-$BD86)/$02)).
L $BD86,$02,$76

b $BE72 Graphic ID #N$70
@ $BE72 label=graphic_70
M $BE72,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BE72,$01
W $BE73,$02
  $BE75,$02 Attribute: #COLOUR(#PC+$01)
  $BE77,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E034,attr=$46) } UDGTABLE#
  $BE78,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E034,attr=$46) } UDGTABLE#
  $BE79,$01 Action: move down one character block.
  $BE7A,$01 Action: move down one character block.
  $BE7B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E05C,attr=$46) } UDGTABLE#
  $BE7C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BE7E,$02 Attribute: #COLOUR(#PC+$01)
  $BE80,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E04C,attr=$42) } UDGTABLE#
  $BE81,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E054,attr=$42) } UDGTABLE#
  $BE82,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BE84,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E03C,attr=$42) } UDGTABLE#
  $BE85,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E044,attr=$42) } UDGTABLE#
  $BE86,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BE88,$02 Attribute: #COLOUR(#PC+$01)
M $BE8A,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BE8A,$01
W $BE8B,$02
  $BE8D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E08C,attr=$46) } UDGTABLE#
  $BE8E,$01 Terminator.

b $BE8F Graphic ID #N$57
@ $BE8F label=graphic_57
M $BE8F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BE8F,$01
W $BE90,$02
  $BE92,$02 Attribute: #COLOUR(#PC+$01)
  $BE94,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D23C,attr=$44) } UDGTABLE#
  $BE95,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c23 Columns } { #FOR$01,$17(n,=h #Nn, | ) }
. { #FOR$01,$17(n,#UDG($D20C,attr=$44), | ) }
. UDGTABLE#
  $BE98,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D214,attr=$44) })
. UDGTABLE#
  $BE9B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D21C,attr=$44) } UDGTABLE#
  $BE9C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BE9E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D224,attr=$44) } UDGTABLE#
M $BE9F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BE9F,$01
W $BEA0,$02
  $BEA2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9F4,attr=$44) } UDGTABLE#
  $BEA3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$44) } UDGTABLE#
  $BEA4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9FC,attr=$44) } UDGTABLE#
  $BEA5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9F4,attr=$44) } UDGTABLE#
  $BEA6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$44) } UDGTABLE#
  $BEA7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$44) } UDGTABLE#
  $BEA8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$44) } UDGTABLE#
  $BEA9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9FC,attr=$44) } UDGTABLE#
  $BEAA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9F4,attr=$44) } UDGTABLE#
  $BEAB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$44) } UDGTABLE#
  $BEAC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$44) } UDGTABLE#
  $BEAD,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$44) } UDGTABLE#
  $BEAE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9FC,attr=$44) } UDGTABLE#
  $BEAF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9F4,attr=$44) } UDGTABLE#
  $BEB0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$44) } UDGTABLE#
  $BEB1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$44) } UDGTABLE#
  $BEB2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$44) } UDGTABLE#
  $BEB3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9FC,attr=$44) } UDGTABLE#
  $BEB4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9F4,attr=$44) } UDGTABLE#
  $BEB5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$44) } UDGTABLE#
  $BEB6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$44) } UDGTABLE#
  $BEB7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$44) } UDGTABLE#
  $BEB8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9FC,attr=$44) } UDGTABLE#
  $BEB9,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $BEBB,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BEBB,$01
W $BEBC,$02
  $BEBE,$02 Attribute: #COLOUR(#PC+$01)
  $BEC0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6BC,attr=$47) } UDGTABLE#
  $BEC1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6C4,attr=$47) } UDGTABLE#
  $BEC2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6C4,attr=$47) } UDGTABLE#
  $BEC3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6BC,attr=$47) } UDGTABLE#
  $BEC4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6C4,attr=$47) } UDGTABLE#
  $BEC5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6C4,attr=$47) } UDGTABLE#
  $BEC6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6BC,attr=$47) } UDGTABLE#
  $BEC7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6C4,attr=$47) } UDGTABLE#
  $BEC8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6C4,attr=$47) } UDGTABLE#
  $BEC9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6BC,attr=$47) } UDGTABLE#
  $BECA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6C4,attr=$47) } UDGTABLE#
  $BECB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6C4,attr=$47) } UDGTABLE#
  $BECC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6BC,attr=$47) } UDGTABLE#
  $BECD,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6C4,attr=$47) } UDGTABLE#
  $BECE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6C4,attr=$47) } UDGTABLE#
  $BECF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6BC,attr=$47) } UDGTABLE#
  $BED0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6C4,attr=$47) } UDGTABLE#
  $BED1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6C4,attr=$47) } UDGTABLE#
  $BED2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6BC,attr=$47) } UDGTABLE#
  $BED3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6C4,attr=$47) } UDGTABLE#
  $BED4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6C4,attr=$47) } UDGTABLE#
  $BED5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6BC,attr=$47) } UDGTABLE#
  $BED6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6C4,attr=$47) } UDGTABLE#
  $BED7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6C4,attr=$47) } UDGTABLE#
  $BED8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6CC,attr=$47) } UDGTABLE#
  $BED9,$01 Terminator.

b $BEDA Graphic ID #N$58
@ $BEDA label=graphic_58
M $BEDA,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BEDA,$01
W $BEDB,$02
  $BEDD,$02 Attribute: #COLOUR(#PC+$01)
  $BEDF,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($DDD4,attr=$43) })
. UDGTABLE#
  $BEE2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DDDC,attr=$43) } UDGTABLE#
  $BEE3,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BEE5,$02 Attribute: #COLOUR(#PC+$01)
  $BEE7,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($DDD4,attr=$45) })
. UDGTABLE#
  $BEEA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DDDC,attr=$45) } UDGTABLE#
  $BEEB,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BEED,$02 Attribute: #COLOUR(#PC+$01)
  $BEEF,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($DDD4,attr=$42) })
. UDGTABLE#
  $BEF2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DDDC,attr=$42) } UDGTABLE#
  $BEF3,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BEF5,$02 Attribute: #COLOUR(#PC+$01)
  $BEF7,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($DDD4,attr=$46) })
. UDGTABLE#
  $BEFA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DDDC,attr=$46) } UDGTABLE#
  $BEFB,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BEFD,$02 Attribute: #COLOUR(#PC+$01)
  $BEFF,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($DDE4,attr=$47), | ) }
. UDGTABLE#
  $BF02,$01 Terminator.

b $BF03 Graphic ID #N$59
@ $BF03 label=graphic_59
M $BF03,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BF03,$01
W $BF04,$02
  $BF06,$02 Attribute: #COLOUR(#PC+$01)
  $BF08,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DDEC,attr=$47), | ) }
. UDGTABLE#
  $BF0B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $BF0D,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BF0D,$01
W $BF0E,$02
  $BF10,$02 Attribute: #COLOUR(#PC+$01)
  $BF12,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1BC,attr=$43) } UDGTABLE#
  $BF13,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1C4,attr=$43) } UDGTABLE#
  $BF14,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1CC,attr=$43) } UDGTABLE#
  $BF15,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1CC,attr=$43) } UDGTABLE#
  $BF16,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1BC,attr=$43) } UDGTABLE#
  $BF17,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1C4,attr=$43) } UDGTABLE#
  $BF18,$01 Terminator.

b $BF19 Graphic ID #N$5A
@ $BF19 label=graphic_5a
M $BF19,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BF19,$01
W $BF1A,$02
  $BF1C,$02 Attribute: #COLOUR(#PC+$01)
  $BF1E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DE04,attr=$46) } UDGTABLE#
  $BF1F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DE0C,attr=$46) } UDGTABLE#
  $BF20,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF22,$02 Attribute: #COLOUR(#PC+$01)
  $BF24,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DDF4,attr=$45) } UDGTABLE#
  $BF25,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DDFC,attr=$45) } UDGTABLE#
  $BF26,$01 Terminator.

b $BF27 Graphic ID #N$55
@ $BF27 label=graphic_55
M $BF27,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BF27,$01
W $BF28,$02
  $BF2A,$02 Attribute: #COLOUR(#PC+$01)
  $BF2C,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$03,,4(n,{ #Nn | #UDG($DDA4,attr=$45) })
. UDGTABLE#
  $BF2F,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF31,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$03,,4(n,{ #Nn | #UDG($DDA4,attr=$45) })
. UDGTABLE#
  $BF34,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF36,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD9C,attr=$45) } UDGTABLE#
  $BF37,$02 Attribute: #COLOUR(#PC+$01)
  $BF39,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF3B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD84,attr=$42) } UDGTABLE#
  $BF3C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD84,attr=$42) } UDGTABLE#
  $BF3D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD64,attr=$42) } UDGTABLE#
  $BF3E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD84,attr=$42) } UDGTABLE#
  $BF3F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD84,attr=$42) } UDGTABLE#
  $BF40,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD64,attr=$42) } UDGTABLE#
  $BF41,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD84,attr=$42) } UDGTABLE#
  $BF42,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD94,attr=$42) } UDGTABLE#
  $BF43,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF45,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD8C,attr=$42) } UDGTABLE#
  $BF46,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD8C,attr=$42) } UDGTABLE#
  $BF47,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DDAC,attr=$42) } UDGTABLE#
  $BF48,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD8C,attr=$42) } UDGTABLE#
  $BF49,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD8C,attr=$42) } UDGTABLE#
  $BF4A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DDAC,attr=$42) } UDGTABLE#
  $BF4B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD8C,attr=$42) } UDGTABLE#
  $BF4C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF4E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD6C,attr=$42) } UDGTABLE#
  $BF4F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD74,attr=$42) } UDGTABLE#
  $BF50,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD7C,attr=$42) } UDGTABLE#
  $BF51,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF53,$02 Attribute: #COLOUR(#PC+$01)
  $BF55,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD54,attr=$47) } UDGTABLE#
  $BF56,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD54,attr=$47) } UDGTABLE#
  $BF57,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DDB4,attr=$47) } UDGTABLE#
  $BF58,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DDBC,attr=$47) } UDGTABLE#
  $BF59,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD54,attr=$47) } UDGTABLE#
  $BF5A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD54,attr=$47) } UDGTABLE#
  $BF5B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DDB4,attr=$47) } UDGTABLE#
  $BF5C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DDBC,attr=$47) } UDGTABLE#
  $BF5D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD54,attr=$47) } UDGTABLE#
  $BF5E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD54,attr=$47) } UDGTABLE#
  $BF5F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DDB4,attr=$47) } UDGTABLE#
  $BF60,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DDBC,attr=$47) } UDGTABLE#
  $BF61,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD54,attr=$47) } UDGTABLE#
  $BF62,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD5C,attr=$47) } UDGTABLE#
  $BF63,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF65,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD54,attr=$47) } UDGTABLE#
  $BF66,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD54,attr=$47) } UDGTABLE#
  $BF67,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DDCC,attr=$47) } UDGTABLE#
  $BF68,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DDC4,attr=$47) } UDGTABLE#
  $BF69,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD54,attr=$47) } UDGTABLE#
  $BF6A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD54,attr=$47) } UDGTABLE#
  $BF6B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DDCC,attr=$47) } UDGTABLE#
  $BF6C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DDC4,attr=$47) } UDGTABLE#
  $BF6D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD54,attr=$47) } UDGTABLE#
  $BF6E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD54,attr=$47) } UDGTABLE#
  $BF6F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DDCC,attr=$47) } UDGTABLE#
  $BF70,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DDC4,attr=$47) } UDGTABLE#
  $BF71,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD5C,attr=$47) } UDGTABLE#
  $BF72,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF74,$02 Attribute: #COLOUR(#PC+$01)
  $BF76,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c9 Columns } { #FOR$01,$09(n,=h #Nn, | ) }
. { #FOR$01,$09(n,#UDG($DD54,attr=$42), | ) }
. UDGTABLE#
  $BF79,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD5C,attr=$42) } UDGTABLE#
  $BF7A,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF7C,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($DD54,attr=$42), | ) }
. UDGTABLE#
  $BF7F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD5C,attr=$42) } UDGTABLE#
  $BF80,$01 Terminator.

b $BF81 Graphic ID #N$6E
@ $BF81 label=graphic_6e
M $BF81,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BF81,$01
W $BF82,$02
  $BF84,$02 Attribute: #COLOUR(#PC+$01)
  $BF86,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($DD3C,attr=$42) })
. UDGTABLE#
  $BF89,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD3C,attr=$42) } UDGTABLE#
  $BF8A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD14,attr=$42) } UDGTABLE#
  $BF8B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF8D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD34,attr=$42) } UDGTABLE#
  $BF8E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD14,attr=$42) } UDGTABLE#
  $BF8F,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF91,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD2C,attr=$42) } UDGTABLE#
  $BF92,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD14,attr=$42) } UDGTABLE#
  $BF93,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF95,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD44,attr=$42) } UDGTABLE#
  $BF96,$01 Action: move down one character block.
  $BF97,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD24,attr=$42) } UDGTABLE#
  $BF98,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BF9A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD3C,attr=$42) } UDGTABLE#
M $BF9B,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BF9B,$01
W $BF9C,$02
  $BF9E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$42) } UDGTABLE#
  $BF9F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$42) } UDGTABLE#
  $BFA0,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFA2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$42) } UDGTABLE#
  $BFA3,$01 Terminator.

b $BFA4 Graphic ID #N$51
@ $BFA4 label=graphic_51
M $BFA4,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BFA4,$01
W $BFA5,$02
  $BFA7,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFA9,$02 Attribute: #COLOUR(#PC+$01)
  $BFAB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCEC,attr=$44) } UDGTABLE#
  $BFAC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCF4,attr=$44) } UDGTABLE#
  $BFAD,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFAF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCFC,attr=$44) } UDGTABLE#
  $BFB0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD04,attr=$44) } UDGTABLE#
  $BFB1,$01 Terminator.

b $BFB2 Graphic ID #N$52
@ $BFB2 label=graphic_52
M $BFB2,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BFB2,$01
W $BFB3,$02
  $BFB5,$02 Attribute: #COLOUR(#PC+$01)
  $BFB7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD0C,attr=$28) } UDGTABLE#
  $BFB8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD4C,attr=$28) } UDGTABLE#
  $BFB9,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFBB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD0C,attr=$28) } UDGTABLE#
  $BFBC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD4C,attr=$28) } UDGTABLE#
  $BFBD,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFBF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD14,attr=$28) } UDGTABLE#
  $BFC0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD4C,attr=$28) } UDGTABLE#
  $BFC1,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFC3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD14,attr=$28) } UDGTABLE#
  $BFC4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD44,attr=$28) } UDGTABLE#
  $BFC5,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFC7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD14,attr=$28) } UDGTABLE#
  $BFC8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD44,attr=$28) } UDGTABLE#
  $BFC9,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFCB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD1C,attr=$28) } UDGTABLE#
  $BFCC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD3C,attr=$28) } UDGTABLE#
  $BFCD,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFCF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD1C,attr=$28) } UDGTABLE#
  $BFD0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD3C,attr=$28) } UDGTABLE#
  $BFD1,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFD3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD1C,attr=$28) } UDGTABLE#
  $BFD4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD34,attr=$28) } UDGTABLE#
  $BFD5,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFD7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD24,attr=$28) } UDGTABLE#
  $BFD8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DD2C,attr=$28) } UDGTABLE#
  $BFD9,$01 Terminator.

b $BFDA Graphic ID #N$53
@ $BFDA label=graphic_53
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
  $BFE7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC9C,attr=$46) } UDGTABLE#
  $BFE8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCAC,attr=$46) } UDGTABLE#
  $BFE9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCB4,attr=$46) } UDGTABLE#
  $BFEA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCCC,attr=$46) } UDGTABLE#
  $BFEB,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFED,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCA4,attr=$46) } UDGTABLE#
  $BFEE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCBC,attr=$46) } UDGTABLE#
  $BFEF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCC4,attr=$46) } UDGTABLE#
  $BFF0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCD4,attr=$46) } UDGTABLE#
  $BFF1,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFF3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCDC,attr=$46) } UDGTABLE#
  $BFF4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCE4,attr=$46) } UDGTABLE#
  $BFF5,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFF7,$02 Attribute: #COLOUR(#PC+$01)
  $BFF9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC34,attr=$44) } UDGTABLE#
  $BFFA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC2C,attr=$44) } UDGTABLE#
  $BFFB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC2C,attr=$44) } UDGTABLE#
  $BFFC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC34,attr=$44) } UDGTABLE#
  $BFFD,$01 Terminator.

b $BFE2 Graphic ID #N$4F
@ $BFE2 label=graphic_4f
M $BFE2,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BFE2,$01
W $BFE3,$02
  $BFE5,$02 Attribute: #COLOUR(#PC+$01)
  $BFE7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC9C,attr=$46) } UDGTABLE#
  $BFE8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCAC,attr=$46) } UDGTABLE#
  $BFE9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCB4,attr=$46) } UDGTABLE#
  $BFEA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCCC,attr=$46) } UDGTABLE#
  $BFEB,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFED,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCA4,attr=$46) } UDGTABLE#
  $BFEE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCBC,attr=$46) } UDGTABLE#
  $BFEF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCC4,attr=$46) } UDGTABLE#
  $BFF0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCD4,attr=$46) } UDGTABLE#
  $BFF1,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFF3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCDC,attr=$46) } UDGTABLE#
  $BFF4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DCE4,attr=$46) } UDGTABLE#
  $BFF5,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $BFF7,$02 Attribute: #COLOUR(#PC+$01)
  $BFF9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC34,attr=$44) } UDGTABLE#
  $BFFA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC2C,attr=$44) } UDGTABLE#
  $BFFB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC2C,attr=$44) } UDGTABLE#
  $BFFC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC34,attr=$44) } UDGTABLE#
  $BFFD,$01 Terminator.

b $BFFE Graphic ID #N$54
@ $BFFE label=graphic_54
M $BFFE,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $BFFE,$01
W $BFFF,$02
  $C001,$02 Attribute: #COLOUR(#PC+$01)
  $C003,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($DA2C,attr=$79), | ) }
. UDGTABLE#
  $C006,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C008,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($DA34,attr=$79), | ) }
. UDGTABLE#
  $C00B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
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
  $C018,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA64,attr=$72) } UDGTABLE#
  $C019,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA6C,attr=$72) } UDGTABLE#
  $C01A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA6C,attr=$72) } UDGTABLE#
  $C01B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA74,attr=$72) } UDGTABLE#
  $C01C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA7C,attr=$72) } UDGTABLE#
  $C01D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA6C,attr=$72) } UDGTABLE#
  $C01E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA6C,attr=$72) } UDGTABLE#
M $C01F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C01F,$01
W $C020,$02
  $C022,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($E0DC,attr=$72), | ) }
. UDGTABLE#
  $C025,$01 Terminator.

b $C026 Graphic ID #N$5B
@ $C026 label=graphic_5b
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
  $C031,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C033,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DE54,attr=$4E) } UDGTABLE#
  $C034,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DE5C,attr=$4E) } UDGTABLE#
  $C035,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DE64,attr=$4E) } UDGTABLE#
  $C036,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DE6C,attr=$4E) } UDGTABLE#
  $C037,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DE74,attr=$4E) } UDGTABLE#
  $C038,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DE7C,attr=$4E) } UDGTABLE#
  $C039,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DE84,attr=$4E) } UDGTABLE#
  $C03A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DE8C,attr=$4E) } UDGTABLE#
  $C03B,$01 Terminator.

b $C03C Graphic ID #N$5C
@ $C03C label=graphic_5c
M $C03C,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C03C,$01
W $C03D,$02
  $C03F,$02 Attribute: #COLOUR(#PC+$01)
  $C041,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DE14,attr=$47) } UDGTABLE#
  $C042,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DE1C,attr=$47) } UDGTABLE#
  $C043,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DE24,attr=$47) } UDGTABLE#
  $C044,$01 Terminator.

b $C045 Graphic ID #N$5D
@ $C045 label=graphic_5d
M $C045,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C045,$01
W $C046,$02
  $C048,$02 Attribute: #COLOUR(#PC+$01)
  $C04A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DE2C,attr=$46) } UDGTABLE#
  $C04B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DE34,attr=$46) } UDGTABLE#
  $C04C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DE3C,attr=$46) } UDGTABLE#
  $C04D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DE44,attr=$46) } UDGTABLE#
  $C04E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DE4C,attr=$46) } UDGTABLE#
  $C04F,$01 Terminator.

b $C050 Graphic ID #N$5E
@ $C050 label=graphic_5e
M $C050,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C050,$01
W $C051,$02
  $C053,$02 Attribute: #COLOUR(#PC+$01)
  $C055,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DE94,attr=$60) } UDGTABLE#
  $C056,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DE9C,attr=$60) } UDGTABLE#
  $C057,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DEA4,attr=$60) } UDGTABLE#
  $C058,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DEAC,attr=$60) } UDGTABLE#
  $C059,$01 Terminator.

b $C05A Graphic ID #N$5F
@ $C05A label=graphic_5f
M $C05A,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C05A,$01
W $C05B,$02
  $C05D,$02 Attribute: #COLOUR(#PC+$01)
  $C05F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DEB4,attr=$4F) } UDGTABLE#
  $C060,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DEBC,attr=$4F) } UDGTABLE#
  $C061,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DEC4,attr=$4F) } UDGTABLE#
  $C062,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DECC,attr=$4F) } UDGTABLE#
  $C063,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DED4,attr=$4F) } UDGTABLE#
M $C064,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C064,$01
W $C065,$02
  $C067,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DEDC,attr=$4F) } UDGTABLE#
  $C068,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DEE4,attr=$4F) } UDGTABLE#
  $C069,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DEEC,attr=$4F) } UDGTABLE#
  $C06A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DEF4,attr=$4F) } UDGTABLE#
  $C06B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DEFC,attr=$4F) } UDGTABLE#
  $C06C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF04,attr=$4F) } UDGTABLE#
M $C06D,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C06D,$01
W $C06E,$02
  $C070,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0DC,attr=$4F) } UDGTABLE#
  $C071,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0DC,attr=$4F) } UDGTABLE#
  $C072,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0DC,attr=$4F) } UDGTABLE#
  $C073,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C075,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0DC,attr=$4F) } UDGTABLE#
  $C076,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0DC,attr=$4F) } UDGTABLE#
  $C077,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C079,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($E0DC,attr=$4F), | ) }
. UDGTABLE#
  $C07C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C07E,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($E0DC,attr=$4F), | ) }
. UDGTABLE#
  $C081,$01 Terminator.

b $C082 Graphic ID #N$60
@ $C082 label=graphic_60
M $C082,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C082,$01
W $C083,$02
  $C085,$02 Attribute: #COLOUR(#PC+$01)
  $C087,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c7 Columns } { #FOR$01,$07(n,=h #Nn, | ) }
. { #FOR$01,$07(n,#UDG($E0DC,attr=$57), | ) }
. UDGTABLE#
  $C08A,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C08C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0DC,attr=$57) } UDGTABLE#
  $C08D,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C08F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0DC,attr=$57) } UDGTABLE#
  $C090,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C092,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c7 Columns } { #FOR$01,$07(n,=h #Nn, | ) }
. { #FOR$01,$07(n,#UDG($E0DC,attr=$57), | ) }
. UDGTABLE#
  $C095,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $C097,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C097,$01
W $C098,$02
  $C09A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF0C,attr=$57) } UDGTABLE#
  $C09B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF14,attr=$57) } UDGTABLE#
  $C09C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF1C,attr=$57) } UDGTABLE#
  $C09D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF24,attr=$57) } UDGTABLE#
  $C09E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF2C,attr=$57) } UDGTABLE#
  $C09F,$01 Terminator.

b $C0A0 Graphic ID #N$61
@ $C0A0 label=graphic_61
M $C0A0,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C0A0,$01
W $C0A1,$02
  $C0A3,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0A5,$02 Attribute: #COLOUR(#PC+$01)
  $C0A7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D7AC,attr=$45) } UDGTABLE#
  $C0A8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D7B4,attr=$45) } UDGTABLE#
  $C0A9,$01 Terminator.

b $C0AA Graphic ID #N$62
@ $C0AA label=graphic_62
M $C0AA,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C0AA,$01
W $C0AB,$02
  $C0AD,$02 Attribute: #COLOUR(#PC+$01)
  $C0AF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D75C,attr=$46) } UDGTABLE#
  $C0B0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D76C,attr=$46) } UDGTABLE#
  $C0B1,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0B3,$02 Attribute: #COLOUR(#PC+$01)
  $C0B5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D79C,attr=$42) } UDGTABLE#
  $C0B6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D7A4,attr=$42) } UDGTABLE#
  $C0B7,$01 Terminator.

b $C0B8 Graphic ID #N$63
@ $C0B8 label=graphic_63
M $C0B8,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C0B8,$01
W $C0B9,$02
  $C0BB,$02 Attribute: #COLOUR(#PC+$01)
  $C0BD,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D394,attr=$44)#UDG($D39C,attr=$44), | ) }
. UDGTABLE#
  $C0C1,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0C3,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D39C,attr=$44)#UDG($D394,attr=$44), | ) }
. UDGTABLE#
  $C0C7,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0C9,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D394,attr=$44)#UDG($D39C,attr=$44), | ) }
. UDGTABLE#
  $C0CD,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0CF,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D39C,attr=$44)#UDG($D394,attr=$44), | ) }
. UDGTABLE#
  $C0D3,$01 Terminator.

b $C0D4 Graphic ID #N$64
@ $C0D4 label=graphic_64
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
  $C0DF,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0E1,$02 Attribute: #COLOUR(#PC+$01)
  $C0E3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFB4,attr=$42) } UDGTABLE#
  $C0E4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFC4,attr=$42) } UDGTABLE#
  $C0E5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFB4,attr=$42) } UDGTABLE#
  $C0E6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFBC,attr=$42) } UDGTABLE#
  $C0E7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFBC,attr=$42) } UDGTABLE#
  $C0E8,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0EA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFAC,attr=$42) } UDGTABLE#
  $C0EB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFC4,attr=$42) } UDGTABLE#
  $C0EC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFB4,attr=$42) } UDGTABLE#
  $C0ED,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0EF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFBC,attr=$42) } UDGTABLE#
  $C0F0,$01 Terminator.

b $C0DC Graphic ID #N$66
@ $C0DC label=graphic_66
M $C0DC,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C0DC,$01
W $C0DD,$02
  $C0DF,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0E1,$02 Attribute: #COLOUR(#PC+$01)
  $C0E3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFB4,attr=$42) } UDGTABLE#
  $C0E4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFC4,attr=$42) } UDGTABLE#
  $C0E5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFB4,attr=$42) } UDGTABLE#
  $C0E6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFBC,attr=$42) } UDGTABLE#
  $C0E7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFBC,attr=$42) } UDGTABLE#
  $C0E8,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0EA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFAC,attr=$42) } UDGTABLE#
  $C0EB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFC4,attr=$42) } UDGTABLE#
  $C0EC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFB4,attr=$42) } UDGTABLE#
  $C0ED,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0EF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFBC,attr=$42) } UDGTABLE#
  $C0F0,$01 Terminator.

b $C0F1 Graphic ID #N$50
@ $C0F1 label=graphic_50
M $C0F1,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C0F1,$01
W $C0F2,$02
  $C0F4,$02 Attribute: #COLOUR(#PC+$01)
  $C0F6,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$09,,4(n,{ #Nn | #UDG($DC74,attr=$45) })
. UDGTABLE#
  $C0F9,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0FB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC7C,attr=$45) } UDGTABLE#
  $C0FC,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C0FE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC7C,attr=$45) } UDGTABLE#
  $C0FF,$02 Attribute: #COLOUR(#PC+$01)
  $C101,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C103,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC4C,attr=$47) } UDGTABLE#
  $C104,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C106,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC6C,attr=$47) } UDGTABLE#
  $C107,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC54,attr=$47) } UDGTABLE#
  $C108,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC44,attr=$47) } UDGTABLE#
  $C109,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C10B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC64,attr=$47) } UDGTABLE#
  $C10C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC5C,attr=$47) } UDGTABLE#
  $C10D,$01 Action: move down one character block.
  $C10E,$02 Attribute: #COLOUR(#PC+$01)
  $C110,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC24,attr=$44) } UDGTABLE#
  $C111,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC8C,attr=$44) } UDGTABLE#
  $C112,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC94,attr=$44) } UDGTABLE#
  $C113,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC84,attr=$44) } UDGTABLE#
  $C114,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C116,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC3C,attr=$44) } UDGTABLE#
  $C117,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC3C,attr=$44) } UDGTABLE#
  $C118,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC3C,attr=$44) } UDGTABLE#
  $C119,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC24,attr=$44) } UDGTABLE#
  $C11A,$01 Action: move down one character block.
  $C11B,$01 Action: move down one character block.
  $C11C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC84,attr=$44) } UDGTABLE#
  $C11D,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C11F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC3C,attr=$44) } UDGTABLE#
  $C120,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC3C,attr=$44) } UDGTABLE#
  $C121,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC8C,attr=$44) } UDGTABLE#
  $C122,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC94,attr=$44) } UDGTABLE#
  $C123,$01 Action: move down one character block.
  $C124,$01 Action: move down one character block.
  $C125,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC84,attr=$44) } UDGTABLE#
  $C126,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C128,$02 Attribute: #COLOUR(#PC+$01)
  $C12A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC2C,attr=$46) } UDGTABLE#
  $C12B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC34,attr=$46) } UDGTABLE#
  $C12C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC2C,attr=$46) } UDGTABLE#
  $C12D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC2C,attr=$46) } UDGTABLE#
  $C12E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC2C,attr=$46) } UDGTABLE#
  $C12F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC34,attr=$46) } UDGTABLE#
  $C130,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC2C,attr=$46) } UDGTABLE#
  $C131,$01 Terminator.

b $C132 Graphic ID #N$56
@ $C132 label=graphic_56
M $C132,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C132,$01
W $C133,$02
  $C135,$02 Attribute: #COLOUR(#PC+$01)
  $C137,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBAC,attr=$45) } UDGTABLE#
  $C138,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC0C,attr=$45) } UDGTABLE#
  $C139,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C13B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC14,attr=$45) } UDGTABLE#
  $C13C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC1C,attr=$45) } UDGTABLE#
  $C13D,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C13F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBEC,attr=$45) } UDGTABLE#
  $C140,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBF4,attr=$45) } UDGTABLE#
  $C141,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBCC,attr=$45) } UDGTABLE#
  $C142,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBD4,attr=$45) } UDGTABLE#
  $C143,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C145,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBFC,attr=$45) } UDGTABLE#
  $C146,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC04,attr=$45) } UDGTABLE#
  $C147,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBBC,attr=$45) } UDGTABLE#
  $C148,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBC4,attr=$45) } UDGTABLE#
  $C149,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C14B,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$09,,4(n,{ #Nn | #UDG($DC14,attr=$45) })
. UDGTABLE#
  $C14E,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C150,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBDC,attr=$45) } UDGTABLE#
  $C151,$01 Action: move down one character block.
  $C152,$01 Action: move down one character block.
  $C153,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBE4,attr=$45) } UDGTABLE#
  $C154,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C156,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$09,,4(n,{ #Nn | #UDG($DC1C,attr=$45) })
. UDGTABLE#
  $C159,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C15B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBAC,attr=$45) } UDGTABLE#
  $C15C,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DBB4,attr=$45), | ) }
. UDGTABLE#
  $C15F,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C161,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBAC,attr=$45) } UDGTABLE#
  $C162,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c7 Columns } { #FOR$01,$07(n,=h #Nn, | ) }
. { #FOR$01,$07(n,#UDG($DBB4,attr=$45), | ) }
. UDGTABLE#
  $C165,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C167,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBB4,attr=$45) } UDGTABLE#
  $C168,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBB4,attr=$45) } UDGTABLE#
  $C169,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBB4,attr=$45) } UDGTABLE#
  $C16A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC0C,attr=$45) } UDGTABLE#
  $C16B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C16D,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($DBB4,attr=$45), | ) }
. UDGTABLE#
  $C170,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC0C,attr=$45) } UDGTABLE#
  $C171,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C173,$02 Attribute: #COLOUR(#PC+$01)
M $C175,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C175,$01
W $C176,$02
  $C178,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5A4,attr=$43) } UDGTABLE#
  $C179,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5AC,attr=$43) } UDGTABLE#
  $C17A,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C17C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5CC,attr=$43) } UDGTABLE#
  $C17D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5D4,attr=$43) } UDGTABLE#
  $C17E,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C180,$02 Attribute: #COLOUR(#PC+$01)
  $C182,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5E4,attr=$46) } UDGTABLE#
  $C183,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5E4,attr=$46) } UDGTABLE#
  $C184,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C186,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5E4,attr=$46) } UDGTABLE#
  $C187,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5E4,attr=$46) } UDGTABLE#
  $C188,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C18A,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D5E4,attr=$46), | ) }
. UDGTABLE#
  $C18D,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C18F,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D5E4,attr=$46), | ) }
. UDGTABLE#
  $C192,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $C194,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C194,$01
W $C195,$02
  $C197,$02 Attribute: #COLOUR(#PC+$01)
  $C199,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$07,,4(n,{ #Nn | #UDG($DA84,attr=$43) })
. UDGTABLE#
  $C19C,$01 Terminator.

b $C19D Graphic ID #N$4D
@ $C19D label=graphic_4d
M $C19D,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C19D,$01
W $C19E,$02
  $C1A0,$02 Attribute: #COLOUR(#PC+$01)
  $C1A2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBAC,attr=$7) } UDGTABLE#
  $C1A3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC0C,attr=$7) } UDGTABLE#
  $C1A4,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1A6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC14,attr=$7) } UDGTABLE#
  $C1A7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC1C,attr=$7) } UDGTABLE#
  $C1A8,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1AA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC14,attr=$7) } UDGTABLE#
  $C1AB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC1C,attr=$7) } UDGTABLE#
  $C1AC,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1AE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBDC,attr=$7) } UDGTABLE#
  $C1AF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC14,attr=$7) } UDGTABLE#
  $C1B0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC1C,attr=$7) } UDGTABLE#
  $C1B1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBE4,attr=$7) } UDGTABLE#
  $C1B2,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1B4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBCC,attr=$7) } UDGTABLE#
  $C1B5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBD4,attr=$7) } UDGTABLE#
  $C1B6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBEC,attr=$7) } UDGTABLE#
  $C1B7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBF4,attr=$7) } UDGTABLE#
  $C1B8,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1BA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBBC,attr=$7) } UDGTABLE#
  $C1BB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBC4,attr=$7) } UDGTABLE#
  $C1BC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBFC,attr=$7) } UDGTABLE#
  $C1BD,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC04,attr=$7) } UDGTABLE#
  $C1BE,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1C0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBDC,attr=$7) } UDGTABLE#
  $C1C1,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1C3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBE4,attr=$7) } UDGTABLE#
  $C1C4,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1C6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBCC,attr=$7) } UDGTABLE#
  $C1C7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBD4,attr=$7) } UDGTABLE#
  $C1C8,$01 Action: move down one character block.
  $C1C9,$01 Action: move down one character block.
  $C1CA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBEC,attr=$7) } UDGTABLE#
  $C1CB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBF4,attr=$7) } UDGTABLE#
  $C1CC,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1CE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBBC,attr=$7) } UDGTABLE#
  $C1CF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBC4,attr=$7) } UDGTABLE#
  $C1D0,$01 Action: move down one character block.
  $C1D1,$01 Action: move down one character block.
  $C1D2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBFC,attr=$7) } UDGTABLE#
  $C1D3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC04,attr=$7) } UDGTABLE#
  $C1D4,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1D6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBDC,attr=$7) } UDGTABLE#
  $C1D7,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1D9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBE4,attr=$7) } UDGTABLE#
  $C1DA,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1DC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBCC,attr=$7) } UDGTABLE#
  $C1DD,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBD4,attr=$7) } UDGTABLE#
  $C1DE,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1E0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBEC,attr=$7) } UDGTABLE#
  $C1E1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBF4,attr=$7) } UDGTABLE#
  $C1E2,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1E4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBBC,attr=$7) } UDGTABLE#
  $C1E5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBC4,attr=$7) } UDGTABLE#
  $C1E6,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1E8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBFC,attr=$7) } UDGTABLE#
  $C1E9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DC04,attr=$7) } UDGTABLE#
  $C1EA,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1EC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBDC,attr=$7) } UDGTABLE#
  $C1ED,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1EF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBE4,attr=$7) } UDGTABLE#
  $C1F0,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1F2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBCC,attr=$7) } UDGTABLE#
  $C1F3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBD4,attr=$7) } UDGTABLE#
  $C1F4,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1F6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBEC,attr=$7) } UDGTABLE#
  $C1F7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBF4,attr=$7) } UDGTABLE#
  $C1F8,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C1FA,$02 Attribute: #COLOUR(#PC+$01)
  $C1FC,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($DBB4,attr=$46), | ) }
. UDGTABLE#
  $C1FF,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C201,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DBB4,attr=$46), | ) }
. UDGTABLE#
  $C204,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C206,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($DBB4,attr=$46), | ) }
. UDGTABLE#
  $C209,$01 Terminator.

b $C20A Graphic ID #N$2E
@ $C20A label=graphic_2e
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
  $C219,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D73C,attr=$42) } UDGTABLE#
  $C21A,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C21C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D744,attr=$42) } UDGTABLE#
  $C21D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D74C,attr=$42) } UDGTABLE#
  $C21E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D754,attr=$42) } UDGTABLE#
  $C21F,$01 Terminator.

b $C220 Graphic ID #N$2F
@ $C220 label=graphic_2f
M $C220,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C220,$01
W $C221,$02
  $C223,$02 Attribute: #COLOUR(#PC+$01)
  $C225,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D794,attr=$44) } UDGTABLE#
  $C226,$02 Attribute: #COLOUR(#PC+$01)
  $C228,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C22A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D784,attr=$47) } UDGTABLE#
  $C22B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D764,attr=$47) } UDGTABLE#
  $C22C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D78C,attr=$47) } UDGTABLE#
  $C22D,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C22F,$02 Attribute: #COLOUR(#PC+$01)
  $C231,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D774,attr=$44) } UDGTABLE#
  $C232,$01 Action: move down one character block.
  $C233,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D77C,attr=$44) } UDGTABLE#
  $C234,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C236,$02 Attribute: #COLOUR(#PC+$01)
  $C238,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D75C,attr=$47) } UDGTABLE#
  $C239,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D764,attr=$47) } UDGTABLE#
  $C23A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D76C,attr=$47) } UDGTABLE#
  $C23B,$01 Terminator.

b $C23C Graphic ID #N$1F
@ $C23C label=graphic_1f
M $C23C,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C23C,$01
W $C23D,$02
  $C23F,$02 Attribute: #COLOUR(#PC+$01)
  $C241,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D57C,attr=$43) } UDGTABLE#
  $C242,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D584,attr=$43) })
. UDGTABLE#
  $C245,$02 Attribute: #COLOUR(#PC+$01)
  $C247,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$0A,,4(n,{ #Nn | #UDG($D594,attr=$7) })
. UDGTABLE#
  $C24A,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C24C,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$0A,,4(n,{ #Nn | #UDG($D58C,attr=$7) })
. UDGTABLE#
  $C24F,$02 Attribute: #COLOUR(#PC+$01)
  $C251,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D56C,attr=$43) } UDGTABLE#
  $C252,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D574,attr=$43) } UDGTABLE#
  $C253,$01 Terminator.

b $C254 Graphic ID #N$2D
@ $C254 label=graphic_2d
M $C254,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C254,$01
W $C255,$02
  $C257,$02 Attribute: #COLOUR(#PC+$01)
  $C259,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1D4,attr=$47) } UDGTABLE#
  $C25A,$02 Attribute: #COLOUR(#PC+$01)
  $C25C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1DC,attr=$43) } UDGTABLE#
  $C25D,$02 Attribute: #COLOUR(#PC+$01)
  $C25F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1E4,attr=$42) } UDGTABLE#
  $C260,$02 Attribute: #COLOUR(#PC+$01)
  $C262,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1D4,attr=$46) } UDGTABLE#
  $C263,$02 Attribute: #COLOUR(#PC+$01)
  $C265,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1DC,attr=$43) } UDGTABLE#
  $C266,$02 Attribute: #COLOUR(#PC+$01)
  $C268,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1E4,attr=$47) } UDGTABLE#
  $C269,$02 Attribute: #COLOUR(#PC+$01)
  $C26B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1E4,attr=$44) } UDGTABLE#
  $C26C,$02 Attribute: #COLOUR(#PC+$01)
  $C26E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1D4,attr=$46) } UDGTABLE#
  $C26F,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C271,$02 Attribute: #COLOUR(#PC+$01)
  $C273,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1BC,attr=$45) } UDGTABLE#
  $C274,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1C4,attr=$45) } UDGTABLE#
  $C275,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1CC,attr=$45) } UDGTABLE#
  $C276,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1BC,attr=$45) } UDGTABLE#
  $C277,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1C4,attr=$45) } UDGTABLE#
  $C278,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1CC,attr=$45) } UDGTABLE#
  $C279,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1BC,attr=$45) } UDGTABLE#
  $C27A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1C4,attr=$45) } UDGTABLE#
  $C27B,$01 Terminator.

b $C27C Graphic ID #N$3B
@ $C27C label=graphic_3b
M $C27C,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C27C,$01
W $C27D,$02
  $C27F,$02 Attribute: #COLOUR(#PC+$01)
  $C281,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D774,attr=$45) } UDGTABLE#
  $C282,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D77C,attr=$45) } UDGTABLE#
  $C283,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $C285,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C285,$01
W $C286,$02
  $C288,$02 Attribute: #COLOUR(#PC+$01)
  $C28A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D514,attr=$72) } UDGTABLE#
  $C28B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D514,attr=$72) } UDGTABLE#
  $C28C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C28E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D514,attr=$72) } UDGTABLE#
  $C28F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D514,attr=$72) } UDGTABLE#
  $C290,$01 Terminator.

b $C291 Graphic ID #N$49
@ $C291 label=graphic_49
M $C291,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C291,$01
W $C292,$02
  $C294,$02 Attribute: #COLOUR(#PC+$01)
  $C296,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c32 Columns } { #FOR$01,$20(n,=h #Nn, | ) }
. { #FOR$01,$20(n,#UDG($E024,attr=$44), | ) }
. UDGTABLE#
  $C299,$01 Terminator.

b $C29A Graphic ID #N$4A
@ $C29A label=graphic_4a
M $C29A,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C29A,$01
W $C29B,$02
  $C29D,$02 Attribute: #COLOUR(#PC+$01)
  $C29F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D304,attr=$45) } UDGTABLE#
  $C2A0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D30C,attr=$45) } UDGTABLE#
  $C2A1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D314,attr=$45) } UDGTABLE#
  $C2A2,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C2A4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D31C,attr=$45) } UDGTABLE#
  $C2A5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D324,attr=$45) } UDGTABLE#
  $C2A6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D32C,attr=$45) } UDGTABLE#
  $C2A7,$01 Terminator.

b $C2A8 Graphic ID #N$6A
@ $C2A8 label=graphic_6a
M $C2A8,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C2A8,$01
W $C2A9,$02
  $C2AB,$02 Attribute: #COLOUR(#PC+$01)
  $C2AD,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D694,attr=$44) } UDGTABLE#
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
  $C2B7,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C2B9,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($D6AC,attr=$44) })
. UDGTABLE#
  $C2BC,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C2BE,$02 Attribute: #COLOUR(#PC+$01)
M $C2C0,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C2C0,$01
W $C2C1,$02
  $C2C3,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c11 Columns } { #FOR$01,$0B(n,=h #Nn, | ) }
. { #FOR$01,$0B(n,#UDG($D5A4,attr=$46)#UDG($D5AC,attr=$46), | ) }
. UDGTABLE#
  $C2C7,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C2C9,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c11 Columns } { #FOR$01,$0B(n,=h #Nn, | ) }
. { #FOR$01,$0B(n,#UDG($D5B4,attr=$46)#UDG($D5BC,attr=$46), | ) }
. UDGTABLE#
  $C2CD,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C2CF,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c11 Columns } { #FOR$01,$0B(n,=h #Nn, | ) }
. { #FOR$01,$0B(n,#UDG($D5B4,attr=$46)#UDG($D5BC,attr=$46), | ) }
. UDGTABLE#
  $C2D3,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C2D5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5B4,attr=$46) } UDGTABLE#
  $C2D6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5BC,attr=$46) } UDGTABLE#
  $C2D7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5CC,attr=$46) } UDGTABLE#
  $C2D8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5D4,attr=$46) } UDGTABLE#
  $C2D9,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c3 Columns } { #FOR$01,$03(n,=h #Nn, | ) }
. { #FOR$01,$03(n,#UDG($D5B4,attr=$46)#UDG($D5BC,attr=$46), | ) }
. UDGTABLE#
  $C2DD,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5CC,attr=$46) } UDGTABLE#
  $C2DE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5D4,attr=$46) } UDGTABLE#
  $C2DF,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c3 Columns } { #FOR$01,$03(n,=h #Nn, | ) }
. { #FOR$01,$03(n,#UDG($D5B4,attr=$46)#UDG($D5BC,attr=$46), | ) }
. UDGTABLE#
  $C2E3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5CC,attr=$46) } UDGTABLE#
  $C2E4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5D4,attr=$46) } UDGTABLE#
  $C2E5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5B4,attr=$46) } UDGTABLE#
  $C2E6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5BC,attr=$46) } UDGTABLE#
  $C2E7,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C2E9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5CC,attr=$46) } UDGTABLE#
  $C2EA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5D4,attr=$46) } UDGTABLE#
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
  $C2F9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5CC,attr=$46) } UDGTABLE#
  $C2FA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5D4,attr=$46) } UDGTABLE#
  $C2FB,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C2FD,$02 Attribute: #COLOUR(#PC+$01)
M $C2FF,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C2FF,$01
W $C300,$02
  $C302,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D23C,attr=$45) } UDGTABLE#
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
  $C30C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C30E,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D224,attr=$45) })
. UDGTABLE#
  $C311,$01 Terminator.

b $C312 Graphic ID #N$6B
@ $C312 label=graphic_6b
M $C312,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C312,$01
W $C313,$02
  $C315,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C317,$02 Attribute: #COLOUR(#PC+$01)
  $C319,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9F4,attr=$45) } UDGTABLE#
  $C31A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$45) } UDGTABLE#
  $C31B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9FC,attr=$45) } UDGTABLE#
  $C31C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9F4,attr=$45) } UDGTABLE#
  $C31D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$45) } UDGTABLE#
  $C31E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$45) } UDGTABLE#
  $C31F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$45) } UDGTABLE#
  $C320,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9FC,attr=$45) } UDGTABLE#
  $C321,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9F4,attr=$45) } UDGTABLE#
  $C322,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$45) } UDGTABLE#
  $C323,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$45) } UDGTABLE#
  $C324,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$45) } UDGTABLE#
  $C325,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9FC,attr=$45) } UDGTABLE#
  $C326,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9F4,attr=$45) } UDGTABLE#
  $C327,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$45) } UDGTABLE#
  $C328,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$45) } UDGTABLE#
  $C329,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$45) } UDGTABLE#
  $C32A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9FC,attr=$45) } UDGTABLE#
  $C32B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9F4,attr=$45) } UDGTABLE#
  $C32C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$45) } UDGTABLE#
  $C32D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$45) } UDGTABLE#
  $C32E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$45) } UDGTABLE#
  $C32F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9FC,attr=$45) } UDGTABLE#
  $C330,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9F4,attr=$45) } UDGTABLE#
  $C331,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$45) } UDGTABLE#
  $C332,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9FC,attr=$45) } UDGTABLE#
  $C333,$01 Terminator.

b $C334 Graphic ID #N$71
@ $C334 label=graphic_71
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
  $C344,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1C4,attr=$44) } UDGTABLE#
  $C345,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1CC,attr=$44) } UDGTABLE#
  $C346,$01 Terminator.

b $C347 Graphic ID #N$72
@ $C347 label=graphic_72
M $C347,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C347,$01
W $C348,$02
  $C34A,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C34C,$02 Attribute: #COLOUR(#PC+$01)
  $C34E,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c23 Columns } { #FOR$01,$17(n,=h #Nn, | ) }
. { #FOR$01,$17(n,#UDG($E064,attr=$45), | ) }
. UDGTABLE#
  $C351,$01 Terminator.

b $C352 Graphic ID #N$00
@ $C352 label=graphic_00
M $C352,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C352,$01
W $C353,$02
  $C355,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C357,$02 Attribute: #COLOUR(#PC+$01)
  $C359,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c32 Columns } { #FOR$01,$20(n,=h #Nn, | ) }
. { #FOR$01,$20(n,#UDG($DFEC,attr=$5), | ) }
. UDGTABLE#
  $C35C,$01 Terminator.

b $C35D Graphic ID #N$20
@ $C35D label=graphic_20
M $C35D,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C35D,$01
W $C35E,$02
  $C360,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C362,$02 Attribute: #COLOUR(#PC+$01)
  $C364,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($E014,attr=$43)#UDG($E01C,attr=$43), | ) }
. UDGTABLE#
  $C368,$01 Terminator.

b $C369 Graphic ID #N$21
@ $C369 label=graphic_21
M $C369,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C369,$01
W $C36A,$02
  $C36C,$02 Attribute: #COLOUR(#PC+$01)
  $C36E,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D204,attr=$46) })
. UDGTABLE#
  $C371,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D224,attr=$46) } UDGTABLE#
  $C372,$01 Action: move down one character block.
  $C373,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D22C,attr=$46) } UDGTABLE#
  $C374,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D214,attr=$46) } UDGTABLE#
  $C375,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C377,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D224,attr=$46) } UDGTABLE#
  $C378,$01 Action: move down one character block.
  $C379,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D234,attr=$46) } UDGTABLE#
  $C37A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D21C,attr=$46) } UDGTABLE#
  $C37B,$01 Terminator.

b $C37C Graphic ID #N$01
@ $C37C label=graphic_01
M $C37C,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C37C,$01
W $C37D,$02
  $C37F,$02 Attribute: #COLOUR(#PC+$01)
  $C381,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E074,attr=$46) } UDGTABLE#
  $C382,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E07C,attr=$46) } UDGTABLE#
  $C383,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E074,attr=$46) } UDGTABLE#
  $C384,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E07C,attr=$46) } UDGTABLE#
  $C385,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E074,attr=$46) } UDGTABLE#
  $C386,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E094,attr=$46) } UDGTABLE#
  $C387,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C389,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E08C,attr=$46) } UDGTABLE#
  $C38A,$01 Action: move down one character block.
  $C38B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E08C,attr=$46) } UDGTABLE#
  $C38C,$01 Action: move down one character block.
  $C38D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E09C,attr=$46) } UDGTABLE#
  $C38E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E094,attr=$46) } UDGTABLE#
  $C38F,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C391,$02 Attribute: #COLOUR(#PC+$01)
  $C393,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($E06C,attr=$45), | ) }
. UDGTABLE#
  $C396,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E084,attr=$45) } UDGTABLE#
  $C397,$02 Attribute: #COLOUR(#PC+$01)
  $C399,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E08C,attr=$46) } UDGTABLE#
  $C39A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0A4,attr=$46) } UDGTABLE#
  $C39B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E094,attr=$46) } UDGTABLE#
  $C39C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C39E,$02 Attribute: #COLOUR(#PC+$01)
  $C3A0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E084,attr=$45) } UDGTABLE#
  $C3A1,$01 Action: move down one character block.
  $C3A2,$02 Attribute: #COLOUR(#PC+$01)
  $C3A4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E09C,attr=$46) } UDGTABLE#
  $C3A5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E094,attr=$46) } UDGTABLE#
  $C3A6,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C3A8,$02 Attribute: #COLOUR(#PC+$01)
  $C3AA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E084,attr=$45) } UDGTABLE#
  $C3AB,$02 Attribute: #COLOUR(#PC+$01)
  $C3AD,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E08C,attr=$46) } UDGTABLE#
  $C3AE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0A4,attr=$46) } UDGTABLE#
  $C3AF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E094,attr=$46) } UDGTABLE#
  $C3B0,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C3B2,$02 Attribute: #COLOUR(#PC+$01)
  $C3B4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E084,attr=$45) } UDGTABLE#
  $C3B5,$01 Action: move down one character block.
  $C3B6,$02 Attribute: #COLOUR(#PC+$01)
  $C3B8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E09C,attr=$46) } UDGTABLE#
  $C3B9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E094,attr=$46) } UDGTABLE#
  $C3BA,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C3BC,$02 Attribute: #COLOUR(#PC+$01)
  $C3BE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E084,attr=$45) } UDGTABLE#
  $C3BF,$02 Attribute: #COLOUR(#PC+$01)
  $C3C1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E08C,attr=$46) } UDGTABLE#
  $C3C2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0A4,attr=$46) } UDGTABLE#
  $C3C3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E094,attr=$46) } UDGTABLE#
  $C3C4,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C3C6,$02 Attribute: #COLOUR(#PC+$01)
  $C3C8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E084,attr=$45) } UDGTABLE#
  $C3C9,$01 Action: move down one character block.
  $C3CA,$02 Attribute: #COLOUR(#PC+$01)
  $C3CC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E09C,attr=$46) } UDGTABLE#
  $C3CD,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C3CF,$02 Attribute: #COLOUR(#PC+$01)
  $C3D1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E084,attr=$45) } UDGTABLE#
  $C3D2,$02 Attribute: #COLOUR(#PC+$01)
  $C3D4,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($E08C,attr=$46) })
. UDGTABLE#
  $C3D7,$02 Attribute: #COLOUR(#PC+$01)
  $C3D9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E084,attr=$45) } UDGTABLE#
  $C3DA,$01 Terminator.

b $C3DB Graphic ID #N$02
@ $C3DB label=graphic_02
M $C3DB,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C3DB,$01
W $C3DC,$02
  $C3DE,$02 Attribute: #COLOUR(#PC+$01)
  $C3E0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0AC,attr=$46) } UDGTABLE#
  $C3E1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E074,attr=$46) } UDGTABLE#
  $C3E2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E07C,attr=$46) } UDGTABLE#
  $C3E3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E074,attr=$46) } UDGTABLE#
  $C3E4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E07C,attr=$46) } UDGTABLE#
  $C3E5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E074,attr=$46) } UDGTABLE#
  $C3E6,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C3E8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0AC,attr=$46) } UDGTABLE#
  $C3E9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0BC,attr=$46) } UDGTABLE#
  $C3EA,$01 Action: move down one character block.
  $C3EB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E08C,attr=$46) } UDGTABLE#
  $C3EC,$01 Action: move down one character block.
  $C3ED,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E08C,attr=$46) } UDGTABLE#
  $C3EE,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C3F0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0AC,attr=$46) } UDGTABLE#
  $C3F1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0C4,attr=$46) } UDGTABLE#
  $C3F2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E08C,attr=$46) } UDGTABLE#
  $C3F3,$02 Attribute: #COLOUR(#PC+$01)
  $C3F5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0B4,attr=$45) } UDGTABLE#
  $C3F6,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($E0CC,attr=$45), | ) }
. UDGTABLE#
  $C3F9,$02 Attribute: #COLOUR(#PC+$01)
  $C3FB,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C3FD,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0AC,attr=$46) } UDGTABLE#
  $C3FE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0BC,attr=$46) } UDGTABLE#
  $C3FF,$01 Action: move down one character block.
  $C400,$02 Attribute: #COLOUR(#PC+$01)
  $C402,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0B4,attr=$45) } UDGTABLE#
  $C403,$02 Attribute: #COLOUR(#PC+$01)
  $C405,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C407,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0AC,attr=$46) } UDGTABLE#
  $C408,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0C4,attr=$46) } UDGTABLE#
  $C409,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E08C,attr=$46) } UDGTABLE#
  $C40A,$02 Attribute: #COLOUR(#PC+$01)
  $C40C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0B4,attr=$45) } UDGTABLE#
  $C40D,$02 Attribute: #COLOUR(#PC+$01)
  $C40F,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C411,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0AC,attr=$46) } UDGTABLE#
  $C412,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0BC,attr=$46) } UDGTABLE#
  $C413,$01 Action: move down one character block.
  $C414,$02 Attribute: #COLOUR(#PC+$01)
  $C416,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0B4,attr=$45) } UDGTABLE#
  $C417,$02 Attribute: #COLOUR(#PC+$01)
  $C419,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C41B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0AC,attr=$46) } UDGTABLE#
  $C41C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0C4,attr=$46) } UDGTABLE#
  $C41D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E08C,attr=$46) } UDGTABLE#
  $C41E,$02 Attribute: #COLOUR(#PC+$01)
  $C420,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0B4,attr=$45) } UDGTABLE#
  $C421,$02 Attribute: #COLOUR(#PC+$01)
  $C423,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C425,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0BC,attr=$46) } UDGTABLE#
  $C426,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C428,$02 Attribute: #COLOUR(#PC+$01)
  $C42A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0B4,attr=$45) } UDGTABLE#
  $C42B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C42D,$02 Attribute: #COLOUR(#PC+$01)
  $C42F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E08C,attr=$46) } UDGTABLE#
  $C430,$02 Attribute: #COLOUR(#PC+$01)
  $C432,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0B4,attr=$45) } UDGTABLE#
  $C433,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C435,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0B4,attr=$45) } UDGTABLE#
  $C436,$01 Terminator.

b $C437 Graphic ID #N$69
@ $C437 label=graphic_69
M $C437,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C437,$01
W $C438,$02
  $C43A,$02 Attribute: #COLOUR(#PC+$01)
  $C43C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF74,attr=$45) } UDGTABLE#
  $C43D,$02 Attribute: #COLOUR(#PC+$01)
  $C43F,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($DF94,attr=$47), | ) }
. UDGTABLE#
  $C442,$02 Attribute: #COLOUR(#PC+$01)
  $C444,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF7C,attr=$45) } UDGTABLE#
  $C445,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF74,attr=$45) } UDGTABLE#
  $C446,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF7C,attr=$45) } UDGTABLE#
  $C447,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF74,attr=$45) } UDGTABLE#
  $C448,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF7C,attr=$45) } UDGTABLE#
  $C449,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C44B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF74,attr=$45) } UDGTABLE#
  $C44C,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DF6C,attr=$45), | ) }
. UDGTABLE#
  $C44F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF84,attr=$45) } UDGTABLE#
  $C450,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF64,attr=$45) } UDGTABLE#
  $C451,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C453,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF8C,attr=$45) } UDGTABLE#
  $C454,$02 Attribute: #COLOUR(#PC+$01)
  $C456,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DF94,attr=$43), | ) }
. UDGTABLE#
  $C459,$02 Attribute: #COLOUR(#PC+$01)
  $C45B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF7C,attr=$45) } UDGTABLE#
  $C45C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF64,attr=$45) } UDGTABLE#
  $C45D,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C45F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF74,attr=$45) } UDGTABLE#
  $C460,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DF6C,attr=$45), | ) }
. UDGTABLE#
  $C463,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF84,attr=$45) } UDGTABLE#
  $C464,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF64,attr=$45) } UDGTABLE#
  $C465,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C467,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF8C,attr=$45) } UDGTABLE#
  $C468,$02 Attribute: #COLOUR(#PC+$01)
  $C46A,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DF94,attr=$46), | ) }
. UDGTABLE#
  $C46D,$02 Attribute: #COLOUR(#PC+$01)
  $C46F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF7C,attr=$45) } UDGTABLE#
  $C470,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF64,attr=$45) } UDGTABLE#
  $C471,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C473,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF74,attr=$45) } UDGTABLE#
  $C474,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DF6C,attr=$45), | ) }
. UDGTABLE#
  $C477,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF84,attr=$45) } UDGTABLE#
  $C478,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF64,attr=$45) } UDGTABLE#
  $C479,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C47B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF8C,attr=$45) } UDGTABLE#
  $C47C,$02 Attribute: #COLOUR(#PC+$01)
  $C47E,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DF94,attr=$42), | ) }
. UDGTABLE#
  $C481,$02 Attribute: #COLOUR(#PC+$01)
  $C483,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF7C,attr=$45) } UDGTABLE#
  $C484,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF64,attr=$45) } UDGTABLE#
  $C485,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C487,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF74,attr=$45) } UDGTABLE#
  $C488,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DF6C,attr=$45), | ) }
. UDGTABLE#
  $C48B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF84,attr=$45) } UDGTABLE#
  $C48C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF64,attr=$45) } UDGTABLE#
  $C48D,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C48F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF8C,attr=$45) } UDGTABLE#
  $C490,$02 Attribute: #COLOUR(#PC+$01)
  $C492,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DF94,attr=$44), | ) }
. UDGTABLE#
  $C495,$02 Attribute: #COLOUR(#PC+$01)
  $C497,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF6C,attr=$45) } UDGTABLE#
  $C498,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF84,attr=$45) } UDGTABLE#
  $C499,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF8C,attr=$45) } UDGTABLE#
  $C49A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF84,attr=$45) } UDGTABLE#
  $C49B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C49D,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$07,,4(n,{ #Nn | #UDG($DF64,attr=$45) })
. UDGTABLE#
  $C4A0,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C4A2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF8C,attr=$45) } UDGTABLE#
  $C4A3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF6C,attr=$45) } UDGTABLE#
  $C4A4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF7C,attr=$45) } UDGTABLE#
  $C4A5,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C4A7,$02 Attribute: #COLOUR(#PC+$01)
  $C4A9,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$07,,4(n,{ #Nn | #UDG($DFA4,attr=$47) })
. UDGTABLE#
  $C4AC,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C4AE,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($DFA4,attr=$47) })
. UDGTABLE#
  $C4B1,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
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
  $C4BF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF64,attr=$45) } UDGTABLE#
  $C4C0,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C4C2,$02 Attribute: #COLOUR(#PC+$01)
  $C4C4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF54,attr=$46) } UDGTABLE#
  $C4C5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF5C,attr=$46) } UDGTABLE#
  $C4C6,$02 Attribute: #COLOUR(#PC+$01)
  $C4C8,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C4CA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF44,attr=$44) } UDGTABLE#
  $C4CB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF4C,attr=$44) } UDGTABLE#
  $C4CC,$01 Terminator.

b $C4CD Graphic ID #N$68
@ $C4CD label=graphic_68
M $C4CD,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C4CD,$01
W $C4CE,$02
  $C4D0,$02 Attribute: #COLOUR(#PC+$01)
  $C4D2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1BC,attr=$43) } UDGTABLE#
  $C4D3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1C4,attr=$43) } UDGTABLE#
  $C4D4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1CC,attr=$43) } UDGTABLE#
  $C4D5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1CC,attr=$43) } UDGTABLE#
  $C4D6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1BC,attr=$43) } UDGTABLE#
  $C4D7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1C4,attr=$43) } UDGTABLE#
  $C4D8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1CC,attr=$43) } UDGTABLE#
  $C4D9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1CC,attr=$43) } UDGTABLE#
  $C4DA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1BC,attr=$43) } UDGTABLE#
  $C4DB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1C4,attr=$43) } UDGTABLE#
  $C4DC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1CC,attr=$43) } UDGTABLE#
  $C4DD,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1CC,attr=$43) } UDGTABLE#
  $C4DE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1BC,attr=$43) } UDGTABLE#
  $C4DF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1C4,attr=$43) } UDGTABLE#
  $C4E0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1CC,attr=$43) } UDGTABLE#
  $C4E1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1CC,attr=$43) } UDGTABLE#
  $C4E2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1BC,attr=$43) } UDGTABLE#
  $C4E3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1C4,attr=$43) } UDGTABLE#
  $C4E4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1CC,attr=$43) } UDGTABLE#
  $C4E5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1CC,attr=$43) } UDGTABLE#
  $C4E6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1BC,attr=$43) } UDGTABLE#
  $C4E7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1C4,attr=$43) } UDGTABLE#
  $C4E8,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C4EA,$02 Attribute: #COLOUR(#PC+$01)
  $C4EC,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D1EC,attr=$45) })
. UDGTABLE#
  $C4EF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1F4,attr=$45) } UDGTABLE#
  $C4F0,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C4F2,$02 Attribute: #COLOUR(#PC+$01)
  $C4F4,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D1EC,attr=$46) })
. UDGTABLE#
  $C4F7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1F4,attr=$46) } UDGTABLE#
  $C4F8,$01 Action: move down one character block.
  $C4F9,$02 Attribute: #COLOUR(#PC+$01)
  $C4FB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1FC,attr=$46) } UDGTABLE#
  $C4FC,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C4FE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1FC,attr=$46) } UDGTABLE#
  $C4FF,$02 Attribute: #COLOUR(#PC+$01)
  $C501,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1FC,attr=$44) } UDGTABLE#
  $C502,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C504,$02 Attribute: #COLOUR(#PC+$01)
  $C506,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1FC,attr=$42) } UDGTABLE#
  $C507,$02 Attribute: #COLOUR(#PC+$01)
  $C509,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1FC,attr=$47) } UDGTABLE#
  $C50A,$02 Attribute: #COLOUR(#PC+$01)
  $C50C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1FC,attr=$46) } UDGTABLE#
  $C50D,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C50F,$02 Attribute: #COLOUR(#PC+$01)
  $C511,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1FC,attr=$44) } UDGTABLE#
  $C512,$02 Attribute: #COLOUR(#PC+$01)
  $C514,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1FC,attr=$46) } UDGTABLE#
  $C515,$02 Attribute: #COLOUR(#PC+$01)
  $C517,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1FC,attr=$45) } UDGTABLE#
  $C518,$02 Attribute: #COLOUR(#PC+$01)
  $C51A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1FC,attr=$46) } UDGTABLE#
  $C51B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C51D,$02 Attribute: #COLOUR(#PC+$01)
  $C51F,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D1EC,attr=$47) })
. UDGTABLE#
  $C522,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1F4,attr=$47) } UDGTABLE#
  $C523,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C525,$02 Attribute: #COLOUR(#PC+$01)
  $C527,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D1EC,attr=$44) })
. UDGTABLE#
  $C52A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1F4,attr=$44) } UDGTABLE#
  $C52B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C52D,$02 Attribute: #COLOUR(#PC+$01)
  $C52F,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D1EC,attr=$46) })
. UDGTABLE#
  $C532,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1F4,attr=$46) } UDGTABLE#
  $C533,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C535,$02 Attribute: #COLOUR(#PC+$01)
  $C537,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D1EC,attr=$45) })
. UDGTABLE#
  $C53A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1F4,attr=$45) } UDGTABLE#
  $C53B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C53D,$02 Attribute: #COLOUR(#PC+$01)
  $C53F,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D1EC,attr=$44) })
. UDGTABLE#
  $C542,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1F4,attr=$44) } UDGTABLE#
  $C543,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C545,$02 Attribute: #COLOUR(#PC+$01)
  $C547,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D1EC,attr=$42) })
. UDGTABLE#
  $C54A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1F4,attr=$42) } UDGTABLE#
  $C54B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C54D,$02 Attribute: #COLOUR(#PC+$01)
  $C54F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1FC,attr=$46) } UDGTABLE#
  $C550,$02 Attribute: #COLOUR(#PC+$01)
  $C552,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1FC,attr=$45) } UDGTABLE#
  $C553,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C555,$02 Attribute: #COLOUR(#PC+$01)
  $C557,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1FC,attr=$44) } UDGTABLE#
  $C558,$02 Attribute: #COLOUR(#PC+$01)
  $C55A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1FC,attr=$46) } UDGTABLE#
  $C55B,$02 Attribute: #COLOUR(#PC+$01)
  $C55D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1FC,attr=$47) } UDGTABLE#
  $C55E,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C560,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1FC,attr=$47) } UDGTABLE#
  $C561,$02 Attribute: #COLOUR(#PC+$01)
  $C563,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1FC,attr=$45) } UDGTABLE#
  $C564,$02 Attribute: #COLOUR(#PC+$01)
  $C566,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1FC,attr=$46) } UDGTABLE#
  $C567,$02 Attribute: #COLOUR(#PC+$01)
  $C569,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D1FC,attr=$44) } UDGTABLE#
  $C56A,$01 Terminator.

b $C56B Graphic ID #N$03
@ $C56B label=graphic_03
M $C56B,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C56B,$01
W $C56C,$02
  $C56E,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C570,$02 Attribute: #COLOUR(#PC+$01)
  $C572,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFF4,attr=$45) } UDGTABLE#
  $C573,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFFC,attr=$45) } UDGTABLE#
  $C574,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E004,attr=$45) } UDGTABLE#
  $C575,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E00C,attr=$45) } UDGTABLE#
  $C576,$01 Terminator.

b $C577 Graphic ID #N$6C
@ $C577 label=graphic_6c
M $C577,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C577,$01
W $C578,$02
  $C57A,$02 Attribute: #COLOUR(#PC+$01)
  $C57C,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$0C,,4(n,{ #Nn | #UDG($D4BC,attr=$44) })
. UDGTABLE#
  $C57F,$01 Terminator.

b $C580 Graphic ID #N$04
@ $C580 label=graphic_04
M $C580,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C580,$01
W $C581,$02
  $C583,$02 Attribute: #COLOUR(#PC+$01)
  $C585,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D454,attr=$47) } UDGTABLE#
  $C586,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D45C,attr=$47) } UDGTABLE#
  $C587,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C589,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D464,attr=$47) } UDGTABLE#
  $C58A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D46C,attr=$47) } UDGTABLE#
  $C58B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C58D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D474,attr=$47) } UDGTABLE#
  $C58E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D47C,attr=$47) } UDGTABLE#
  $C58F,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C591,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D484,attr=$47) } UDGTABLE#
  $C592,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D48C,attr=$47) } UDGTABLE#
  $C593,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C595,$02 Attribute: #COLOUR(#PC+$01)
  $C597,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D424,attr=$46) } UDGTABLE#
  $C598,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D434,attr=$46) } UDGTABLE#
  $C599,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C59B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D424,attr=$46) } UDGTABLE#
  $C59C,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D42C,attr=$46), | ) }
. UDGTABLE#
  $C59F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D434,attr=$46) } UDGTABLE#
  $C5A0,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C5A2,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D494,attr=$46), | ) }
. UDGTABLE#
  $C5A5,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C5A7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D424,attr=$46) } UDGTABLE#
  $C5A8,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D42C,attr=$46), | ) }
. UDGTABLE#
  $C5AB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D434,attr=$46) } UDGTABLE#
  $C5AC,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C5AE,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D494,attr=$46), | ) }
. UDGTABLE#
  $C5B1,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C5B3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D424,attr=$46) } UDGTABLE#
  $C5B4,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c12 Columns } { #FOR$01,$0C(n,=h #Nn, | ) }
. { #FOR$01,$0C(n,#UDG($D42C,attr=$46), | ) }
. UDGTABLE#
  $C5B7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D434,attr=$46) } UDGTABLE#
  $C5B8,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C5BA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D43C,attr=$46) } UDGTABLE#
  $C5BB,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c10 Columns } { #FOR$01,$0A(n,=h #Nn, | ) }
. { #FOR$01,$0A(n,#UDG($D44C,attr=$46), | ) }
. UDGTABLE#
  $C5BE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D444,attr=$46) } UDGTABLE#
  $C5BF,$01 Terminator.

b $C5C0 Graphic ID #N$05
@ $C5C0 label=graphic_05
M $C5C0,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C5C0,$01
W $C5C1,$02
  $C5C3,$02 Attribute: #COLOUR(#PC+$01)
  $C5C5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D3E4,attr=$45) } UDGTABLE#
  $C5C6,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($D3EC,attr=$45), | ) }
. UDGTABLE#
  $C5C9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D3F4,attr=$45) } UDGTABLE#
  $C5CA,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C5CC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D3FC,attr=$45) } UDGTABLE#
  $C5CD,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($D404,attr=$45), | ) }
. UDGTABLE#
  $C5D0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D40C,attr=$45) } UDGTABLE#
  $C5D1,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C5D3,$02 Attribute: #COLOUR(#PC+$01)
  $C5D5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D414,attr=$43) } UDGTABLE#
  $C5D6,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C5D8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D41C,attr=$43) } UDGTABLE#
  $C5D9,$01 Terminator.

b $C5DA Graphic ID #N$43
@ $C5DA label=graphic_43
M $C5DA,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C5DA,$01
W $C5DB,$02
  $C5DD,$02 Attribute: #COLOUR(#PC+$01)
  $C5DF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D264,attr=$43) } UDGTABLE#
  $C5E0,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($D24C,attr=$43), | ) }
. UDGTABLE#
  $C5E3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D26C,attr=$43) } UDGTABLE#
  $C5E4,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C5E6,$02 Attribute: #COLOUR(#PC+$01)
  $C5E8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D254,attr=$42) } UDGTABLE#
  $C5E9,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($D244,attr=$42), | ) }
. UDGTABLE#
  $C5EC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D25C,attr=$42) } UDGTABLE#
  $C5ED,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $C5EF,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C5EF,$01
W $C5F0,$02
  $C5F2,$02 Attribute: #COLOUR(#PC+$01)
  $C5F4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D414,attr=$44) } UDGTABLE#
  $C5F5,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C5F7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D41C,attr=$44) } UDGTABLE#
  $C5F8,$01 Terminator.

b $C5F9 Graphic ID #N$44
@ $C5F9 label=graphic_44
M $C5F9,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C5F9,$01
W $C5FA,$02
  $C5FC,$02 Attribute: #COLOUR(#PC+$01)
  $C5FE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D264,attr=$43) } UDGTABLE#
  $C5FF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D26C,attr=$43) } UDGTABLE#
  $C600,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C602,$02 Attribute: #COLOUR(#PC+$01)
  $C604,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D254,attr=$42) } UDGTABLE#
  $C605,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D25C,attr=$42) } UDGTABLE#
  $C606,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C608,$02 Attribute: #COLOUR(#PC+$01)
M $C60A,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C60A,$01
W $C60B,$02
  $C60D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D414,attr=$44) } UDGTABLE#
  $C60E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D41C,attr=$44) } UDGTABLE#
  $C60F,$01 Terminator.

b $C610 Graphic ID #N$45
@ $C610 label=graphic_45
M $C610,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C610,$01
W $C611,$02
  $C613,$02 Attribute: #COLOUR(#PC+$01)
  $C615,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D2F4,attr=$45)#UDG($D2FC,attr=$45), | ) }
. UDGTABLE#
  $C619,$01 Terminator.

b $C61A Graphic ID #N$46
@ $C61A label=graphic_46
M $C61A,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C61A,$01
W $C61B,$02
  $C61D,$02 Attribute: #COLOUR(#PC+$01)
  $C61F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D27C,attr=$47) } UDGTABLE#
  $C620,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D284,attr=$47), | ) }
. UDGTABLE#
  $C623,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D28C,attr=$47) } UDGTABLE#
  $C624,$01 Terminator.

b $C625 Graphic ID #N$47
@ $C625 label=graphic_47
M $C625,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C625,$01
W $C626,$02
  $C628,$02 Attribute: #COLOUR(#PC+$01)
  $C62A,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($D2AC,attr=$45) })
. UDGTABLE#
  $C62D,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C62F,$02 Attribute: #COLOUR(#PC+$01)
  $C631,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D294,attr=$43) } UDGTABLE#
  $C632,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D29C,attr=$43) } UDGTABLE#
  $C633,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D2A4,attr=$43) } UDGTABLE#
  $C634,$01 Terminator.

b $C635 Graphic ID #N$48
@ $C635 label=graphic_48
M $C635,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C635,$01
W $C636,$02
  $C638,$02 Attribute: #COLOUR(#PC+$01)
  $C63A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D2DC,attr=$47) } UDGTABLE#
  $C63B,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($D2E4,attr=$47), | ) }
. UDGTABLE#
  $C63E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D2EC,attr=$47) } UDGTABLE#
  $C63F,$02 Attribute: #COLOUR(#PC+$01)
  $C641,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C643,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D2CC,attr=$46) })
. UDGTABLE#
  $C646,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D2B4,attr=$46) } UDGTABLE#
  $C647,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($D2BC,attr=$46), | ) }
. UDGTABLE#
  $C64A,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C64C,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D2D4,attr=$46) })
. UDGTABLE#
  $C64F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D2C4,attr=$46) } UDGTABLE#
  $C650,$01 Terminator.

b $C651 Graphic ID #N$06
@ $C651 label=graphic_06
M $C651,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C651,$01
W $C652,$02
  $C654,$02 Attribute: #COLOUR(#PC+$01)
  $C656,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D374,attr=$44) } UDGTABLE#
  $C657,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C658,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C659,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C65A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D37C,attr=$44) } UDGTABLE#
  $C65B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C65D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D374,attr=$44) } UDGTABLE#
  $C65E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C65F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C660,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C661,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C662,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C663,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C664,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D37C,attr=$44) } UDGTABLE#
  $C665,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C667,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D374,attr=$44) } UDGTABLE#
  $C668,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C669,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C66A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C66B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C66C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C66D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C66E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C66F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C670,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C672,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C673,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C674,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C675,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C676,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C677,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C678,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C679,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C67A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C67B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C67C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C67E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C67F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C680,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C681,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C682,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C683,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C684,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C685,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C686,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C687,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D384,attr=$44) } UDGTABLE#
  $C688,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C68A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D374,attr=$44) } UDGTABLE#
  $C68B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C68C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C68D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C68E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C68F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C690,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C691,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C692,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C693,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C694,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D37C,attr=$44) } UDGTABLE#
  $C695,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C697,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D38C,attr=$44) } UDGTABLE#
  $C698,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C699,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C69A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C69B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C69C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C69D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C69E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C69F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C6A0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C6A1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C6A2,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6A4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C6A5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C6A6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C6A7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C6A8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C6A9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C6AA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C6AB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C6AC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C6AD,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D384,attr=$44) } UDGTABLE#
  $C6AE,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6B0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D38C,attr=$44) } UDGTABLE#
  $C6B1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C6B2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C6B3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C6B4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C6B5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$44) } UDGTABLE#
  $C6B6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C6B7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$44) } UDGTABLE#
  $C6B8,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6BA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D38C,attr=$44) } UDGTABLE#
  $C6BB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D384,attr=$44) } UDGTABLE#
  $C6BC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$44) } UDGTABLE#
  $C6BD,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D384,attr=$44) } UDGTABLE#
  $C6BE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D38C,attr=$44) } UDGTABLE#
  $C6BF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D384,attr=$44) } UDGTABLE#
  $C6C0,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6C2,$02 Attribute: #COLOUR(#PC+$01)
  $C6C4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D3A4,attr=$42) } UDGTABLE#
  $C6C5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D3AC,attr=$42) } UDGTABLE#
  $C6C6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D3B4,attr=$42) } UDGTABLE#
  $C6C7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D3BC,attr=$42) } UDGTABLE#
  $C6C8,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6CA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D394,attr=$42) } UDGTABLE#
  $C6CB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D39C,attr=$42) } UDGTABLE#
  $C6CC,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6CE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D394,attr=$42) } UDGTABLE#
  $C6CF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D39C,attr=$42) } UDGTABLE#
  $C6D0,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6D2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D39C,attr=$42) } UDGTABLE#
  $C6D3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D394,attr=$42) } UDGTABLE#
  $C6D4,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6D6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D39C,attr=$42) } UDGTABLE#
  $C6D7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D394,attr=$42) } UDGTABLE#
  $C6D8,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6DA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D394,attr=$42) } UDGTABLE#
  $C6DB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D39C,attr=$42) } UDGTABLE#
  $C6DC,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6DE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D3C4,attr=$42) } UDGTABLE#
  $C6DF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D3CC,attr=$42) } UDGTABLE#
  $C6E0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D3D4,attr=$42) } UDGTABLE#
  $C6E1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D3DC,attr=$42) } UDGTABLE#
  $C6E2,$01 Terminator.

b $C6E3 Graphic ID #N$07
@ $C6E3 label=graphic_07
M $C6E3,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C6E3,$01
W $C6E4,$02
  $C6E6,$02 Attribute: #COLOUR(#PC+$01)
  $C6E8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$4) } UDGTABLE#
  $C6E9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$4) } UDGTABLE#
  $C6EA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$4) } UDGTABLE#
  $C6EB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$4) } UDGTABLE#
  $C6EC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$4) } UDGTABLE#
  $C6ED,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6EF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$4) } UDGTABLE#
  $C6F0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$4) } UDGTABLE#
  $C6F1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$4) } UDGTABLE#
  $C6F2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$4) } UDGTABLE#
  $C6F3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$4) } UDGTABLE#
  $C6F4,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6F6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$4) } UDGTABLE#
  $C6F7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$4) } UDGTABLE#
  $C6F8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$4) } UDGTABLE#
  $C6F9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$4) } UDGTABLE#
  $C6FA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$4) } UDGTABLE#
  $C6FB,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C6FD,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$4) } UDGTABLE#
  $C6FE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$4) } UDGTABLE#
  $C6FF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$4) } UDGTABLE#
  $C700,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$4) } UDGTABLE#
  $C701,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$4) } UDGTABLE#
  $C702,$01 Terminator.

b $C703 Graphic ID #N$08
@ $C703 label=graphic_08
M $C703,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C703,$01
W $C704,$02
  $C706,$02 Attribute: #COLOUR(#PC+$01)
  $C708,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$4) } UDGTABLE#
  $C709,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$4) } UDGTABLE#
  $C70A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$4) } UDGTABLE#
  $C70B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$4) } UDGTABLE#
  $C70C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C70E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$4) } UDGTABLE#
  $C70F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$4) } UDGTABLE#
  $C710,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$4) } UDGTABLE#
  $C711,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$4) } UDGTABLE#
  $C712,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C714,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$4) } UDGTABLE#
  $C715,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$4) } UDGTABLE#
  $C716,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$4) } UDGTABLE#
  $C717,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$4) } UDGTABLE#
  $C718,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C71A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D35C,attr=$4) } UDGTABLE#
  $C71B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$4) } UDGTABLE#
  $C71C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D36C,attr=$4) } UDGTABLE#
  $C71D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D364,attr=$4) } UDGTABLE#
  $C71E,$01 Terminator.

b $C71F Graphic ID #N$09
@ $C71F label=graphic_09
M $C71F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C71F,$01
W $C720,$02
  $C722,$02 Attribute: #COLOUR(#PC+$01)
  $C724,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($D334,attr=$43), | ) }
. UDGTABLE#
  $C727,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C729,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($D344,attr=$43), | ) }
. UDGTABLE#
  $C72C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C72E,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($D33C,attr=$43), | ) }
. UDGTABLE#
  $C731,$01 Terminator.

b $C732 Graphic ID #N$0A
@ $C732 label=graphic_0a
M $C732,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C732,$01
W $C733,$02
  $C735,$02 Attribute: #COLOUR(#PC+$01)
  $C737,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D334,attr=$43), | ) }
. UDGTABLE#
  $C73A,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C73C,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D344,attr=$43), | ) }
. UDGTABLE#
  $C73F,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C741,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D33C,attr=$43), | ) }
. UDGTABLE#
  $C744,$01 Terminator.

b $C745 Graphic ID #N$0B
@ $C745 label=graphic_0b
M $C745,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C745,$01
W $C746,$02
  $C748,$02 Attribute: #COLOUR(#PC+$01)
  $C74A,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($D354,attr=$45), | ) }
. UDGTABLE#
  $C74D,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C74F,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C752,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C754,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C757,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C759,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C75C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C75E,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C761,$01 Terminator.

b $C762 Graphic ID #N$23
@ $C762 label=graphic_23
M $C762,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C762,$01
W $C763,$02
  $C765,$02 Attribute: #COLOUR(#PC+$01)
  $C767,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D354,attr=$45), | ) }
. UDGTABLE#
  $C76A,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C76C,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C76F,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C771,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C774,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C776,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C779,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C77B,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C77E,$01 Terminator.

b $C77F Graphic ID #N$0C
@ $C77F label=graphic_0c
M $C77F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C77F,$01
W $C780,$02
  $C782,$02 Attribute: #COLOUR(#PC+$01)
  $C784,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C787,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C789,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C78C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C78E,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C791,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C793,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C796,$01 Terminator.

b $C797 Graphic ID #N$2C
@ $C797 label=graphic_2c
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
  $C7A7,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7A9,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C7AC,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7AE,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C7B1,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7B3,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C7B6,$01 Terminator.

b $C79F Graphic ID #N$29
@ $C79F label=graphic_29
M $C79F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C79F,$01
W $C7A0,$02
  $C7A2,$02 Attribute: #COLOUR(#PC+$01)
  $C7A4,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C7A7,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7A9,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C7AC,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7AE,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C7B1,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7B3,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D514,attr=$72), | ) }
. UDGTABLE#
  $C7B6,$01 Terminator.

b $C7B7 Graphic ID #N$1C
@ $C7B7 label=graphic_1c
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
  $C7C7,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7C9,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7CD,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7CF,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7D3,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7D5,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7D9,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7DB,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7DF,$01 Terminator.

b $C7BF Graphic ID #N$0D
@ $C7BF label=graphic_0d
M $C7BF,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C7BF,$01
W $C7C0,$02
  $C7C2,$02 Attribute: #COLOUR(#PC+$01)
  $C7C4,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D52C,attr=$2), | ) }
. UDGTABLE#
  $C7C7,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7C9,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7CD,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7CF,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7D3,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7D5,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7D9,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7DB,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7DF,$01 Terminator.

b $C7E0 Graphic ID #N$2A
@ $C7E0 label=graphic_2a
M $C7E0,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C7E0,$01
W $C7E1,$02
  $C7E3,$02 Attribute: #COLOUR(#PC+$01)
  $C7E5,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D52C,attr=$2), | ) }
. UDGTABLE#
  $C7E8,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7EA,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7EE,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7F0,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7F4,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7F6,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C7FA,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C7FC,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D51C,attr=$2)#UDG($D524,attr=$2), | ) }
. UDGTABLE#
  $C800,$01 Terminator.

b $C801 Graphic ID #N$25
@ $C801 label=graphic_25
M $C801,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C801,$01
W $C802,$02
  $C804,$02 Attribute: #COLOUR(#PC+$01)
  $C806,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5FC,attr=$47) } UDGTABLE#
  $C807,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D604,attr=$47), | ) }
. UDGTABLE#
  $C80A,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C80C,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($D634,attr=$47) })
. UDGTABLE#
  $C80F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D67C,attr=$47) } UDGTABLE#
  $C810,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D684,attr=$47), | ) }
. UDGTABLE#
  $C813,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $C815,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C815,$01
W $C816,$02
  $C818,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($E0DC,attr=$47), | ) }
. UDGTABLE#
  $C81B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C81D,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($E0DC,attr=$47), | ) }
. UDGTABLE#
  $C820,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C822,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($E0DC,attr=$47), | ) }
. UDGTABLE#
  $C825,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C827,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($E0DC,attr=$47), | ) }
. UDGTABLE#
  $C82A,$01 Terminator.

b $C82B Graphic ID #N$26
@ $C82B label=graphic_26
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
  $C839,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C83B,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D684,attr=$47), | ) }
. UDGTABLE#
  $C83E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D68C,attr=$47) } UDGTABLE#
  $C83F,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $C841,$03 Switch #REGhl to #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C841,$01
W $C842,$02
M $C844,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C844,$01
W $C845,$02
  $C847,$02 Attribute: #COLOUR(#PC+$01)
  $C849,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5FC,attr=$47) } UDGTABLE#
  $C84A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D604,attr=$47) } UDGTABLE#
  $C84B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D60C,attr=$47) } UDGTABLE#
  $C84C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C84E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D634,attr=$47) } UDGTABLE#
  $C84F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D62C,attr=$47) } UDGTABLE#
  $C850,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D63C,attr=$47) } UDGTABLE#
  $C851,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C853,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D614,attr=$47) } UDGTABLE#
  $C854,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D61C,attr=$47) } UDGTABLE#
  $C855,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D624,attr=$47) } UDGTABLE#
  $C856,$01 Terminator.

b $C844 Graphic ID #N$0E
@ $C844 label=graphic_0e
M $C844,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C844,$01
W $C845,$02
  $C847,$02 Attribute: #COLOUR(#PC+$01)
  $C849,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5FC,attr=$47) } UDGTABLE#
  $C84A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D604,attr=$47) } UDGTABLE#
  $C84B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D60C,attr=$47) } UDGTABLE#
  $C84C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C84E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D634,attr=$47) } UDGTABLE#
  $C84F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D62C,attr=$47) } UDGTABLE#
  $C850,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D63C,attr=$47) } UDGTABLE#
  $C851,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C853,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D614,attr=$47) } UDGTABLE#
  $C854,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D61C,attr=$47) } UDGTABLE#
  $C855,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D624,attr=$47) } UDGTABLE#
  $C856,$01 Terminator.

b $C857 Graphic ID #N$3A
@ $C857 label=graphic_3a
M $C857,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C857,$01
W $C858,$02
  $C85A,$02 Attribute: #COLOUR(#PC+$01)
  $C85C,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$12,,4(n,{ #Nn | #UDG($E0DC,attr=$46) })
. UDGTABLE#
  $C85F,$01 Terminator.

b $C860 Graphic ID #N$13
@ $C860 label=graphic_13
M $C860,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C860,$01
W $C861,$02
  $C863,$02 Attribute: #COLOUR(#PC+$01)
  $C865,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5FC,attr=$47) } UDGTABLE#
  $C866,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D604,attr=$47) } UDGTABLE#
  $C867,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D604,attr=$47) } UDGTABLE#
  $C868,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D60C,attr=$47) } UDGTABLE#
  $C869,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C86B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D634,attr=$47) } UDGTABLE#
  $C86C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D62C,attr=$47) } UDGTABLE#
  $C86D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D62C,attr=$47) } UDGTABLE#
  $C86E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D63C,attr=$47) } UDGTABLE#
  $C86F,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C871,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D614,attr=$47) } UDGTABLE#
  $C872,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D61C,attr=$47) } UDGTABLE#
  $C873,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D61C,attr=$47) } UDGTABLE#
  $C874,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D624,attr=$47) } UDGTABLE#
  $C875,$01 Terminator.

b $C876 Graphic ID #N$19
@ $C876 label=graphic_19
M $C876,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C876,$01
W $C877,$02
  $C879,$02 Attribute: #COLOUR(#PC+$01)
  $C87B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D34C,attr=$45) } UDGTABLE#
  $C87C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D34C,attr=$45) } UDGTABLE#
  $C87D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D34C,attr=$45) } UDGTABLE#
  $C87E,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C880,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D34C,attr=$45) } UDGTABLE#
  $C881,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D34C,attr=$45) } UDGTABLE#
  $C882,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D34C,attr=$45) } UDGTABLE#
  $C883,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C885,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D34C,attr=$45) } UDGTABLE#
  $C886,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D34C,attr=$45) } UDGTABLE#
  $C887,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D34C,attr=$45) } UDGTABLE#
  $C888,$01 Terminator.

b $C889 Graphic ID #N$27
@ $C889 label=graphic_27
M $C889,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C889,$01
W $C88A,$02
  $C88C,$02 Attribute: #COLOUR(#PC+$01)
  $C88E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5FC,attr=$47) } UDGTABLE#
  $C88F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D604,attr=$47) } UDGTABLE#
  $C890,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D604,attr=$47) } UDGTABLE#
  $C891,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D60C,attr=$47) } UDGTABLE#
  $C892,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C894,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D634,attr=$47) } UDGTABLE#
  $C895,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D62C,attr=$47) } UDGTABLE#
  $C896,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D62C,attr=$47) } UDGTABLE#
  $C897,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D63C,attr=$47) } UDGTABLE#
  $C898,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C89A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D67C,attr=$47) } UDGTABLE#
  $C89B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D684,attr=$47) } UDGTABLE#
  $C89C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D684,attr=$47) } UDGTABLE#
  $C89D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D68C,attr=$47) } UDGTABLE#
  $C89E,$01 Terminator.

b $C89F Graphic ID #N$28
@ $C89F label=graphic_28
M $C89F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C89F,$01
W $C8A0,$02
  $C8A2,$02 Attribute: #COLOUR(#PC+$01)
  $C8A4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5A4,attr=$47) } UDGTABLE#
  $C8A5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5AC,attr=$47) } UDGTABLE#
  $C8A6,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8A8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5C4,attr=$47) } UDGTABLE#
  $C8A9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5BC,attr=$47) } UDGTABLE#
  $C8AA,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8AC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5B4,attr=$47) } UDGTABLE#
  $C8AD,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5BC,attr=$47) } UDGTABLE#
  $C8AE,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8B0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5CC,attr=$47) } UDGTABLE#
  $C8B1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5D4,attr=$47) } UDGTABLE#
  $C8B2,$01 Terminator.

b $C8B3 Graphic ID #N$1D
@ $C8B3 label=graphic_1d
M $C8B3,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C8B3,$01
W $C8B4,$02
  $C8B6,$02 Attribute: #COLOUR(#PC+$01)
  $C8B8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D654,attr=$47) } UDGTABLE#
  $C8B9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D664,attr=$47) } UDGTABLE#
  $C8BA,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8BC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D66C,attr=$47) } UDGTABLE#
  $C8BD,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D674,attr=$47) } UDGTABLE#
  $C8BE,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8C0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D66C,attr=$47) } UDGTABLE#
  $C8C1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D674,attr=$47) } UDGTABLE#
  $C8C2,$01 Terminator.

b $C8C3 Graphic ID #N$1E
@ $C8C3 label=graphic_1e
M $C8C3,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C8C3,$01
W $C8C4,$02
  $C8C6,$02 Attribute: #COLOUR(#PC+$01)
  $C8C8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D654,attr=$47) } UDGTABLE#
  $C8C9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D65C,attr=$47) } UDGTABLE#
  $C8CA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D65C,attr=$47) } UDGTABLE#
  $C8CB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D664,attr=$47) } UDGTABLE#
  $C8CC,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8CE,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($D66C,attr=$47) })
. UDGTABLE#
  $C8D1,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8D3,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($D674,attr=$47) })
. UDGTABLE#
  $C8D6,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $C8D8,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C8D8,$01
W $C8D9,$02
  $C8DB,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($E0DC,attr=$47) })
. UDGTABLE#
  $C8DE,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8E0,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($E0DC,attr=$47) })
. UDGTABLE#
  $C8E3,$01 Terminator.

b $C8E4 Graphic ID #N$1A
@ $C8E4 label=graphic_1a
M $C8E4,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C8E4,$01
W $C8E5,$02
  $C8E7,$02 Attribute: #COLOUR(#PC+$01)
  $C8E9,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C8EC,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8EE,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C8F1,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8F3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D34C,attr=$45) } UDGTABLE#
M $C8F4,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C8F4,$01
W $C8F5,$02
  $C8F7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D64C,attr=$45) } UDGTABLE#
M $C8F8,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C8F8,$01
W $C8F9,$02
  $C8FB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D34C,attr=$45) } UDGTABLE#
  $C8FC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D34C,attr=$45) } UDGTABLE#
  $C8FD,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C8FF,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C902,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C904,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D34C,attr=$45), | ) }
. UDGTABLE#
  $C907,$01 Terminator.

b $C908 Graphic ID #N$14
@ $C908 label=graphic_14
M $C908,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C908,$01
W $C909,$02
  $C90B,$02 Attribute: #COLOUR(#PC+$01)
  $C90D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D644,attr=$47) } UDGTABLE#
  $C90E,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($D644,attr=$47) })
. UDGTABLE#
  $C911,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C913,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D64C,attr=$47) })
. UDGTABLE#
  $C916,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D644,attr=$47) })
. UDGTABLE#
  $C919,$01 Terminator.

b $C91A Graphic ID #N$22
@ $C91A label=graphic_22
M $C91A,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C91A,$01
W $C91B,$02
  $C91D,$02 Attribute: #COLOUR(#PC+$01)
  $C91F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5FC,attr=$47) } UDGTABLE#
  $C920,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D604,attr=$47) } UDGTABLE#
  $C921,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D604,attr=$47) } UDGTABLE#
  $C922,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D60C,attr=$47) } UDGTABLE#
  $C923,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C925,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($D634,attr=$47) })
. UDGTABLE#
  $C928,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C92A,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($D63C,attr=$47) })
. UDGTABLE#
  $C92D,$01 Terminator.

b $C92E Graphic ID #N$3C
@ $C92E label=graphic_3c
M $C92E,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C92E,$01
W $C92F,$02
  $C931,$02 Attribute: #COLOUR(#PC+$01)
  $C933,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D694,attr=$47) } UDGTABLE#
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
  $C93D,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C93F,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($D6AC,attr=$47) })
. UDGTABLE#
  $C942,$01 Terminator.

b $C943 Graphic ID #N$24
@ $C943 label=graphic_24
M $C943,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C943,$01
W $C944,$02
  $C946,$02 Attribute: #COLOUR(#PC+$01)
  $C948,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D694,attr=$47) } UDGTABLE#
  $C949,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D69C,attr=$47) } UDGTABLE#
  $C94A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D69C,attr=$47) } UDGTABLE#
  $C94B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6A4,attr=$47) } UDGTABLE#
  $C94C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C94E,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($D6AC,attr=$47) })
. UDGTABLE#
  $C951,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C953,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($D6B4,attr=$47) })
. UDGTABLE#
  $C956,$01 Terminator.

b $C957 Graphic ID #N$6F
@ $C957 label=graphic_6f
M $C957,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C957,$01
W $C958,$02
  $C95A,$02 Attribute: #COLOUR(#PC+$01)
  $C95C,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c30 Columns } { #FOR$01,$1E(n,=h #Nn, | ) }
. { #FOR$01,$1E(n,#UDG($E034,attr=$44), | ) }
. UDGTABLE#
  $C95F,$01 Terminator.

b $C960 Graphic ID #N$6D
@ $C960 label=graphic_6d
M $C960,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C960,$01
W $C961,$02
  $C963,$02 Attribute: #COLOUR(#PC+$01)
  $C965,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c2 Columns } { #FOR$01,$02(n,=h #Nn, | ) }
. { #FOR$01,$02(n,#UDG($D55C,attr=$46)#UDG($D564,attr=$46), | ) }
. UDGTABLE#
  $C969,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C96B,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c2 Columns } { #FOR$01,$02(n,=h #Nn, | ) }
. { #FOR$01,$02(n,#UDG($D55C,attr=$46)#UDG($D564,attr=$46), | ) }
. UDGTABLE#
  $C96F,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C971,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D55C,attr=$46) } UDGTABLE#
  $C972,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D564,attr=$46) } UDGTABLE#
  $C973,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C975,$02 Attribute: #COLOUR(#PC+$01)
M $C977,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C977,$01
W $C978,$02
  $C97A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E02C,attr=$44) } UDGTABLE#
  $C97B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C97D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E02C,attr=$44) } UDGTABLE#
  $C97E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E02C,attr=$44) } UDGTABLE#
  $C97F,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C981,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E02C,attr=$44) } UDGTABLE#
  $C982,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C984,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E02C,attr=$44) } UDGTABLE#
  $C985,$01 Terminator.

b $C986 Graphic ID #N$15
@ $C986 label=graphic_15
M $C986,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C986,$01
W $C987,$02
  $C989,$02 Attribute: #COLOUR(#PC+$01)
  $C98B,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D55C,attr=$46)#UDG($D564,attr=$46), | ) }
. UDGTABLE#
  $C98F,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C991,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D564,attr=$46)#UDG($D55C,attr=$46), | ) }
. UDGTABLE#
  $C995,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C997,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D55C,attr=$46)#UDG($D564,attr=$46), | ) }
. UDGTABLE#
  $C99B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C99D,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c4 Columns } { #FOR$01,$04(n,=h #Nn, | ) }
. { #FOR$01,$04(n,#UDG($D564,attr=$46)#UDG($D55C,attr=$46), | ) }
. UDGTABLE#
  $C9A1,$01 Terminator.

b $C9A2 Graphic ID #N$16
@ $C9A2 label=graphic_16
M $C9A2,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C9A2,$01
W $C9A3,$02
  $C9A5,$02 Attribute: #COLOUR(#PC+$01)
  $C9A7,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D55C,attr=$46)#UDG($D564,attr=$46), | ) }
. UDGTABLE#
  $C9AB,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C9AD,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D564,attr=$46)#UDG($D55C,attr=$46), | ) }
. UDGTABLE#
  $C9B1,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C9B3,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D55C,attr=$46)#UDG($D564,attr=$46), | ) }
. UDGTABLE#
  $C9B7,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $C9B9,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D564,attr=$46)#UDG($D55C,attr=$46), | ) }
. UDGTABLE#
  $C9BD,$01 Terminator.

b $C9BE Graphic ID #N$0F
@ $C9BE label=graphic_0f
M $C9BE,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C9BE,$01
W $C9BF,$02
  $C9C1,$02 Attribute: #COLOUR(#PC+$01)
  $C9C3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D534,attr=$43) } UDGTABLE#
  $C9C4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D53C,attr=$43) } UDGTABLE#
  $C9C5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D53C,attr=$43) } UDGTABLE#
  $C9C6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D53C,attr=$43) } UDGTABLE#
  $C9C7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D534,attr=$43) } UDGTABLE#
  $C9C8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D53C,attr=$43) } UDGTABLE#
  $C9C9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D53C,attr=$43) } UDGTABLE#
  $C9CA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D53C,attr=$43) } UDGTABLE#
  $C9CB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D534,attr=$43) } UDGTABLE#
  $C9CC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D53C,attr=$43) } UDGTABLE#
  $C9CD,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D53C,attr=$43) } UDGTABLE#
  $C9CE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D53C,attr=$43) } UDGTABLE#
  $C9CF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D534,attr=$43) } UDGTABLE#
  $C9D0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D53C,attr=$43) } UDGTABLE#
  $C9D1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D53C,attr=$43) } UDGTABLE#
  $C9D2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D53C,attr=$43) } UDGTABLE#
  $C9D3,$01 Terminator.

b $C9D4 Graphic ID #N$1B
@ $C9D4 label=graphic_1b
M $C9D4,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C9D4,$01
W $C9D5,$02
  $C9D7,$02 Attribute: #COLOUR(#PC+$01)
  $C9D9,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D59C,attr=$44), | ) }
. UDGTABLE#
  $C9DC,$01 Terminator.

b $C9DD Graphic ID #N$10
@ $C9DD label=graphic_10
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
  $C9FA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D554,attr=$43) } UDGTABLE#
  $C9FB,$01 Terminator.

b $C9FC Graphic ID #N$11
@ $C9FC label=graphic_11
M $C9FC,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $C9FC,$01
W $C9FD,$02
  $C9FF,$02 Attribute: #COLOUR(#PC+$01)
  $CA01,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D4F4,attr=$45) } UDGTABLE#
  $CA02,$02 Attribute: #COLOUR(#PC+$01)
  $CA04,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA06,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D4DC,attr=$46) } UDGTABLE#
  $CA07,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D4E4,attr=$46) } UDGTABLE#
  $CA08,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D4EC,attr=$46) } UDGTABLE#
  $CA09,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA0B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D4C4,attr=$46) } UDGTABLE#
  $CA0C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D4CC,attr=$46) } UDGTABLE#
  $CA0D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D4D4,attr=$46) } UDGTABLE#
  $CA0E,$02 Attribute: #COLOUR(#PC+$01)
  $CA10,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA12,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D4BC,attr=$45) } UDGTABLE#
  $CA13,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA15,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D4A4,attr=$45) } UDGTABLE#
  $CA16,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D49C,attr=$45) } UDGTABLE#
  $CA17,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D4AC,attr=$45) } UDGTABLE#
  $CA18,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA1A,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$08,,4(n,{ #Nn | #UDG($D4BC,attr=$45) })
. UDGTABLE#
  $CA1D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D4B4,attr=$45) } UDGTABLE#
  $CA1E,$01 Terminator.

b $CA1F Graphic ID #N$4E
@ $CA1F label=graphic_4e
M $CA1F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CA1F,$01
W $CA20,$02
  $CA22,$02 Attribute: #COLOUR(#PC+$01)
  $CA24,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D70C,attr=$46) } UDGTABLE#
  $CA25,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D714,attr=$46) } UDGTABLE#
  $CA26,$01 Action: move down one character block.
  $CA27,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D70C,attr=$46) } UDGTABLE#
  $CA28,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D714,attr=$46) } UDGTABLE#
  $CA29,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA2B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D71C,attr=$46) } UDGTABLE#
  $CA2C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D724,attr=$46) } UDGTABLE#
  $CA2D,$01 Action: move down one character block.
  $CA2E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D71C,attr=$46) } UDGTABLE#
  $CA2F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D724,attr=$46) } UDGTABLE#
  $CA30,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA32,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D70C,attr=$46) } UDGTABLE#
  $CA33,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D714,attr=$46) } UDGTABLE#
  $CA34,$01 Action: move down one character block.
  $CA35,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D70C,attr=$46) } UDGTABLE#
  $CA36,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D714,attr=$46) } UDGTABLE#
  $CA37,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA39,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D71C,attr=$46) } UDGTABLE#
  $CA3A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D724,attr=$46) } UDGTABLE#
  $CA3B,$01 Action: move down one character block.
  $CA3C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D71C,attr=$46) } UDGTABLE#
  $CA3D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D724,attr=$46) } UDGTABLE#
  $CA3E,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA40,$02 Attribute: #COLOUR(#PC+$01)
  $CA42,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6BC,attr=$43) } UDGTABLE#
  $CA43,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($D6C4,attr=$43), | ) }
. UDGTABLE#
  $CA46,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6CC,attr=$43) } UDGTABLE#
  $CA47,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA49,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D6FC,attr=$43) })
. UDGTABLE#
  $CA4C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6BC,attr=$43) } UDGTABLE#
  $CA4D,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($D6C4,attr=$43), | ) }
. UDGTABLE#
  $CA50,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6CC,attr=$43) } UDGTABLE#
  $CA51,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA53,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D704,attr=$43) })
. UDGTABLE#
  $CA56,$01 Terminator.

b $CA57 Graphic ID #N$12
@ $CA57 label=graphic_12
M $CA57,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CA57,$01
W $CA58,$02
  $CA5A,$02 Attribute: #COLOUR(#PC+$01)
  $CA5C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6BC,attr=$43) } UDGTABLE#
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
  $CA66,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA68,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$07,,4(n,{ #Nn | #UDG($D6FC,attr=$43) })
. UDGTABLE#
  $CA6B,$02 Attribute: #COLOUR(#PC+$01)
  $CA6D,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA6F,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D6D4,attr=$46) })
. UDGTABLE#
  $CA72,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($D6DC,attr=$46) })
. UDGTABLE#
  $CA75,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA77,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D6D4,attr=$46) })
. UDGTABLE#
  $CA7A,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($D6DC,attr=$46) })
. UDGTABLE#
  $CA7D,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA7F,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D6D4,attr=$46) })
. UDGTABLE#
  $CA82,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($D6DC,attr=$46) })
. UDGTABLE#
  $CA85,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA87,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($D6D4,attr=$46) })
. UDGTABLE#
  $CA8A,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($D6DC,attr=$46) })
. UDGTABLE#
  $CA8D,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CA8F,$02 Attribute: #COLOUR(#PC+$01)
  $CA91,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6E4,attr=$47) } UDGTABLE#
  $CA92,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6EC,attr=$47) } UDGTABLE#
  $CA93,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6F4,attr=$47) } UDGTABLE#
  $CA94,$01 Action: move down one character block.
  $CA95,$01 Action: move down one character block.
  $CA96,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6E4,attr=$47) } UDGTABLE#
  $CA97,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6EC,attr=$47) } UDGTABLE#
  $CA98,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6F4,attr=$47) } UDGTABLE#
  $CA99,$01 Terminator.

b $CA9A Graphic ID #N$17
@ $CA9A label=graphic_17
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
  $CAA5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D4B4,attr=$46) } UDGTABLE#
  $CAA6,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CAA8,$02 Attribute: #COLOUR(#PC+$01)
  $CAAA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D4FC,attr=$44) } UDGTABLE#
  $CAAB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D504,attr=$44) } UDGTABLE#
  $CAAC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D50C,attr=$44) } UDGTABLE#
  $CAAD,$01 Terminator.

b $CAAE Graphic ID #N$18
@ $CAAE label=graphic_18
M $CAAE,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CAAE,$01
W $CAAF,$02
  $CAB1,$02 Attribute: #COLOUR(#PC+$01)
  $CAB3,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D5EC,attr=$42)#UDG($D5F4,attr=$42), | ) }
. UDGTABLE#
  $CAB7,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CAB9,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D5EC,attr=$42)#UDG($D5F4,attr=$42), | ) }
. UDGTABLE#
  $CABD,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CABF,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D5EC,attr=$42)#UDG($D5F4,attr=$42), | ) }
. UDGTABLE#
  $CAC3,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CAC5,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c8 Columns } { #FOR$01,$08(n,=h #Nn, | ) }
. { #FOR$01,$08(n,#UDG($D5EC,attr=$42)#UDG($D5F4,attr=$42), | ) }
. UDGTABLE#
  $CAC9,$01 Terminator.

b $CACA Graphic ID #N$4B
@ $CACA label=graphic_4b
M $CACA,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CACA,$01
W $CACB,$02
  $CACD,$02 Attribute: #COLOUR(#PC+$01)
  $CACF,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($DB1C,attr=$43), | ) }
. UDGTABLE#
  $CAD2,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $CAD4,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CAD4,$01
W $CAD5,$02
  $CAD7,$02 Attribute: #COLOUR(#PC+$01)
  $CAD9,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D5E4,attr=$45), | ) }
. UDGTABLE#
  $CADC,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CADE,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D5E4,attr=$45), | ) }
. UDGTABLE#
  $CAE1,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CAE3,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D5E4,attr=$45), | ) }
. UDGTABLE#
  $CAE6,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CAE8,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($D5E4,attr=$45), | ) }
. UDGTABLE#
  $CAEB,$01 Terminator.

b $CAEC Graphic ID #N$65
@ $CAEC label=graphic_65
M $CAEC,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CAEC,$01
W $CAED,$02
  $CAEF,$02 Attribute: #COLOUR(#PC+$01)
  $CAF1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D6BC,attr=$43) } UDGTABLE#
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
  $CAFF,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB01,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$0A,,4(n,{ #Nn | #UDG($D6FC,attr=$43) })
. UDGTABLE#
  $CB04,$01 Terminator.

b $CB05 Graphic ID #N$2B
@ $CB05 label=graphic_2b
M $CB05,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CB05,$01
W $CB06,$02
  $CB08,$02 Attribute: #COLOUR(#PC+$01)
  $CB0A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D23C,attr=$46) } UDGTABLE#
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
  $CB14,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB16,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D224,attr=$46) })
. UDGTABLE#
  $CB19,$01 Terminator.

b $CB1A Graphic ID #N$3F
@ $CB1A label=graphic_3f
M $CB1A,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CB1A,$01
W $CB1B,$02
  $CB1D,$02 Attribute: #COLOUR(#PC+$01)
  $CB1F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D23C,attr=$43) } UDGTABLE#
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
  $CB29,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB2B,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($D274,attr=$43) })
. UDGTABLE#
  $CB2E,$01 Terminator.

b $CB2F Graphic ID #N$30
@ $CB2F label=graphic_30
M $CB2F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CB2F,$01
W $CB30,$02
  $CB32,$02 Attribute: #COLOUR(#PC+$01)
  $CB34,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D7FC,attr=$42) } UDGTABLE#
  $CB35,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D804,attr=$42) } UDGTABLE#
  $CB36,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D80C,attr=$42) } UDGTABLE#
  $CB37,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB39,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D7BC,attr=$42) } UDGTABLE#
  $CB3A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D7DC,attr=$42) } UDGTABLE#
  $CB3B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D7C4,attr=$42) } UDGTABLE#
  $CB3C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB3E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D7F4,attr=$42) } UDGTABLE#
  $CB3F,$02 Attribute: #COLOUR(#PC+$01)
  $CB41,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D814,attr=$45) } UDGTABLE#
  $CB42,$02 Attribute: #COLOUR(#PC+$01)
  $CB44,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D7E4,attr=$42) } UDGTABLE#
  $CB45,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB47,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D7CC,attr=$42) } UDGTABLE#
  $CB48,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D7EC,attr=$42) } UDGTABLE#
  $CB49,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D7D4,attr=$42) } UDGTABLE#
  $CB4A,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB4C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D7BC,attr=$42) } UDGTABLE#
  $CB4D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D7DC,attr=$42) } UDGTABLE#
  $CB4E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D7C4,attr=$42) } UDGTABLE#
  $CB4F,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB51,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D7CC,attr=$42) } UDGTABLE#
  $CB52,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D7EC,attr=$42) } UDGTABLE#
  $CB53,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D7D4,attr=$42) } UDGTABLE#
  $CB54,$01 Terminator.

b $CB55 Graphic ID #N$31
@ $CB55 label=graphic_31
M $CB55,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CB55,$01
W $CB56,$02
  $CB58,$02 Attribute: #COLOUR(#PC+$01)
  $CB5A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D84C,attr=$42) } UDGTABLE#
  $CB5B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D854,attr=$42) } UDGTABLE#
  $CB5C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB5E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D83C,attr=$42) } UDGTABLE#
  $CB5F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D844,attr=$42) } UDGTABLE#
  $CB60,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB62,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D82C,attr=$42) } UDGTABLE#
  $CB63,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D834,attr=$42) } UDGTABLE#
  $CB64,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB66,$02 Attribute: #COLOUR(#PC+$01)
  $CB68,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D81C,attr=$45) } UDGTABLE#
  $CB69,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D824,attr=$45) } UDGTABLE#
  $CB6A,$01 Terminator.

b $CB6B Graphic ID #N$32
@ $CB6B label=graphic_32
M $CB6B,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CB6B,$01
W $CB6C,$02
  $CB6E,$02 Attribute: #COLOUR(#PC+$01)
  $CB70,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D8A4,attr=$42) } UDGTABLE#
  $CB71,$02 Attribute: #COLOUR(#PC+$01)
  $CB73,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D874,attr=$56) } UDGTABLE#
  $CB74,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D87C,attr=$56) } UDGTABLE#
  $CB75,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D884,attr=$56) } UDGTABLE#
  $CB76,$02 Attribute: #COLOUR(#PC+$01)
  $CB78,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D8B4,attr=$42) } UDGTABLE#
  $CB79,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB7B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D8AC,attr=$42) } UDGTABLE#
  $CB7C,$02 Attribute: #COLOUR(#PC+$01)
  $CB7E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D88C,attr=$56) } UDGTABLE#
  $CB7F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D894,attr=$56) } UDGTABLE#
  $CB80,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D89C,attr=$56) } UDGTABLE#
  $CB81,$02 Attribute: #COLOUR(#PC+$01)
  $CB83,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D8BC,attr=$42) } UDGTABLE#
  $CB84,$01 Terminator.

b $CB85 Graphic ID #N$73
@ $CB85 label=graphic_73
M $CB85,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CB85,$01
W $CB86,$02
  $CB88,$02 Attribute: #COLOUR(#PC+$01)
  $CB8A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$42) } UDGTABLE#
  $CB8B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$42) } UDGTABLE#
  $CB8C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$42) } UDGTABLE#
  $CB8D,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB8F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$42) } UDGTABLE#
  $CB90,$01 Action: move down one character block.
  $CB91,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$42) } UDGTABLE#
  $CB92,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB94,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$42) } UDGTABLE#
  $CB95,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$42) } UDGTABLE#
  $CB96,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA3C,attr=$42) } UDGTABLE#
  $CB97,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CB99,$02 Attribute: #COLOUR(#PC+$01)
M $CB9B,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CB9B,$01
W $CB9C,$02
  $CB9E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D8C4,attr=$56) } UDGTABLE#
  $CB9F,$01 Terminator.

b $CBA0 Graphic ID #N$33
@ $CBA0 label=graphic_33
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
  $CBAE,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $CBB0,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CBB0,$01
W $CBB1,$02
  $CBB3,$02 Attribute: #COLOUR(#PC+$01)
  $CBB5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D5FC,attr=$46) } UDGTABLE#
  $CBB6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D604,attr=$46) } UDGTABLE#
  $CBB7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D604,attr=$46) } UDGTABLE#
  $CBB8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D604,attr=$46) } UDGTABLE#
  $CBB9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D60C,attr=$46) } UDGTABLE#
  $CBBA,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CBBC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D614,attr=$46) } UDGTABLE#
  $CBBD,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D61C,attr=$46) } UDGTABLE#
  $CBBE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D61C,attr=$46) } UDGTABLE#
  $CBBF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D61C,attr=$46) } UDGTABLE#
  $CBC0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D624,attr=$46) } UDGTABLE#
  $CBC1,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CBC3,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$03,,4(n,{ #Nn | #UDG($D634,attr=$46) })
. UDGTABLE#
  $CBC6,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CBC8,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$03,,4(n,{ #Nn | #UDG($D63C,attr=$46) })
. UDGTABLE#
M $CBCB,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CBCB,$01
W $CBCC,$02
  $CBCE,$02 Attribute: #COLOUR(#PC+$01)
  $CBD0,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CBD2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D8D4,attr=$7A) } UDGTABLE#
  $CBD3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D8DC,attr=$7A) } UDGTABLE#
  $CBD4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D8E4,attr=$7A) } UDGTABLE#
  $CBD5,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CBD7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D8EC,attr=$7A) } UDGTABLE#
  $CBD8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D8F4,attr=$7A) } UDGTABLE#
  $CBD9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D8FC,attr=$7A) } UDGTABLE#
  $CBDA,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CBDC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D904,attr=$7A) } UDGTABLE#
  $CBDD,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D90C,attr=$7A) } UDGTABLE#
  $CBDE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D914,attr=$7A) } UDGTABLE#
  $CBDF,$01 Terminator.

b $CBE0 Graphic ID #N$34
@ $CBE0 label=graphic_34
M $CBE0,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CBE0,$01
W $CBE1,$02
  $CBE3,$02 Attribute: #COLOUR(#PC+$01)
  $CBE5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D85C,attr=$43) } UDGTABLE#
  $CBE6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D864,attr=$43) } UDGTABLE#
  $CBE7,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CBE9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D83C,attr=$43) } UDGTABLE#
  $CBEA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D844,attr=$43) } UDGTABLE#
  $CBEB,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CBED,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D82C,attr=$43) } UDGTABLE#
  $CBEE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D834,attr=$43) } UDGTABLE#
  $CBEF,$01 Terminator.

b $CBF0 Graphic ID #N$35
@ $CBF0 label=graphic_35
M $CBF0,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CBF0,$01
W $CBF1,$02
  $CBF3,$02 Attribute: #COLOUR(#PC+$01)
  $CBF5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D91C,attr=$45) } UDGTABLE#
  $CBF6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D924,attr=$45) } UDGTABLE#
  $CBF7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D92C,attr=$45) } UDGTABLE#
  $CBF8,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CBFA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D934,attr=$45) } UDGTABLE#
  $CBFB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D93C,attr=$45) } UDGTABLE#
  $CBFC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D944,attr=$45) } UDGTABLE#
  $CBFD,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CBFF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D94C,attr=$45) } UDGTABLE#
  $CC00,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D954,attr=$45) } UDGTABLE#
  $CC01,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D95C,attr=$45) } UDGTABLE#
  $CC02,$01 Terminator.

b $CC03 Graphic ID #N$36
@ $CC03 label=graphic_36
M $CC03,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CC03,$01
W $CC04,$02
  $CC06,$02 Attribute: #COLOUR(#PC+$01)
  $CC08,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c15 Columns } { #FOR$01,$0F(n,=h #Nn, | ) }
. { #FOR$01,$0F(n,#UDG($E0DC,attr=$4F), | ) }
. UDGTABLE#
  $CC0B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC0D,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c15 Columns } { #FOR$01,$0F(n,=h #Nn, | ) }
. { #FOR$01,$0F(n,#UDG($E0DC,attr=$4F), | ) }
. UDGTABLE#
  $CC10,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC12,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c15 Columns } { #FOR$01,$0F(n,=h #Nn, | ) }
. { #FOR$01,$0F(n,#UDG($E0DC,attr=$4F), | ) }
. UDGTABLE#
  $CC15,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $CC17,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CC17,$01
W $CC18,$02
  $CC1A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D994,attr=$4F) } UDGTABLE#
  $CC1B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D99C,attr=$4F) } UDGTABLE#
  $CC1C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9A4,attr=$4F) } UDGTABLE#
  $CC1D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9AC,attr=$4F) } UDGTABLE#
  $CC1E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9D4,attr=$4F) } UDGTABLE#
  $CC1F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9DC,attr=$4F) } UDGTABLE#
  $CC20,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9B4,attr=$4F) } UDGTABLE#
  $CC21,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9BC,attr=$4F) } UDGTABLE#
  $CC22,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9C4,attr=$4F) } UDGTABLE#
  $CC23,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9CC,attr=$4F) } UDGTABLE#
  $CC24,$01 Terminator.

b $CC25 Graphic ID #N$37
@ $CC25 label=graphic_37
M $CC25,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CC25,$01
W $CC26,$02
  $CC28,$02 Attribute: #COLOUR(#PC+$01)
  $CC2A,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($E0DC,attr=$57), | ) }
. UDGTABLE#
  $CC2D,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $CC2F,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CC2F,$01
W $CC30,$02
  $CC32,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D964,attr=$57) } UDGTABLE#
  $CC33,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D96C,attr=$57) } UDGTABLE#
  $CC34,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D974,attr=$57) } UDGTABLE#
  $CC35,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D97C,attr=$57) } UDGTABLE#
  $CC36,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D984,attr=$57) } UDGTABLE#
  $CC37,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D98C,attr=$57) } UDGTABLE#
  $CC38,$01 Terminator.

b $CC39 Graphic ID #N$3D
@ $CC39 label=graphic_3d
M $CC39,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CC39,$01
W $CC3A,$02
  $CC3C,$02 Attribute: #COLOUR(#PC+$01)
  $CC3E,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($DB44,attr=$45) })
. UDGTABLE#
  $CC41,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC43,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($DB4C,attr=$45) })
. UDGTABLE#
  $CC46,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC48,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($DB54,attr=$45) })
. UDGTABLE#
  $CC4B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC4D,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($DB44,attr=$45) })
. UDGTABLE#
  $CC50,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC52,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($DB4C,attr=$45) })
. UDGTABLE#
  $CC55,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC57,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$05,,4(n,{ #Nn | #UDG($DB54,attr=$45) })
. UDGTABLE#
  $CC5A,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC5C,$01 Terminator.

b $CC5D Graphic ID #N$42
@ $CC5D label=graphic_42
M $CC5D,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CC5D,$01
W $CC5E,$02
  $CC60,$02 Attribute: #COLOUR(#PC+$01)
  $CC62,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA4C,attr=$45) } UDGTABLE#
  $CC63,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA54,attr=$45) } UDGTABLE#
  $CC64,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA5C,attr=$45) } UDGTABLE#
  $CC65,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC67,$02 Attribute: #COLOUR(#PC+$01)
  $CC69,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($DA1C,attr=$44) })
. UDGTABLE#
  $CC6C,$02 Attribute: #COLOUR(#PC+$01)
  $CC6E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA04,attr=$47) } UDGTABLE#
  $CC6F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA34,attr=$47) } UDGTABLE#
  $CC70,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA0C,attr=$47) } UDGTABLE#
  $CC71,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC73,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9F4,attr=$47) } UDGTABLE#
  $CC74,$01 Action: move down one character block.
  $CC75,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9FC,attr=$47) } UDGTABLE#
  $CC76,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC78,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9E4,attr=$47) } UDGTABLE#
  $CC79,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA2C,attr=$47) } UDGTABLE#
  $CC7A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9EC,attr=$47) } UDGTABLE#
  $CC7B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CC7D,$02 Attribute: #COLOUR(#PC+$01)
  $CC7F,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($DA14,attr=$45) })
. UDGTABLE#
  $CC82,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($DA1C,attr=$45) })
. UDGTABLE#
  $CC85,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA24,attr=$45) } UDGTABLE#
  $CC86,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $CC88,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CC88,$01
W $CC89,$02
  $CC8B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E25C,attr=$45) } UDGTABLE#
  $CC8C,$01 Terminator.

b $CC8D Graphic ID #N$41
@ $CC8D label=graphic_41
M $CC8D,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CC8D,$01
W $CC8E,$02
  $CC90,$02 Attribute: #COLOUR(#PC+$01)
  $CC92,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($DB5C,attr=$44) })
. UDGTABLE#
  $CC95,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB3C,attr=$44) } UDGTABLE#
  $CC96,$01 Terminator.

b $CC97 Graphic ID #N$3E
@ $CC97 label=graphic_3e
M $CC97,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CC97,$01
W $CC98,$02
  $CC9A,$02 Attribute: #COLOUR(#PC+$01)
  $CC9C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB64,attr=$46) } UDGTABLE#
  $CC9D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB6C,attr=$46) } UDGTABLE#
  $CC9E,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB74,attr=$46) } UDGTABLE#
  $CC9F,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCA1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB7C,attr=$46) } UDGTABLE#
  $CCA2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB84,attr=$46) } UDGTABLE#
  $CCA3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB8C,attr=$46) } UDGTABLE#
  $CCA4,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCA6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB94,attr=$46) } UDGTABLE#
  $CCA7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB9C,attr=$46) } UDGTABLE#
  $CCA8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DBA4,attr=$46) } UDGTABLE#
  $CCA9,$01 Terminator.

b $CCAA Graphic ID #N$40
@ $CCAA label=graphic_40
M $CCAA,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CCAA,$01
W $CCAB,$02
  $CCAD,$02 Attribute: #COLOUR(#PC+$01)
  $CCAF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0DC,attr=$46) } UDGTABLE#
  $CCB0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E0DC,attr=$46) } UDGTABLE#
  $CCB1,$01 Terminator.

b $CCB2 Graphic ID #N$4C
@ $CCB2 label=graphic_4c
M $CCB2,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CCB2,$01
W $CCB3,$02
  $CCB5,$02 Attribute: #COLOUR(#PC+$01)
  $CCB7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DAEC,attr=$47) } UDGTABLE#
  $CCB8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DAF4,attr=$47) } UDGTABLE#
  $CCB9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DAF4,attr=$47) } UDGTABLE#
  $CCBA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DAFC,attr=$47) } UDGTABLE#
  $CCBB,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCBD,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB04,attr=$47) } UDGTABLE#
  $CCBE,$01 Action: move down one character block.
  $CCBF,$01 Action: move down one character block.
  $CCC0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB0C,attr=$47) } UDGTABLE#
  $CCC1,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCC3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB04,attr=$47) } UDGTABLE#
  $CCC4,$01 Action: move down one character block.
  $CCC5,$01 Action: move down one character block.
  $CCC6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB0C,attr=$47) } UDGTABLE#
  $CCC7,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCC9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DAEC,attr=$47) } UDGTABLE#
  $CCCA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DAF4,attr=$47) } UDGTABLE#
  $CCCB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DAF4,attr=$47) } UDGTABLE#
  $CCCC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DAFC,attr=$47) } UDGTABLE#
  $CCCD,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCCF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB04,attr=$47) } UDGTABLE#
  $CCD0,$01 Action: move down one character block.
  $CCD1,$01 Action: move down one character block.
  $CCD2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB0C,attr=$47) } UDGTABLE#
  $CCD3,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCD5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB14,attr=$47) } UDGTABLE#
  $CCD6,$01 Action: move down one character block.
  $CCD7,$01 Action: move down one character block.
  $CCD8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB24,attr=$47) } UDGTABLE#
  $CCD9,$01 Terminator.

b $CCDA Graphic ID #N$38
@ $CCDA label=graphic_38
M $CCDA,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CCDA,$01
W $CCDB,$02
  $CCDD,$02 Attribute: #COLOUR(#PC+$01)
  $CCDF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA9C,attr=$44) } UDGTABLE#
  $CCE0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DAA4,attr=$44) } UDGTABLE#
  $CCE1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DAAC,attr=$44) } UDGTABLE#
  $CCE2,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCE4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DAB4,attr=$44) } UDGTABLE#
  $CCE5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DABC,attr=$44) } UDGTABLE#
  $CCE6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DAC4,attr=$44) } UDGTABLE#
  $CCE7,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCE9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DAB4,attr=$44) } UDGTABLE#
  $CCEA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DACC,attr=$44) } UDGTABLE#
  $CCEB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DAC4,attr=$44) } UDGTABLE#
  $CCEC,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCEE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DAD4,attr=$44) } UDGTABLE#
  $CCEF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DADC,attr=$44) } UDGTABLE#
  $CCF0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DAE4,attr=$44) } UDGTABLE#
  $CCF1,$01 Terminator.

b $CCF2 Graphic ID #N$39
@ $CCF2 label=graphic_39
M $CCF2,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CCF2,$01
W $CCF3,$02
  $CCF5,$02 Attribute: #COLOUR(#PC+$01)
  $CCF7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB2C,attr=$44) } UDGTABLE#
  $CCF8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DAEC,attr=$44) } UDGTABLE#
  $CCF9,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DAF4,attr=$44) } UDGTABLE#
  $CCFA,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DAFC,attr=$44) } UDGTABLE#
  $CCFB,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CCFD,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB34,attr=$44) } UDGTABLE#
  $CCFE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB04,attr=$44) } UDGTABLE#
  $CCFF,$01 Action: move down one character block.
  $CD00,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB0C,attr=$44) } UDGTABLE#
  $CD01,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD03,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB04,attr=$44) } UDGTABLE#
  $CD04,$01 Action: move down one character block.
  $CD05,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB0C,attr=$44) } UDGTABLE#
  $CD06,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD08,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB14,attr=$44) } UDGTABLE#
  $CD09,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB1C,attr=$44) } UDGTABLE#
  $CD0A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DB24,attr=$44) } UDGTABLE#
M $CD0B,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CD0B,$01
W $CD0C,$02
  $CD0E,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD10,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$02,,4(n,{ #Nn | #UDG($E0DC,attr=$44) })
. UDGTABLE#
  $CD13,$01 Terminator.

b $CD14 Graphic ID #N$67
@ $CD14 label=graphic_67
M $CD14,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CD14,$01
W $CD15,$02
  $CD17,$02 Attribute: #COLOUR(#PC+$01)
  $CD19,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($E0DC,attr=$72), | ) }
. UDGTABLE#
  $CD1C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD1E,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($E0DC,attr=$72), | ) }
. UDGTABLE#
  $CD21,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD23,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c5 Columns } { #FOR$01,$05(n,=h #Nn, | ) }
. { #FOR$01,$05(n,#UDG($E0DC,attr=$72), | ) }
. UDGTABLE#
  $CD26,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $CD28,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CD28,$01
W $CD29,$02
  $CD2B,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF34,attr=$72) } UDGTABLE#
  $CD2C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF3C,attr=$72) } UDGTABLE#
  $CD2D,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DF3C,attr=$72) } UDGTABLE#
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
  $CD37,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD39,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFE4,attr=$46) } UDGTABLE#
  $CD3A,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD3C,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c6 Columns } { #FOR$01,$06(n,=h #Nn, | ) }
. { #FOR$01,$06(n,#UDG($DFCC,attr=$46), | ) }
. UDGTABLE#
  $CD3F,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD41,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DFDC,attr=$46) } UDGTABLE#
  $CD42,$01 Terminator.

b $CD43 Graphic ID #N$75
@ $CD43 label=graphic_75
M $CD43,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CD43,$01
W $CD44,$02
  $CD46,$02 Attribute: #COLOUR(#PC+$01)
  $CD48,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA04,attr=$43) } UDGTABLE#
  $CD49,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c30 Columns } { #FOR$01,$1E(n,=h #Nn, | ) }
. { #FOR$01,$1E(n,#UDG($DA34,attr=$43), | ) }
. UDGTABLE#
  $CD4C,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($DA0C,attr=$43) } UDGTABLE#
  $CD4D,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD4F,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9F4,attr=$43) } UDGTABLE#
  $CD50,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c30 Columns } { #FOR$01,$1E(n,=h #Nn, | ) }
. { #FOR$01,$1E(n,#UDG($DA3C,attr=$43), | ) }
. UDGTABLE#
  $CD53,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9FC,attr=$43) } UDGTABLE#
  $CD54,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD56,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9E4,attr=$43) } UDGTABLE#
  $CD57,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c30 Columns } { #FOR$01,$1E(n,=h #Nn, | ) }
. { #FOR$01,$1E(n,#UDG($DA2C,attr=$43), | ) }
. UDGTABLE#
  $CD5A,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($D9EC,attr=$43) } UDGTABLE#
  $CD5B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD5D,$02 Attribute: #COLOUR(#PC+$01)
  $CD5F,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($DA94,attr=$6)#UDG($DA8C,attr=$6), | ) }
. UDGTABLE#
  $CD63,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD65,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($DA8C,attr=$6)#UDG($DA94,attr=$6), | ) }
. UDGTABLE#
  $CD69,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD6B,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($DA94,attr=$6)#UDG($DA8C,attr=$6), | ) }
. UDGTABLE#
  $CD6F,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD71,$04 Tile sprites #N(#PEEK(#PC+$02)) and #N(#PEEK(#PC+$03)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c16 Columns } { #FOR$01,$10(n,=h #Nn, | ) }
. { #FOR$01,$10(n,#UDG($DA8C,attr=$6)#UDG($DA94,attr=$6), | ) }
. UDGTABLE#
  $CD75,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD77,$02 Attribute: #COLOUR(#PC+$01)
M $CD79,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CD79,$01
W $CD7A,$02
  $CD7C,$03 Tile sprite #N(#PEEK(#PC+$02)) horizontally #N(#PEEK(#PC+$01)) times.
. #UDGTABLE { =h,c32 Columns } { #FOR$01,$20(n,=h #Nn, | ) }
. { #FOR$01,$20(n,#UDG($E0CC,attr=$42), | ) }
. UDGTABLE#
  $CD7F,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD81,$02 Attribute: #COLOUR(#PC+$01)
  $CD83,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($E07C,attr=$46) })
. UDGTABLE#
  $CD86,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($E08C,attr=$46) })
. UDGTABLE#
  $CD89,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD8B,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($E07C,attr=$46) })
. UDGTABLE#
  $CD8E,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($E08C,attr=$46) })
. UDGTABLE#
  $CD91,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CD93,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$01,,4(n,{ #Nn | #UDG($E07C,attr=$46) })
. UDGTABLE#
  $CD96,$03 Tile sprite #N(#PEEK(#PC+$02)) vertically #N(#PEEK(#PC+$01)) times.
. #UDGTABLE {{ =h Row | =h Graphic }}
. #FOR$01,$04,,4(n,{ #Nn | #UDG($E08C,attr=$46) })
. UDGTABLE#
  $CD99,$02 Attribute: #COLOUR(#PC+$01)
  $CD9B,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
M $CD9D,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CD9D,$01
W $CD9E,$02
  $CDA0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E244,attr=$5F) } UDGTABLE#
  $CDA1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E224,attr=$5F) } UDGTABLE#
  $CDA2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E234,attr=$5F) } UDGTABLE#
  $CDA3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E26C,attr=$5F) } UDGTABLE#
  $CDA4,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E254,attr=$5F) } UDGTABLE#
  $CDA5,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E144,attr=$5F) } UDGTABLE#
  $CDA6,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E214,attr=$5F) } UDGTABLE#
  $CDA7,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E204,attr=$5F) } UDGTABLE#
  $CDA8,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E24C,attr=$5F) } UDGTABLE#
  $CDA9,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $CDAB,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E244,attr=$5F) } UDGTABLE#
  $CDAC,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E224,attr=$5F) } UDGTABLE#
  $CDAD,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E234,attr=$5F) } UDGTABLE#
  $CDAE,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E26C,attr=$5F) } UDGTABLE#
  $CDAF,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E254,attr=$5F) } UDGTABLE#
  $CDB0,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E144,attr=$5F) } UDGTABLE#
  $CDB1,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E214,attr=$5F) } UDGTABLE#
  $CDB2,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E204,attr=$5F) } UDGTABLE#
  $CDB3,$01 Tile #N(#PEEK(#PC)): #UDGTABLE { #UDG($E24C,attr=$5F) } UDGTABLE#
  $CDB4,$01 Terminator.

w $CDB5 Table: Room Data
@ $CDB5 label=Table_RoomData
  $CDB5,$02 #LET(room=#PEEK(#PC)+#PEEK(#PC+$01)*$100)#R({room})(#D({room})).
L $CDB5,$02,$21

b $CDF7 Room #N$00: Town Square
D $CDF7 #BACKGROUND($00)(town-square)
  $CDF7,$02 #ROOM(#PC).
L $CDF7,$02,$05

b $CE01 Room #N$01: Stamp Street
D $CE01 #BACKGROUND($01)(stamp-street)
  $CE01,$02 #ROOM(#PC).
L $CE01,$02,$12

b $CE25 Room #N$02: The Post Office
D $CE25 #BACKGROUND($02)(the-post-office)
  $CE25,$02 #ROOM(#PC).
L $CE25,$02,$09

b $CE37 Room #N$03: Market Street
D $CE37 #BACKGROUND($03)(market-street)
  $CE37,$02 #ROOM(#PC).
L $CE37,$02,$19

b $CE69 Room #N$04: The Super Market
D $CE69 #BACKGROUND($04)(the-super-market)
  $CE69,$02 #ROOM(#PC).
L $CE69,$02,$09

b $CE7B Room #N$05: The Park
D $CE7B #BACKGROUND($05)(the-park)
  $CE7B,$02 #ROOM(#PC).
L $CE7B,$02,$07

b $CE89 Room #N$06: Wobbly Walk
D $CE89 #BACKGROUND($06)(wobbly-walk)
  $CE89,$02 #ROOM(#PC).
L $CE89,$02,$12

b $CEAD Room #N$07: Rubble Road
D $CEAD #BACKGROUND($07)(rubble-road)
  $CEAD,$02 #ROOM(#PC).
L $CEAD,$02,$0E

b $CEC9 Room #N$08: Wall Street
D $CEC9 #BACKGROUND($08)(wall-street)
  $CEC9,$02 #ROOM(#PC).
L $CEC9,$02,$0C

b $CEE1 Room #N$09: Pete Street
D $CEE1 #BACKGROUND($09)(pete-street)
  $CEE1,$02 #ROOM(#PC).
L $CEE1,$02,$0C

b $CEF9 Room #N$0A: The Work Shed
D $CEF9 #BACKGROUND($0A)(the-work-shed)
  $CEF9,$02 #ROOM(#PC).
L $CEF9,$02,$08

b $CF09 Room #N$0B: School Lane
D $CF09 #BACKGROUND($0B)(school-lane)
  $CF09,$02 #ROOM(#PC).
L $CF09,$02,$10

b $CF29 Room #N$0C: The School
D $CF29 #BACKGROUND($0C)(the-school)
  $CF29,$02 #ROOM(#PC).
L $CF29,$02,$10

b $CF49 Room #N$0D: Baker Street
D $CF49 #BACKGROUND($0D)(baker-street)
  $CF49,$02 #ROOM(#PC).
L $CF49,$02,$14

b $CF71 Room #N$0E: The Bakers
D $CF71 #BACKGROUND($0E)(the-bakers)
  $CF71,$02 #ROOM(#PC).
L $CF71,$02,$13

b $CF97 Room #N$0F: The Pub
D $CF97 #BACKGROUND($0F)(the-pub)
  $CF97,$02 #ROOM(#PC).
L $CF97,$02,$0F

b $CFB5 Room #N$10: Motor Way
D $CFB5 #BACKGROUND($10)(motor-way)
  $CFB5,$02 #ROOM(#PC).
L $CFB5,$02,$12

b $CFD9 Room #N$11: The Laboratory
D $CFD9 #BACKGROUND($11)(the-laboratory)
  $CFD9,$02 #ROOM(#PC).
L $CFD9,$02,$0B

b $CFEF Room #N$12: The Garage
D $CFEF #BACKGROUND($12)(the-garage)
  $CFEF,$02 #ROOM(#PC).
L $CFEF,$02,$0D

b $D009 Room #N$13: Reference Road
D $D009 #BACKGROUND($13)(reference-road)
  $D009,$02 #ROOM(#PC).
L $D009,$02,$18

b $D039 Room #N$14: The Library
D $D039 #BACKGROUND($14)(the-library)
  $D039,$02 #ROOM(#PC).
L $D039,$02,$0F

b $D057 Room #N$15: Penny Lane
D $D057 #BACKGROUND($15)(penny-lane)
  $D057,$02 #ROOM(#PC).
L $D057,$02,$1A

b $D08B Room #N$16: The Bank
D $D08B #BACKGROUND($16)(the-bank)
  $D08B,$02 #ROOM(#PC).
L $D08B,$02,$12

b $D0AF Room #N$17: Wally's House
D $D0AF #BACKGROUND($17)(wallys-house)
  $D0AF,$02 #ROOM(#PC).
L $D0AF,$02,$0A

b $D0C3 Room #N$18: Meat Street
D $D0C3 #BACKGROUND($18)(meat-street)
  $D0C3,$02 #ROOM(#PC).
L $D0C3,$02,$12

b $D0E7 Room #N$19: The Butchers
D $D0E7 #BACKGROUND($19)(the-butchers)
  $D0E7,$02 #ROOM(#PC).
L $D0E7,$02,$11

b $D109 Room #N$1A: Trunk Road
D $D109 #BACKGROUND($1A)(trunk-road)
  $D109,$02 #ROOM(#PC).
L $D109,$02,$0E

b $D125 Room #N$1B: The Zoo
D $D125 #BACKGROUND($1B)(the-zoo)
  $D125,$02 #ROOM(#PC).
L $D125,$02,$08

b $D135 Room #N$1C: Rail Road
D $D135 #BACKGROUND($1C)(rail-road)
  $D135,$02 #ROOM(#PC).
L $D135,$02,$0F

b $D153 Room #N$1D: The Station
D $D153 #BACKGROUND($1D)(the-station)
  $D153,$02 #ROOM(#PC).
L $D153,$02,$0D

b $D16D Room #N$1E: The Docks
D $D16D #BACKGROUND($1E)(the-docks)
  $D16D,$02 #ROOM(#PC).
L $D16D,$02,$08

b $D17D Room #N$1F: The Sewer
D $D17D #BACKGROUND($1F)(the-sewer)
  $D17D,$02 #ROOM(#PC).
L $D17D,$02,$0A

b $D191 Room #N$20: The Cave
D $D191 #BACKGROUND($20)(the-cave)
  $D191,$02 #ROOM(#PC).
L $D191,$02,$15

b $D1BB

b $D1BC Graphics
@ $D1BC label=Graphics
N $DFDC This is where the font UDGs start, so #R$E0DC is "SPACE" (ASCII code #N$20).
@ $DFDC label=Font
  $D1BC,$08 #UDG(#PC)
L $D1BC,$08,$228

c $E2FC
  $E2FC,$06 Jump to #R$E30B if #REGiy+#N$00 is zero.
  $E302,$04 If it is #N$03 jump to #R$E30B.
  $E306,$04 Write #N$00 to #REGiy-#N$19.
  $E30A,$01 Return.

  $E30B,$05 Return if #REGiy-#N$19 is not zero.
  $E310,$05 Write #N$01 to #REGiy-#N$19.
  $E315,$07 Return if *#R$B951 and *#REGiy+#N$0F are not equal.
N $E31C Play the "walking" sound.
  $E31C,$03 #REGbc=#N$0701.
  $E31F,$03 #REGde=#N$0F01.
  $E322,$03 #REGhl=#N$0404.
  $E325,$03 Call #R$E3D3.
  $E328,$01 Return.

c $E329
  $E329,$08 #REGa=*#R$A838-(*#REGiy+#N$05)-#N$0D.
  $E331,$03
  $E334,$08 #REGa=*#R$A839-(*#REGiy+#N$0A)-#N$1C.
  $E33C,$03

  $E33F,$05 Return if #R$B55F is not zero.
  $E344,$01 Switch to the shadow registers.
  $E345,$03 #REGbc=#N$640A.
  $E348,$03 #REGde=#N$0101.
  $E34B,$03 #REGhl=#N$6401.
  $E34E,$03 Call #R$E3D3.
  $E351,$0B *#REGiy+#N$14-=*#R$F26E.
  $E35C,$04 If *#REGiy+#N$14 <= #N$00 jump to #R$E362.
  $E360,$02 Jump to #R$E36C.
N $E362 A life has been "spent" so refill the endurance meter to the top.
  $E362,$04 Write #N$80 to *#REGiy+#N$14.
N $E366 Lose one heart...
  $E366,$03 Decrease *#REGiy+#N$2D by one.
N $E369 If the players hearts are now zero the game is over.
  $E369,$03 If current players hearts (*#REGiy+#N$2D) are now zero jump to #R$B451.
  $E36C,$01 Switch back to the normal registers.

  $E36D,$01 Switch to the shadow registers.
N $E36E Draw the hearts to indicate the number of lives remaining.
  $E36E,$02 #REGc=#N$46 (#COLOUR$46).
  $E370,$06 Write #R$DFDC to #R$B7E8(#N$B7E9).
  $E376,$03 #REGde=#N$021C (screen co-ordinates).
  $E379,$03 #REGl=*#REGiy+#N$2D (current players hearts).
  $E37C,$01 Decrease #REGl by one.
  $E37D,$02 #REGb=#N$02 (counter).
  $E37F,$02
  $E381,$02 #REGa=#R$E0D4(#N$1F).

  $E386,$03 Call #R$B7BA.
  $E389,$02 Increment #REGe by two.
N $E392 Draws the endurance ribbon.
  $E392,$02 #REGc=#N$43 (#COLOUR$43).
  $E394,$03 #REGde=#N$0310.
  $E397,$02 #REGl=#R$E2BC(#N$5C).
  $E399,$03 #REGb=*#REGiy+#N$14.

  $E3A3,$03 Call #R$B7BA.

  $E3B2,$01 Switch back to the normal registers.
  $E3B3,$01 Return.
  $E3B4,$02 #REGa=#N$20.
  $E3B6,$03 Call #R$B7BA.
  $E3B9,$01 Increment #REGe by one.
  $E3BA,$02 Jump to #R$E3AE.

  $E3BC,$02 #REGa+=#N$08.

  $E3C6,$02 #REGa=#N$5D.
  $E3C8,$02 Jump to #R$E3CC.

  $E3CA,$02 #REGa=#N$60.
  $E3CC,$01 #REGa+=#REGb.
  $E3CD,$03 Call #R$B7BA.
  $E3D0,$01 Increment #REGe by one.
  $E3D1,$02 Jump to #R$E3AE.

c $E3D3 Play Wave Sequence
@ $E3D3 label=PlayWaveSequence
  $E3D3,$03 #REGb-=#REGh.
  $E3D6,$03 Call #R$E3EC.
  $E3D9,$01 Decrease #REGc by one.
  $E3DA,$02 If #REGc is not zero, jump to #R$E3D3.
  $E3DC,$03 Call #R$E3EC.
  $E3DF,$01 Decrease #REGd by one.
  $E3E0,$02 If #REGd is not zero, jump to #R$E3DC.
  $E3E2,$03 #REGb+=#REGl.
  $E3E5,$03 Call #R$E3EC.
  $E3E8,$01,$01 Decrease #REGe by one.
  $E3E9,$02 If #REGe is not zero, jump to #R$E3E2.
  $E3EB,$01 Return.

c $E3EC Play square wave sound.
@ $E3EC label=PlaySquareWave
N $E3EC Flip speaker on (set bit 4).
M $E3EC,$04 #REGa=#N$10 (speaker on = bit 4).
  $E3EC,$02,b$01 #REGa=#N$10 (speaker on = bit 4).
  $E3F0,$01 Stash #REGbc on the stack.
@ $E3F1 label=PlaySquareWave_Loop
  $E3F1,$02 Decrease duration by one and loop back to #R$E3F1 until counter is zero.
  $E3F3,$01 Restore #REGbc from the stack.
N $E3F4 Flip speaker off (unset bit 4).
M $E3F4,$04 #REGa=#N$00 (speaker off).
  $E3F4,$02,b$01
  $E3F6,$02 Send to port #N$FE.
  $E3F8,$01 Stash #REGbc on the stack.
@ $E3F9 label=Silence_Loop
  $E3F9,$02 Decrease duration by one and loop back to #R$E3F9 until counter is zero.
  $E3FB,$01 Restore #REGbc from the stack.
  $E3FC,$01 Return.

c $E3FD Print Banner
@ $E3FD label=PrintBanner
N $E3FD Clear the banner screen buffer area.
  $E3FD,$03 Call #R$B931.
N $E400 Display the banner.
  $E400,$03 #REGhl=#R$7E3F.
  $E403,$03 #REGde=#N($0010,$04,$04).
  $E406,$03 Call #R$B84B.
N $E409 Display the current character name in the banner.
  $E409,$02 #REGh=#N$7C.
  $E40B,$03 #REGl=#REGiy-#N$23.
  $E40E,$02 #REGc=#N$45 (attribute: #COLOUR$45).
  $E410,$03 #REGde=#N($001B,$04,$04) (screen co-ordinates).
  $E413,$03 Call #R$B84B.
N $E416 Displays the endurance meter and lives.
  $E416,$03 Call #R$E36D.
N $E419 Display the currently held items.
  $E419,$03 Call #R$E420.
  $E41C,$01 Return.

c $E41D Print Characters Items
  $E41D,$03 Call #R$E77A.
@ $E420 label=PrintCharacterItems
N $E420 Fetch item 1 (#REGiy+#N$50) for the current character and calculate an offset.
  $E420,$05 #REGe=(#REGiy+#N$50)*#N$02.
  $E425,$02 #REGd=#N$00.
  $E427,$04 #REGhl=#R$E728+#REGde.
N $E42B Fetch the item 1 label memory location.
  $E42B,$01 #REGe=*#REGhl.
  $E42C,$01 Increment #REGhl by one.
  $E42D,$01 #REGd=*#REGhl.
N $E42E Fetch item 2 (#REGiy+#N$55) for the current character and calculate an offset.
  $E42E,$05 #REGc=(#REGiy+#N$55)*#N$02.
  $E433,$02 #REGb=#N$00.
  $E435,$04 #REGhl=#R$E728+#REGbc.
N $E439 Fetch the item 2 label memory location.
  $E439,$01 #REGc=*#REGhl.
  $E43A,$01 Increment #REGhl by one.
  $E43B,$01 #REGb=*#REGhl.
  $E43C,$01 Stash the item 2 label memory location (#REGbc) on the stack.
  $E43D,$01 Switch the #REGde and #REGhl registers.
  $E43E,$07 Write #R$DFDC to #R$B7E8(#N$B7E9).
N $E445 Print the item labels to the screen.
  $E445,$03 #REGde=#N($0003,$04,$04) (screen co-ordinates).
  $E448,$02 #REGc=#N$43 (#COLOUR$43).
  $E44A,$03 Call #R$E468.
  $E44D,$01 Restore the item 2 label memory location from the stack.
  $E44E,$03 #REGde=#N$0203 (screen co-ordinates).
  $E451,$02 #REGc=#N$45 (#COLOUR$45).
  $E453,$03 Call #R$E468.
N $E456 Fetch item 1 (#REGiy+#N$50) for the current character.
  $E456,$03 #REGa=(#REGiy+#N$50).
  $E459,$03 #REGde=#N($0000,$04,$04) (screen co-ordinates).
  $E45C,$03 Call #R$B77B.
N $E45F Fetch item 2 (#REGiy+#N$55) for the current character.
  $E45F,$03 #REGa=(#REGiy+#N$55).
  $E462,$02 #REGd=#N$02 (update screen co-ordinates).
  $E464,$03 Call #R$B77B.
  $E467,$01 Return.

c $E468 Draw Character Item Label
@ $E468 label=DrawCharacterItemLabel
  $E468,$03 Call #R$B84B.
  $E46B,$02 #REGc=#N$07.
N $E46D Check to see if there is a task associated with this item.
  $E46D,$04 Return if *#REGhl is not #N$F4 (control character).
  $E471,$01 Increment #REGhl by one.
N $E472 Fetch the task ID.
  $E472,$01 #REGa=*#REGhl.
  $E473,$01 Increment #REGhl by one.
  $E474,$03 Call #R$EC1D.
  $E477,$03 If the task has completed, jump to #R$B84B.
N $E47A The task has not yet been completed, so move onto the next messaging label.
N $E47A This works as the items are stored as "completed label"+"termintor", "not completed label"+"termintor".
  $E47A,$01 Stash #REGbc on the stack.
  $E47B,$02 #REGb=#N$FF.
  $E47D,$01 #REGa=#REGb.
  $E47E,$02 Find the next messaging label.
  $E480,$01 Restore #REGbc from the stack.
  $E481,$03 Jump to #R$B84B.

t $E484 Messaging: The Plunger
  $E484,$0B #FONT:(THE PLUNGER)$E0DC,attr=$45(the-plunger)
B $E48F,$01 Terminator.

t $E490 Messaging: The Letter A
  $E490,$0A #FONT:(THE LETTER)$E0DC,attr=$45(the-letter)
B $E49A,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $E49C,$01 #FONT:(A)$E0DC,attr=$45(the-letter-a)
B $E49D,$01 Terminator.

t $E49E Messaging: Book Two
  $E49E,$08 #FONT:(BOOK TWO)$E0DC,attr=$45(book-two)
B $E4A6,$01 Terminator.

t $E4A7 Messaging: The Sand
  $E4A7,$08 #FONT:(THE SAND)$E0DC,attr=$45(the-sand)
B $E4AF,$01 Terminator.

t $E4B0 Messaging: The Battery
  $E4B0,$0B #FONT:(THE BATTERY)$E0DC,attr=$45(the-battery)
B $E4BB,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
B $E4BD,$01 Terminator.

t $E4BE Messaging: Charged
B $E4BE,$02 Check task: #R($EC0F+#PEEK(#PC+$01)).
  $E4C0,$07 #FONT:(CHARGED)$E0DC,attr=$45(charged)
B $E4C7,$01 Terminator.

t $E4C8 Messaging: Flat
  $E4C8,$04 #FONT:(FLAT)$E0DC,attr=$45(flat)
B $E4CC,$01 Terminator.

t $E4CD Messaging: The Letter K
  $E4CD,$0A #FONT:(THE LETTER)$E0DC,attr=$45(the-letter)
B $E4D7,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $E4D9,$01 #FONT:(K)$E0DC,attr=$45(the-letter-k)
B $E4DA,$01 Terminator.

t $E4DB Messaging: The Cement
  $E4DB,$0A #FONT:(THE CEMENT)$E0DC,attr=$45(the-cement)
B $E4E5,$01 Terminator.

t $E4E6 Messaging: Book Three
  $E4E6,$0A #FONT:(BOOK THREE)$E0DC,attr=$45(book-three)
B $E4F0,$01 Terminator.

t $E4F1 Messaging: The Trowel
  $E4F1,$0A #FONT:(THE TROWEL)$E0DC,attr=$45(the-trowel)
B $E4FB,$01 Terminator.

t $E4FC Messaging: The Matches
  $E4FC,$0B #FONT:(THE MATCHES)$E0DC,attr=$45(the-matches)
B $E507,$01 Terminator.

t $E508 Messaging: The Cracked Insulator
  $E508,$0B #FONT:(THE CRACKED)$E0DC,attr=$45(the-cracked)
B $E513,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $E515,$09 #FONT:(INSULATOR)$E0DC,attr=$45(insulator)
B $E51E,$01 Terminator.

t $E51F Messaging: Book One
  $E51F,$08 #FONT:(BOOK ONE)$E0DC,attr=$45(book-one)
B $E527,$01 Terminator.

t $E528 Messaging: The Monkey Nuts
  $E528,$0A #FONT:(THE MONKEY)$E0DC,attr=$45(the-monkey)
B $E532,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $E534,$04 #FONT:(NUTS)$E0DC,attr=$45(nuts)
B $E538,$01 Terminator.

t $E539 Messaging: The Money
  $E539,$09 #FONT:(THE MONEY)$E0DC,attr=$45(the-money)
B $E542,$01 Terminator.

t $E543 Messaging: Superglue
  $E543,$09 #FONT:(SUPERGLUE)$E0DC,attr=$45(superglue)
B $E54C,$01 Terminator.

t $E54D Messaging: The Chewing Gum
  $E54D,$0B #FONT:(THE CHEWING)$E0DC,attr=$45(the-chewing)
B $E558,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $E55A,$03 #FONT:(GUM)$E0DC,attr=$45(gum)
B $E55D,$01 Terminator.

t $E55E Messaging: The Bucket
  $E55E,$0A #FONT:(THE BUCKET)$E0DC,attr=$45(the-bucket)
B $E568,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
B $E56A,$01 Terminator.

t $E56B Messaging: Full
B $E56B,$02 Check task: #R($EC0F+#PEEK(#PC+$01)).
  $E56D,$04 #FONT:(FULL)$E0DC,attr=$45(full)
B $E571,$01 Terminator.

t $E572 Messaging: Empty
  $E572,$05 #FONT:(EMPTY)$E0DC,attr=$45(empty)
B $E577,$01 Terminator.

t $E578 Messaging: The Jump Leads
  $E578,$08 #FONT:(THE JUMP)$E0DC,attr=$45(the-jump)
B $E580,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $E582,$05 #FONT:(LEADS)$E0DC,attr=$45(leads)
B $E587,$01 Terminator.

t $E588 Messaging: The Bunsen Burner
  $E588,$0A #FONT:(THE BUNSEN)$E0DC,attr=$45(the-bunsen)
B $E592,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $E594,$06 #FONT:(BURNER)$E0DC,attr=$45(burner)
B $E59A,$01 Terminator.

t $E59B Messaging: The Letter B
  $E59B,$0A #FONT:(THE LETTER)$E0DC,attr=$45(the-letter)
B $E5A5,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $E5A7,$01 #FONT:(B)$E0DC,attr=$45(the-letter-b)
B $E5A8,$01 Terminator.

t $E5A9 Messaging: Gas Mask
  $E5A9,$08 #FONT:(GAS MASK)$E0DC,attr=$45(gas-mask)
B $E5B1,$01 Terminator.

t $E5B2 Messaging: The Parcel
  $E5B2,$0A #FONT:(THE PARCEL)$E0DC,attr=$45(the-parcel)
B $E5BC,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
B $E5BE,$01 Terminator.

t $E5BF Messaging: Stamped
B $E5BF,$02 Check task: #R($EC0F+#PEEK(#PC+$01)).
  $E5C1,$07 #FONT:(STAMPED)$E0DC,attr=$45(stamped)
B $E5C8,$01 Terminator.

t $E5C9 Messaging: Unstamped
  $E5C9,$09 #FONT:(UNSTAMPED)$E0DC,attr=$45(unstamped)
B $E5D2,$01 Terminator.

t $E5D3 Messaging: The Fuse
  $E5D3,$08 #FONT:(THE FUSE)$E0DC,attr=$45(the-fuse)
B $E5DB,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
B $E5DD,$01 Terminator.

t $E5DE Messaging: Rewired
B $E5DE,$02 Check task: #R($EC0F+#PEEK(#PC+$01)).
  $E5E0,$07 #FONT:(REWIRED)$E0DC,attr=$45(rewired)
B $E5E7,$01 Terminator.

t $E5E8 Messaging: Blown
  $E5E8,$05 #FONT:(BLOWN)$E0DC,attr=$45(blown)
B $E5ED,$01 Terminator.

t $E5EE Messaging: The Meat
  $E5EE,$08 #FONT:(THE MEAT)$E0DC,attr=$45(the-meat)
B $E5F6,$01 Terminator.

t $E5F7 Messaging: The Monkey Wrench
  $E5F7,$0A #FONT:(THE MONKEY)$E0DC,attr=$45(the-monkey)
B $E601,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $E603,$06 #FONT:(WRENCH)$E0DC,attr=$45(wrench)
B $E609,$01 Terminator.

t $E60A Messaging: Screwdriver
  $E60A,$0B #FONT:(SCREWDRIVER)$E0DC,attr=$45(screwdriver)
B $E615,$01 Terminator.

t $E616 Messaging: The Letter E
  $E616,$0A #FONT:(THE LETTER)$E0DC,attr=$45(the-letter)
B $E620,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $E622,$01 #FONT:(E)$E0DC,attr=$45(the-letter-e)
B $E623,$01 Terminator.

t $E624 Messaging: The Hook
  $E624,$08 #FONT:(THE HOOK)$E0DC,attr=$45(the-hook)
B $E62C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
B $E62E,$01 Terminator.

t $E62F Messaging: Working
B $E62F,$02 Check task: #R($EC0F+#PEEK(#PC+$01)).
  $E631,$07 #FONT:(WORKING)$E0DC,attr=$45(working)
B $E638,$01 Terminator.

t $E639 Messaging: Broken
  $E639,$06 #FONT:(BROKEN)$E0DC,attr=$45(broken)
B $E63F,$01 Terminator.

t $E640 Messaging: The Patch
  $E640,$09 #FONT:(THE PATCH)$E0DC,attr=$45(the-patch)
B $E649,$01 Terminator.

t $E64A Messaging: The Pipe
  $E64A,$08 #FONT:(THE PIPE)$E0DC,attr=$45(the-pipe)
B $E652,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
B $E654,$01 Terminator.

t $E655 Messaging: Patched
B $E655,$02 Check task: #R($EC0F+#PEEK(#PC+$01)).
  $E657,$07 #FONT:(PATCHED)$E0DC,attr=$45(patched)
B $E65E,$01 Terminator.

t $E65F Messaging: Leaking
  $E65F,$07 #FONT:(LEAKING)$E0DC,attr=$45(leaking)
B $E666,$01 Terminator.

t $E667 Messaging: The Letter R
  $E667,$0A #FONT:(THE LETTER)$E0DC,attr=$45(the-letter)
B $E671,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $E673,$01 #FONT:(R)$E0DC,attr=$45(the-letter-r)
B $E674,$01 Terminator.

t $E675 Messaging: The Oil Can
  $E675,$07 #FONT:(THE OIL)$E0DC,attr=$45(the-oil)
B $E67C,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $E67E,$04 #FONT:(CAN)$E0DC,attr=$45(can)
B $E682,$01 Terminator.

t $E683 Messaging: Full
B $E683,$02 Check task: #R($EC0F+#PEEK(#PC+$01)).
  $E685,$04 #FONT:(FULL)$E0DC,attr=$45(full)
B $E689,$01 Terminator.

t $E68A Messaging: Empty
  $E68A,$05 #FONT:(EMPTY)$E0DC,attr=$45(empty)
B $E68F,$01 Terminator.

t $E690 Messaging: The Fuse Wire
  $E690,$08 #FONT:(THE FUSE)$E0DC,attr=$45(the-fuse)
B $E698,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $E69A,$04 #FONT:(WIRE)$E0DC,attr=$45(wire)
B $E69E,$01 Terminator.

t $E69F Messaging: The Good Insulator
  $E69F,$08 #FONT:(THE GOOD)$E0DC,attr=$45(the-good)
B $E6A7,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $E6A9,$09 #FONT:(INSULATOR)$E0DC,attr=$45(insulator)
B $E6B2,$01 Terminator.

t $E6B3 Messaging: The Bottle
  $E6B3,$0A #FONT:(THE BOTTLE)$E0DC,attr=$45(the-bottle)
B $E6BD,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
B $E6BF,$01 Terminator.

t $E6C0 Messaging: Full
B $E6C0,$02 Check task: #R($EC0F+#PEEK(#PC+$01)).
  $E6C2,$04 #FONT:(FULL)$E0DC,attr=$45(full)
B $E6C6,$01 Terminator.

t $E6C7 Messaging: Empty
  $E6C7,$05 #FONT:(EMPTY)$E0DC,attr=$45(empty)
B $E6CC,$01 Terminator.

t $E6CD Messaging: The Red Herring
  $E6CD,$07 #FONT:(THE RED)$E0DC,attr=$45(the-red)
B $E6D4,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $E6D6,$07 #FONT:(HERRING)$E0DC,attr=$45(herring)
B $E6DD,$01 Terminator.

t $E6DE Messaging: The Test Tube
  $E6DE,$08 #FONT:(THE TEST)$E0DC,attr=$45(the-test)
B $E6E6,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $E6E8,$04 #FONT:(TUBE)$E0DC,attr=$45(tube)
B $E6EC,$01 Terminator.

t $E6ED Messaging: The Can Of Beans
  $E6ED,$0A #FONT:(THE CAN OF)$E0DC,attr=$45(the-can-of)
B $E6F7,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $E6F9,$05 #FONT:(BEANS)$E0DC,attr=$45(beans)
B $E6FE,$01 Terminator.

t $E6FF Messaging: The Rubber Stamp
  $E6FF,$0A #FONT:(THE RUBBER)$E0DC,attr=$45(the-rubber)
B $E709,$02 Move cursor: #N(#PEEK(#PC)-$C8), #N(#PEEK(#PC+$01)).
  $E70B,$05 #FONT:(STAMP)$E0DC,attr=$45(stamp)
B $E710,$01 Terminator.

t $E711 Messaging: The Pliers
  $E711,$0A #FONT:(THE PLIERS)$E0DC,attr=$45(the-pliers)
B $E71B,$01 Terminator.

t $E71C Messaging: The Whistle
  $E71C,$0B #FONT:(THE WHISTLE)$E0DC,attr=$45(the-whistle)
B $E727,$01 Terminator.

w $E728 Table: Item Labels
@ $E728 label=Table_ItemLabels
  $E728,$02 #LET(item=#PEEK(#PC)+#PEEK(#PC+$01)*$100)#R({item})(#D({item})).
L $E728,$02,$29

c $E77A Clear Character Items
@ $E77A label=ClearCharacterItems
  $E77A,$03 Stash #REGhl, #REGbc and #REGde on the stack.
  $E77D,$04 #REGix=#R$81F8.
N $E781 The number of rows to blank.
  $E781,$02 #REGc=#N$20 (rows).
N $E783 Fetch the screen buffer address.
@ $E783 label=ClearCharacterItems_NextLine
  $E783,$03 #REGl=#REGix+#N$00.
  $E786,$03 #REGh=#REGix+#N$01.
N $E789 The number of columns to blank.
  $E789,$02 #REGb=#N$0F.
@ $E78B label=ClearCharacterItems_Loop
  $E78B,$02 Write #N$00 to *#REGhl.
  $E78D,$01 Increment #REGhl by one.
  $E78E,$02 Decrease counter by one and loop back to #R$E78B until counter is zero.
N $E790 Move onto the next line down in the screen buffer.
  $E790,$04 Increment #REGix by two.
N $E794 Keep looping until all rows have been blanked.
  $E794,$01 Decrease #REGc by one.
  $E795,$02 Jump to #R$E783 until #REGc is zero.
N $E797 Restore the registers and return.
  $E797,$03 Restore #REGde, #REGbc and #REGhl from the stack.
  $E79A,$01 Return.

c $E79B Handler: Change Characters
@ $E79B label=Handler_ChangeCharacters
  $E79B,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$F7 | 1 | 2 | 3 | 4 | 5 }
. TABLE#
  $E79F,$02,b$01 Set bits 5-7.
M $E7A1,$03 Return if no keys have been pressed.
  $E7A1,$02,b$01
N $E7A4 Fetch room ID for the current character.
  $E7A4,$03 #REGb=*#REGiy+#N$0F.
  $E7A7,$02 Stash the character pointer in #REGiy on the stack.
N $E7A9 Loop through the port bits and correlate them with the base character reference in #R$BC67(#REGiy).
N $E7A9 This associates each character with a keypress.
. #TABLE(default,centre,centre)
. { =h Key | =h Character }
. #FOR($00,$04)(n,{ #N(n+$01) | #CHARACTERn })
. TABLE#
  $E7A9,$04 #REGiy=#R$BC67.
@ $E7AD label=ChangeCharacters_WhichCharacter_Loop
  $E7AD,$01 Rotate #REGa right once.
  $E7AE,$02 If this key has been pressed, jump to #R$E7B4.
N $E7B0 The character data is "interlaced" hence we can increment to point to the next character in the sequence.
  $E7B0,$02 Increment #REGiy by one.
  $E7B2,$02 Jump to #R$E7AD.
N $E7B4 Check if the current character is in the same room as the selected character.
@ $E7B4 label=ChangeCharacters_CheckRoom
  $E7B4,$03 #REGa=*#REGiy+#N$0F.
  $E7B7,$03 If this is the same room, jump to #R$E7C0.
N $E7BA If the character is elsewhere, print where they are to the screen.
  $E7BA,$03 Call #R$BA6E.
N $E7BD Restore the current character pointer to #REGiy and return.
@ $E7BD label=ChangeCharacters_Return
  $E7BD,$02 Restore the character pointer in #REGiy from the stack.
  $E7BF,$01 Return.
N $E7C0 The chosen character is in the same room as the current character, so begin to action the request.
@ $E7C0 label=ChangeCharacters_Process
  $E7C0,$03 Call #R$A921.
  $E7C3,$02 If the selected character is the current character, jump to #R$E7BD.
  $E7C5,$04 Write #REGiy to *#R$B09D.
  $E7C9,$02 Restore #REGiy from the stack.
  $E7CB,$01 #REGa=#REGb.
  $E7CC,$03 Call #R$AC69.
  $E7CF,$01 #REGa=*#REGhl.
  $E7D0,$03 Write #REGa to #REGiy+#N$69.
  $E7D3,$01 Increment #REGhl by one.
  $E7D4,$01 #REGa=*#REGhl.
  $E7D5,$03 Write #REGa to #REGiy+#N$64.
  $E7D8,$01 Increment #REGhl by one.
  $E7D9,$01 #REGa=*#REGhl.
  $E7DA,$03 Write #REGa to #REGiy+#N$73.
  $E7DD,$04 Write #N$05 to #REGiy+#N$6E.
  $E7E1,$04 #REGiy=*#R$B09D.
N $E7E5 Update the banner to show the updated character name.
  $E7E5,$03 Call #R$E3FD.
  $E7E8,$01 Return.

w $E7E9
  $E7E9,$02 #R(#PEEK(#PC)+#PEEK(#PC+$01)*$100)(#N((#PC-$E7E9)/$02)).
L $E7E9,$02,$13

b $E80F
N $E80F Room #N$00: Town Square.
  $E83B,$01 Terminator.
N $E83C Room #N$01: Stamp Street.
  $E842,$01 Terminator.
N $E843 Room #N$02: The Post Office.
  $E857,$01 Terminator.
N $E858 Room #N$03: Market Street.
  $E858,$01 Terminator.
N $E859 Room #N$04: The Super Market.
  $E876,$01 Terminator.
N $E877 Room #N$05: The Park.
  $E87C,$01 Terminator.
N $E87D Room #N$06: Wobbly Walk.
  $E87D,$01 Terminator.
N $E87E Room #N$07: Rubble Road.
  $E87E,$01 Terminator.
N $E87F Room #N$08: Wall Street.
  $E8AF,$01 Terminator.
N $E8B0 Room #N$09: Pete Street.
  $E8C8,$01 Terminator.
N $E8C9 Room #N$0A: The Work Shed.
  $E8FA,$01 Terminator.
N $E8FB Room #N$0B: School Lane.
  $E91E,$01 Terminator.
N $E91F Room #N$0C: The School.
  $E924,$01 Terminator.
N $E925 Room #N$0D: Baker Street.
  $E92B,$01 Terminator.
N $E92C Room #N$0E: The Bakers.
  $E931,$01 Terminator.
N $E932 Room #N$0F: The Pub.
  $E940,$01 Terminator.
N $E941 Room #N$10: Motor Way.
  $E941,$01 Terminator.
N $E942 Room #N$11: The Laboratory.
  $E961,$01 Terminator.
N $E962 Room #N$12: The Garage.
  $E985,$01 Terminator.
N $E986 Room #N$13: Reference Road.
  $E992,$01 Terminator.
N $E993 Room #N$14: The Library.
  $E9BC,$01 Terminator.
N $E9BD Room #N$15: Penny Lane.
  $E9BD,$01 Terminator.
N $E9BE Room #N$16: The Bank.
  $EA33,$01 Terminator.
N $EA34 Room #N$17: Wally's House.
  $EA39,$01 Terminator.
N $EA3A Room #N$18: Meat Street.
  $EA3A,$01 Terminator.
N $EA3B Room #N$19: The Butchers.
  $EA58,$01 Terminator.
N $EA59 Room #N$1A: Trunk Road.
  $EA5F,$01 Terminator.
N $EA60 Room #N$1B: The Zoo.
  $EA6F,$01 Terminator.
N $EA70 Room #N$1C: Rail Road.
  $EA70,$01 Terminator.
N $EA71 Room #N$1D: The Station.
  $EA76,$01 Terminator.
N $EA77 Room #N$1E: The Docks.
  $EA93,$01 Terminator.
N $EA94 Room #N$1F: The Sewer.
  $EAA0,$01 Terminator.
N $EAA1 Room #N$20: The Cave.
  $EABE,$01 Terminator.

c $EABF
  $EABF,$03 #REGa=*#REGiy+#N$0F.
  $EAC2,$03 Write #REGa to #R$B951.
  $EAC5,$03 #REGhl=#R$E80F.
  $EAC8,$03 Call #R$AC6C.
  $EACB,$01 #REGa=*#REGhl.
  $EACC,$01 Increment #REGhl by one.
  $EACD,$03 If #REGa is #N$FF (the terminator) then return.
  $EAD0,$04 If #REGa is #N$F7 jump to #R$EAEB.
  $EAD4,$01 #REGa*=#N$02.
  $EAD5,$03 Create an offset in #REGde.
  $EAD8,$01 Stash #REGhl on the stack.
  $EAD9,$04 #REGhl=#R$E7E9+#REGde.
  $EADD,$01 #REGe=*#REGhl.
  $EADE,$01 Increment #REGhl by one.
  $EADF,$01 #REGd=*#REGhl.
  $EAE0,$01 Restore #REGhl from the stack.
  $EAE1,$01 Stash #REGde on the stack.
  $EAE2,$01 Return.

  $EAE3,$01 #REGa=*#REGhl.
  $EAE4,$01 Increment #REGhl by one.
  $EAE5,$04 If #REGa is #N$F6 jump to #R$EACB.
  $EAE9,$02 Jump to #R$EAE3.

  $EAEB,$01 #REGa=*#REGhl.
  $EAEC,$01 Increment #REGhl by one.
  $EAED,$05 If #REGa is #N$F6 jump to #R$EACB.
  $EAF2,$01 #REGa*=#N$02.
  $EAF3,$03 Create an offset in #REGde.
  $EAF6,$01 Stash #REGhl on the stack.
  $EAF7,$04 #REGhl=#R$E7F9+#REGde.
  $EAFB,$01 #REGe=*#REGhl.
  $EAFC,$01 Increment #REGhl by one.
  $EAFD,$01 #REGd=*#REGhl.
  $EAFE,$01 Restore #REGhl from the stack.
  $EAFF,$01 Stash #REGde on the stack.
  $EB00,$01 Return.

c $EB01

  $EB0C,$03 Jump to #R$EAEB.

c $EB0F
  $EB0F,$05 Write #N$01 to #R$EB54.
  $EB14,$03 #REGb=#REGiy-#N$2D.
  $EB17,$01 #REGc=*#REGhl.
  $EB18,$01 Increment #REGhl by one.
  $EB19,$03 Stash #REGhl and #REGiy on the stack.
  $EB1C,$03 Call #R$AA8C.
  $EB1F,$03 #REGa=*#REGiy+#N$50.

  $EB25,$0A Increment #REGiy by five.
N $EB2F Switch the values at *#REGhl and *#REGiy+#N$50.
  $EB2F,$01 #REGc=*#REGhl.
  $EB30,$04 Write *#REGiy+#N$50 to *#REGhl.
  $EB34,$03 Write #REGc to *#REGiy+#N$50.
  $EB37,$03 Increment #REGhl by three.
  $EB3A,$01 #REGa=*#REGhl.

  $EB3E,$01 #REGa=*#REGhl.
  $EB3F,$02,b$01 Keep only bit 7.

  $EB48,$02 Restore #REGiy from the stack.
  $EB4A,$03 Call #R$E41D.
  $EB4D,$03 Call #R$AA7F.
  $EB50,$01 Restore #REGhl from the stack.
  $EB51,$03 Jump to #R$EAEB.

g $EB54

c $EB55
  $EB55,$03 #REGbc=#N($0000,$04,$04).
  $EB58,$03 Call #R$AA8C.

  $EB72,$03 Return if #REGc is not zero.
  $EB75,$03 Write #REGa to *#R$EB54.
  $EB78,$01 Return.

c $EB79

c $EB95

c $EBC4

c $EBE2

c $EBED

c $EBFE

g $EC0F Game Flags
@ $EC0F label=Flag_Bottle_Full
  $EC0F,$01
@ $EC10 label=Flag_Fuse_Rewired
  $EC10,$01
@ $EC11 label=Flag_Parcel_Stamped
  $EC11,$01
@ $EC12 label=Flag_Hook_Working
  $EC12,$01
@ $EC13 label=Flag_Bucket_Full
  $EC13,$01
@ $EC14 label=Flag_Pipe_Patched
  $EC14,$01
@ $EC15 label=Flag_Battery_Charged
  $EC15,$01
@ $EC16 label=Flag_OilCan_Full
  $EC16,$01
@ $EC17 label=Flag_Fountain_Repaired
  $EC17,$01
@ $EC18 label=Flag_Wall_Built
  $EC18,$01
  $EC19,$01
  $EC1A,$01
  $EC1B,$01
@ $EC1C label=Flag_PhoneBox_Completed
  $EC1C,$01

c $EC1D Handler: Is A Given Task Completed
@ $EC1D label=Handler_TaskCompleted
R $EC1D A Task ID
  $EC1D,$02 Stash #REGhl and #REGde on the stack.
  $EC1F,$03 Create an offset in #REGde.
  $EC22,$04 #REGhl=#R$EC0F+#REGde.
  $EC26,$01 #REGa=*#REGhl.
  $EC27,$02 Restore #REGde and #REGhl from the stack.
  $EC29,$01 Set flags.
  $EC2A,$01 Return.

c $EC2B
  $EC2B,$03 Call #R$EC3D.
  $EC2E,$03 If the return zero flag is zero, jump to #R$EACB.
  $EC31,$03 Jump to #R$EAE3.

c $EC34
  $EC34,$03 Call #R$EC3D.
  $EC37,$03 If the return zero flag is not zero, jump to #R$EACB.
  $EC3A,$03 Jump to #R$EAE3.
N $EC3D
  $EC3D,$01 #REGb=*#REGhl.
  $EC3E,$01 Increment #REGhl by one.
  $EC3F,$01 #REGa=*#REGhl.
  $EC40,$01 Increment #REGhl by one.
  $EC41,$02 Stash #REGaf and #REGhl on the stack.
  $EC43,$03 Call #R$AA8C.
  $EC46,$01 Restore #REGaf from the stack.
  $EC47,$01 Compare #REGa against *#REGhl.
  $EC48,$01 Restore #REGhl from the stack.
  $EC49,$01 Return.

c $EC4A

b $EC5C

c $ECBC

b $ECF5
b $ECF6

g $ECFE Total Gang Earnings
@ $ECFE label=TotalGangEarnings
  $ECFE,$02,$01

g $ED00
W $ED00,$06,$02

c $ED13

c $ED2A
  $ED2A,$05 #REGe=*#R$ECF5*#N$02.
  $ED2F,$02 #REGd=#N$00.
  $ED31,$04 #REGhl=#R$ECF6+#REGde.
  $ED35,$03 #REGa=*#R$ECFF.

  $ED4C,$03 #REGhl=#R$ED00.
  $ED54,$03 #REGde=#N($0000,$04,$04).
  $ED57,$03 Call #R$B8C4.
  $ED5A,$03 Call #R$B9AC.
  $ED5D,$03 Call #R$EEA2.

  $ED66,$04 #REGix=#R$ED06.
  $ED6A,$02 #REGb=#N$03.
  $ED6C,$01 Stash #REGbc on the stack.
  $ED6D,$03 #REGbc=#R$F5CA.
  $ED70,$03 Call #R$EF35.
  $ED73,$03 Call #R$A8A0.

  $ED79,$03 Call #R$B9FB.
  $ED7C,$03 Call #R$ABD7.

  $ED82,$04 Incremnt *#R$ECF5 by one.
  $ED86,$03 Call #R$B952.
  $ED89,$01 Return.

c $EDA3

c $EDA8

c $EDAC

c $EDB3

b $EDBE
  $EDC5

c $EDC6

c $EDF7

c $EEA2
  $EEA2,$03 #REGde=#R$6B00.
  $EEA5,$03 #REGhl=#R$5B00.
  $EEA8,$03 #REGbc=#N$1000.
  $EEAB,$03 Call #R$BA25.
  $EEAE,$03
  $EEB1,$03 #REGbc=#N$0200.
  $EEB4,$03 #REGhl=#R$FE00.
  $EEB7,$03 #REGde=#R$FC00.
  $EEBA,$03 Call #R$BA25.
  $EEBD,$03
  $EEC0,$01 Return.

c $EEC1

c $EF91
  $EF91,$01 Stash #REGaf on the stack.
  $EF92,$01 Switch to the shadow registers.
  $EF93,$04 #REGc=*#R$F26F.
  $EF97,$03 #REGa=*#R$A839.
  $EF9A,$02,b$01 Keep only bits 0-2.
  $EF9C,$02 If the result is zero, jump to #R$EFA2.
  $EF9E,$02 #REGb=#N$03.
  $EFA0,$02 Jump to #R$EFA4.
  $EFA2,$02 #REGb=#N$02.
  $EFA4,$03 #REGa=*#R$A839.
  $EFA7,$02,b$01 Keep only bits 3-7.
  $EFA9,$03 Create an offset in #REGhl.
  $EFAC,$02 #REGhl*=#N$04.
  $EFAE,$03 #REGde=#R$FB00.
  $EFB1,$01 #REGhl+=#REGde.
  $EFB2,$03 #REGde=#N($001E,$04,$04).
  $EFB5,$01 Write #REGc to *#REGhl.
  $EFB6,$01 Increment #REGhl by one.
  $EFB7,$01 Write #REGc to *#REGhl.
  $EFB8,$01 Increment #REGhl by one.
  $EFB9,$03 #REGa=*#R$A838.
  $EFBC,$02,b$01 Keep only bits 0-2.
  $EFBE,$02 If the result is zero, jump to #R$EFC1.
  $EFC0,$01 Write #REGc to *#REGhl.
  $EFC1,$01 #REGhl+=#REGde.
  $EFC2,$02 Decrease counter by one and loop back to #R$EFB5 until counter is zero.
  $EFC4,$01 Switch back to the normal registers.
  $EFC5,$01 Restore #REGaf from the stack.
  $EFC6,$01 Return.

c $EFC7

g $F104

c $F10E

c $F177

B $F26E,$09,$01
B $F571,$07,$01

c $F578
  $F578,$05 Write #N$45 to #R$F26F.
  $F57D,$06 Write #R$9878 to #R$A838.
  $F583,$03 #REGa=*#R$F571.
  $F586,$03 Call #R$A83D.
  $F589,$03 Call #R$EF91.
  $F58C,$06 Write #R$8868 to #R$A838.
  $F592,$03 Call #R$A83D.
  $F595,$03 Call #R$EF91.
  $F598,$06 Write #R$9818 to #R$A838.
  $F59E,$02 #REGa+=#N$03.
  $F5A0,$03 Call #R$A83D.
  $F5A3,$03 Call #R$EF91.
  $F5A6,$06 Write #R$8828 to #R$A838.
  $F5AC,$03 Call #R$A83D.
  $F5AF,$03 Call #R$EF91.
  $F5B2,$02 #REGa-=#N$02.
  $F5B4,$04 If #REGa is not #N$53, jump to #R$F5BA.
  $F5B8,$05 Write #N$50 to #R$F571.
  $F5BD,$01 Return.

b $F5BE
  $F5C2
  $F5C6
  $F5CA

c $F5F1
  $F5F1,$03 #REGhl=#N$5DE7.
  $F5F4,$03 #REGde=#N($0020,$04,$04).
  $F5F7,$03 #REGbc=#N$F5D3.
  $F5FA,$02 Write #N$00 to *#REGhl.
  $F5FC,$01 #REGhl+=#REGde.
  $F5FD,$02 Write #N$FF to *#REGhl.
  $F5FF,$01 #REGhl+=#REGde.
  $F600,$02 Write #N$00 to *#REGhl.

  $F614,$01  #REGhl+=#REGde.
  $F615,$02 Jump to #R$F61A.

  $F617,$01
  $F618,$02 #REGhl-=#REGde.
  $F61A,$01 Increment #REGhl by one.
  $F61B,$02 Jump to #R$F5FA.

  $F61D,$05 Write #N$06 to #R$F26E.
  $F622,$04 #REGix=#R$F5BE.

B $F7DE
B $F7E9
W $F812

c $F814
  $F814,$03 #REGhl=*#R$F812.

  $F82E,$03 Call #R$A83D.

  $F843,$03 #REGhl=*#R$F812.
  $F846,$04 Increment #REGhl by four.

  $F84F,$06 Write #R$F7E9 to #R$F812.

  $F869,$03 Call #R$E36D.
N $F86C Play the "Task Complete" sound.
  $F86C,$03 #REGbc=#N$643C.
  $F86F,$03 #REGde=#N$0128.
  $F872,$03 #REGhl=#N$0103.
  $F875,$03 Call #R$E3D3.
  $F878,$01 Return.

b $F879

c $F8B9

B $F9F0,$05,$01

b $FAEF
  $FB00

b $FC00 Attribute Shadow Buffer
@ $FC00 label=ShadowBuffer_Attribute
S $FC00,$0200

b $FE00

c $FEF7 Game Entry Point
@ $FEF7 label=Checksum
  $FEF7,$03 #REGhl=#N$4000.
  $FEFA,$03 #REGbc=#N$BF24.
  $FEFD,$02 #REGa=#N$00.
@ $FEFF label=Checksum_Loop
  $FEFF,$02 #REGe=#REGa+*#REGhl.
  $FF01,$01 Increment #REGhl by one.
  $FF02,$01 Decrease #REGbc by one.
  $FF03,$02 Is #REGbc zero?..
  $FF05,$01 #REGa=#REGe.
  $FF06,$02 If #REGbc is not zero, jump to #R$FEFF.
  $FF08,$04 If *#REGhl is not zero, jump to #N$0000 (return to ZX Spectrum BASIC).
  $FF0C,$03 #REGde=#R$5B80.
  $FF0F,$03 #REGhl=#N$53FE.
@ $FF12 label=Decryption_Loop
  $FF12,$01 #REGa=*#REGde.
  $FF13,$01 Run an XOR on *#REGhl.
  $FF14,$02 Reset bit 4 of #REGh.
  $FF16,$01 Run another XOR on *#REGhl.
  $FF17,$02 Set bit 4 of #REGh.
  $FF19,$01 Write #REGa to *#REGde.
  $FF1A,$01 Decrease #REGhl by one.
  $FF1B,$01 Increment #REGde by one.
  $FF1C,$05 If #REGe is not #N$9A, jump to #R$FF12.
  $FF21,$03 Jump to #R$5B94.

b $FF24
