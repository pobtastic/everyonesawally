; Copyright Mikro-Gen 1985, 2023 ArcadeGeek LTD.
; NOTE: Disassembly is Work-In-Progress.
; Label naming is loosely based on Action_ActionName_SubAction e.g. Print_HighScore_Loop.

> $4000 @org=$4000
b $4000 Loading Screen
D $4000 #UDGTABLE { =h Everyone's a Wally Loading Screen. } { #SCR$02(loading) } UDGTABLE#
@ $4000 label=Loading
  $4000,$1800,$20 Pixels
  $5800,$0300,$20 Attributes

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

b $6B00
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
B $7C1B,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
  $7C1D,$0D "TODAY'S WAGES".
B $7C2A,$02
B $7C2C,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
  $7C2E,$0B "WALLY'S PAY".
B $7C39,$02
  $7C3B,$0B "WILMA'S PAY".
B $7C46,$02
  $7C48,$09 "TOM'S PAY".
B $7C51,$02
  $7C53,$0A "DICK'S PAY".
B $7C5D,$02
  $7C5F,$0B "HARRY'S PAY".
B $7C6A,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
B $7C6C,$02
  $7C6E,$07 "OVERALL".
B $7C75,$01 Terminator.

t $7C76 Messaging: Congratulations
@ $7C76 label=Messaging_Congratulations
B $7C76,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
  $7C78,$1B "YOU CLEVER DICK  (PLUS TOM,".
B $7C93,$02
  $7C95,$18 "HARRY, WILMA AND WALLY).".
B $7CAD,$02
  $7CAF,$17 "YOU'VE OPENED THE SAFE.".
B $7CC6,$02
  $7CC8,$1B "PERHAPS  EVERYONE'S  NOT  A".
B $7CE3,$02
  $7CE5,$10 "WALLY AFTER ALL.".
B $7CF5,$02
  $7CF7,$1B "THE GANG HAVE BEEN PAID AND".
B $7D12,$02
  $7D14,$1A "ARE NOW OFF ON THEIR HOLS.".
B $7D2E,$02
  $7D30,$17 "SEE YOU AGAIN SOMETIME.".
B $7D47,$01 Terminator.

t $7D48 Messaging: Tough Luck
@ $7D48 label=Messaging_ToughLuck
B $7D48,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
  $7D4A,$19 "TOUGH LUCK.  THE GANG HAS".
B $7D63,$02
  $7D65,$06 "EARNED".
B $7D6B,$02
  $7D6D,$0D ",  BUT  CAN'T".
B $7D7A,$02
  $7D7C,$19 "HAVE  IT  'COS  THE  SAFE".
B $7D95,$02
  $7D97,$19 "WASN'T OPENED, AND THAT'S".
B $7DB0,$02
  $7DB2,$13 "WHERE THE MONEY IS.".
B $7DC5,$01 Terminator.

t $7DC6 Messaging: Splash Screen
@ $7DC6 label=Messaging_Splash
B $7DC6,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
  $7DC8,$05 "KEY:-".
B $7DCD,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
  $7DCF,$16 "   1.SINCLAIR JOYSTICK".
B $7DE5,$02
B $7DE7,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
  $7DE9,$05 "KEY:-".
B $7DEE,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
  $7DF0,$16 "   2.KEMPSTON JOYSTICK".
B $7E06,$02
B $7E08,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
  $7E0A,$05 "KEY:-".
B $7E0F,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
  $7E11,$0D "   3.KEYBOARD".
B $7E1E,$02
B $7E20,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
  $7E22,$14 "PRESS KEY 4 TO START".
B $7E36,$01 Terminator.

t $7E37 Messaging: Key
@ $7E37 label=Messaging_Key
B $7E37,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
  $7E39,$06 "#STR$7E39,$08($b==$FF)".

b $7E3F

t $7E42 Messaging: Character
@ $7E42 label=Messaging_Character
B $7E42,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
  $7E44,$0A "CHARACTER:".
B $7E4E,$02
B $7E50,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
  $7E52,$0A "ENDURANCE:".
B $7E5C,$02
B $7E5E,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
  $7E60,$02 "  " (whitespace).
B $7E62
B $7E68
B $7E6B,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
B $7E6D
  $7E70,$01 Terminator.

t $7E71 Messaging: Tea Break
@ $7E71 label=Messaging_TeaBreak
B $7E71,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
B $7E73,$02
  $7E75,$16 "HO HUM, TIME FOR A BUN".
B $7E8B,$02
  $7E8D,$11 "#STR$7E8D,$08($b==$FF)".
B $7E9E,$01 Terminator.

t $7E9F Messaging: Lunch Time
@ $7E9F label=Messaging_LunchTime
B $7E9F,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
B $7EA1,$02
  $7EA3,$1C "RUBBA DUB DUB, TIME FOR GRUB".
B $7EBF,$02
  $7EC1,$0A "#STR$7EC1,$08($b==$FF)".
B $7ECB,$01 Terminator.

t $7ECC Messaging: Afternoon Tea Break
@ $7ECC label=Messaging_AfternoonTeaBreak
B $7ECC,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
B $7ECE,$02
  $7ED0,$1C "FIDDLE DEE DEE, TIME FOR TEA".
B $7EEC,$02
  $7EEE,$13 "#STR$7EEE,$08($b==$FF)".
B $7F01,$01 Terminator.

b $7F02
  $7F02,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
  $7F0E,$01 Terminator.
  $7F19,$02 Attribute=#COLOUR(#PEEK(#PC+$01)).
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
@ $80EB label=GameMenu_Loop
  $80E8,$03 Call #R$B471.
  $80EB,$03 #REGhl=#R$7DC6.
  $80EE,$03 #REGde=#N($0003,$04,$04).
  $80F1,$03 Call #R$B8C4.
  $80F4,$03 #REGhl=#R$7E37.
  $80F7,$08 #REGb=#N$02-*#R$B2DB.

  $8103,$01 #REGd=#REGa.
  $8104,$02 #REGe=#N$03.
  $8106,$03 Call #R$B8C4.
  $8109,$05 Write #N$FF to #R$B4E9.
  $810E,$03 Call #R$B482.

  $811E,$03 Call #R$B2DC.
  $8121,$02 Jump to #R$80EB.

  $8127,$03 Call #R$B2E2.
  $812A,$02 Jump to #R$80EB.

  $8130,$03 Call #R$B2E8.
  $8133,$02 Jump to #R$80EB.

  $8139,$01 Return.

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

c $8155
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

c $8184
  $8184,$01 Disable interrupts.
  $8185,$03 Set the stack pointer to #N$FC00.
  $8188,$03 Call #R$80E5.
  $818B,$03 Call #R$BAD8.
  $818E,$03 Call #R$E3FD.
  $8191,$03 Call #R$813B.
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

b $81F8
W $81F8,$180,$02

b $8378

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
  $A847,$05
  $A84C,$05 #REGsp=#R$8378+#REGhl.
  $A851,$04 #REGb=*#R$A838.
  $A855,$02,b$01 Keep only bits 0-2.
  $A857,$01 Increment #REGa by one.
  $A858,$03 Write #REGa to #R$A87A(#N$A87B).
  $A85B,$01 #REGa=#REGb.
  $A85C,$02,b$01 Keep only bits 3-7.
  $A85E,$03

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

c $A921
  $A921,$03 #REGhl=#REGiy.
  $A924,$04 #REGde=*#R$B09D.
  $A928,$01
  $A929,$02 #REGhl-=#REGde.
  $A92B,$01 Return.

c $A92C Move Non-Player Characters
@ $A92C label=Handler_Move_Characters
  $A92C,$02 Stash #REGiy on the stack.
  $A92E,$06 Write #REGiy+#N$0F to #R$B951.
  $A934,$04 #REGiy=#R$BC67.
  $A938,$06 #REGb=(*#R$B55F)+#N$04.
  $A93E,$01 Stash #REGbc on the stack.
  $A93F
  $A945,$03 Call #R$A921.
  $A94A,$02 Increment #REGiy by one.
  $A94C
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

  $AA60,$03 Decrease #REGhl by three.

  $AA6E,$03 Call #R$A921.

  $AA7D,$01 Restore #REGhl from the stack.
  $AA7E,$01 Return.

c $AA7F
  $AA7F,$03 #REGbc=#N$FF0A.
  $AA82,$03 #REGde=#N$0114.
  $AA85,$03 #REGhl=#N$1401.
  $AA88,$03 Call #R$E3D3.
  $AA8B,$01 Return.

c $AA8C

w $AAA0 Jump Table
@ $AAA0 label=Table_Jump
  $AAA0,$12,$02

c $AAB2

c $AADD

c $AB09

c $AB26

c $AB43

c $AB60

c $AB9B

c $AC06

b $AE3C

c $AE5D

c $AE8A

b $AEA7
  $AED1

c $AED7

b $AF10

c $AFC4

w $B09D
  $B09D,$02

c $B09F

c $B0E6
  $B0E6,$01 Switch to the shadow registers.

  $B100,$02,b$01 Keep only bits 0-2.
N $B102 Self-modifying code.
  $B102,$03 Write #REGa to #R$B188(#N$B189).

N $B188 This is modified from #R$B102.
  $B188,$02 #REGb=#N$FF.

  $B191,$01 Switch to the normal registers.
  $B192,$04 Restore #REGsp from #R$A83B.
  $B196,$01 Return.

c $B197
  $B1A5,$01 Return.

c $B1A6

b $B2DB
  $B2DB,$01
C $B2DC
C $B2DC,$05 Write #N$02 to #R$B2DB.
C $B2E1,$01 Return.

C $B2E2,$05 Write #N$01 to #R$B2DB.
C $B2E7,$01 Return.

C $B2E8,$04 Write #N$00 to #R$B2DB.
C $B2EC,$01 Return.

b $B2ED

w $B2EF
  $B2EF,$02

c $B2F1
  $B2F1,$03 Call #R$B8ED.
  $B2F4,$03 #REGde=#N$010A.
  $B2F7,$03 #REGhl=#R$7C1B.
  $B2FA,$03 Call #R$B8C4.
  $B2FD,$02 Stash #REGiy on the stack.
  $B2FF,$03 #REGde=#N$0513.
  $B302,$03 #REGbc=#N$0545.
  $B305,$03 #REGhl=#R$B2ED.
  $B308,$04 #REGiy=#R$BC67.
  $B30C,$04 #REGix=#R$B2ED.

  $B332,$03 Call #R$B34C.

  $B33C,$02 Restore #REGiy from the stack.
  $B33E,$02 #REGd=#N$15.
  $B340,$03 #REGhl=#R$B2EF.
  $B343,$02 #REGe=#N$11.
  $B345,$03 Call #R$B34C.
  $B348,$03 Jump to #R$B3AB.

c $B34B
B $B34B,$01

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
  $B454,$03 #REGhl=#R$ECFE.
  $B457,$03 #REGde=#N$080A.
  $B45A,$02 #REGc=#N$00.
  $B45C,$03 Call #R$B34C.
  $B45F,$03 #REGhl=#R$7D48.
  $B462,$03 #REGde=#N$0504.
  $B465,$03 Call #R$B8C4.
  $B468,$03 Call #R$B3AB.
  $B46B,$03 Call #R$B2F1.
  $B46E,$03 Jump to #R$8184.

c $B471
  $B471,$01 Disable interrupts.
  $B472,$06 Write #R$B560 to #R$B4E7.
  $B478,$05 Write #N$FF to #R$B4E9.
  $B47D,$04 Write #N$00 to #R$B55F.
  $B481,$01 Return.

c $B482
  $B482,$03 #REGhl=*#R$B4E7.
  $B485,$01 #REGa=*#REGhl.
  $B486,$01
  $B487,$02
  $B489,$05 Write #N$01 to #R$B55F.
  $B48E,$05 Write #N$FF to #R$B4E9.
  $B493,$01 Return.

  $B494,$01 Increment #REGhl by one.
  $B495,$04
  $B499,$04 Write #N$00 to #R$B4EA.
  $B4A0,$02 Jump to #R$B482.

  $B4A2,$04
  $B4A6,$02 #REGa=#N$01.
  $B4A8,$02 Jump to #R$B49A.

  $B4AA,$01 Stash #REGaf on the stack.
  $B4AB,$01 #REGa=*#REGhl.
  $B4AC,$01 Increment #REGhl by one.
  $B4AD,$03 Write #REGhl to #R$B4E7.

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
  $B4E3,$02
  $B4E5,$02 Jump to #R$B4D3.

w $B4E7
  $B4E7,$02

b $B4E9
  $B4EA

c $B4EB
  $B4EB,$03 Stash #REGaf, #REGbc and #REGde on the stack.
  $B4EE,$01 Decrease #REGbc by one.
  $B4EF,$04 Jump to #R$B4EE until #REGbc is #N($0000,$04,$04).

  $B4F3,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$F7 | 1 | 2 | 3 | 4 | 5 }
. TABLE#

  $B4F7,$02,b$01 Set bits 4-7.

  $B501,$03 Restore #REGde, #REGbc and #REGaf from the stack.
  $B504,$01 Return.

c $B505
  $B536,$01 Return.

b $B537

b $B55F
  $B560

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

c $B77B
  $B77B,$04 Push #REGaf, #REGhl, #REGbc and #REGde on the stack.
  $B77F,$01 #REGc=#REGe.
  $B780,$01 #REGl=#REGd.
  $B781,$02 #REGd=#N$00.
  $B783,$01 #REGh=#REGd.
  $B784,$01 #REGb=#REGd.
  $B785,$04 #REGhl*=#N$10.

  $B789,$03 #REGde=#R$81F8.

  $B798,$03 #REGde=#R$8378.

  $B7B2,$01 Decrease #REGa by one.
  $B7B3,$02
  $B7B5,$04 Restore #REGde, #REGbc, #REGhl and #REGaf from the stack.
  $B7B9,$01 Return.

c $B7BA Draw Sprite Block To Screen
@ $B7BA label=DrawSprite
R $B7BA DE Screen Buffer Co-ordinates
R $B7BA HL Sprite data
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

c $B82B
  $B82B,$01 Stash #REGhl on the stack.
  $B82C,$0C Write #R$B7F9 to: #LIST { #R$B8BD(#N$B8BE) } { #R$B8B4(#N$B8B5) } { #R$B894(#N$B895) } LIST#
  $B838,$01 Restore #REGhl from the stack.
  $B839,$03 Call #R$B84B.
  $B83C,$01 Stash #REGhl on the stack.
  $B83D,$0C Write #R$B7BA to: #LIST { #R$B894(#N$B895) } { #R$B8BD(#N$B8BE) } { #R$B8B4(#N$B8B5) } LIST#
  $B849,$01 Restore #REGhl from the stack.
  $B84A,$01 Return.

c $B84B Handler: Sprite Controller
@ $B84B label=Handler_SpriteController
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
@ $B85C label=Handler_SpriteController_NotAttribute
  $B85C,$04 If #REGa is lower than #N$A8, jump to #R$B8BD.
N $B860 If the value is between #N$A8-#N$E8 then it is screen co-ordinates.
  $B860,$04 If #REGa is higher than #N$E8, jump to #R$B86E.
N $B864 Remove the control number, then we're left with the desired screen co-ordinate data updates.
  $B864,$04 #REGe=(#REGa-#N$C8)+#REGe.
  $B868,$03 #REGd+=*#REGhl.
  $B86B,$01 Increment #REGhl by one.
  $B86C,$02 Jump to #R$B84B.
  $B86E,$04 If #REGa is not #N$FB, jump to #R$B87E.
  $B872,$04 Write *#REGhl to #R$B7E8(#N$B7E9).
  $B876,$01 Increment #REGhl by one.
  $B877,$04 Write *#REGhl to #R$B7E8(#N$B7EA).
  $B87B,$01 Increment #REGhl by one.
  $B87C,$02 Jump to #R$B84B.

  $B88A,$02 Jump to #R$B84B.

  $B894,$03 Call #R$B7BA.
  $B897,$01 Increment #REGd by one.
  $B898,$02
  $B89A,$02 Jump to #R$B84B.

  $B8B0,$02 Jump to #R$B84B.

  $B8BA,$03 Jump to #R$B84B.
  $B8BD,$03 Call #R$B7BA.
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
  $B92D,$03 Restore #REGde, #REGbc and #REGhl from the stack.
  $B930,$01 Return.

c $B931
  $B931,$03 Stash #REGhl, #REGbc and #REGde on the stack.
  $B934,$04 #REGix=#R$81F8.
  $B938,$02 #REGc=#N$20.
  $B93A,$03 #REGl=#REGix+#N$00.
  $B93D,$03 #REGh=#REGix+#N$01.
  $B940,$02 #REGb=#N$20 (counter).
  $B942,$02 Write #N$00 to #REGhl.
  $B944,$01 Increment #REGhl by one.
  $B945,$02 Decrease counter by one and loop back to #R$B942 until counter is zero.
  $B947,$04 Increment #REGix by two.
  $B94B,$01 Decrease #REGc by one.
  $B94C,$02 Jump to #R$B93A until #REGc is zero.
  $B94E,$03 Jump to #R$B92D.

b $B951
  $B951,$01

c $B952 Draw Room
@ $B952 label=DrawRoom
  $B952,$05 Write #N$B8 to #R$AF88.
  $B957,$03 Call #R$B902.
  $B95A,$05 #REGe=(#REGiy+#N$0F)*#N$02.
  $B95F,$02 #REGd=#N$00.
  $B961,$04 #REGhl=#R$CDB5+#REGde.
  $B965,$01 #REGe=*#REGhl.
  $B966,$01 Increment #REGhl by one.
  $B967,$01 #REGd=*#REGhl.
  $B968,$01 Exchange the #REGde and #REGhl registers.
  $B969,$01 #REGd=*#REGhl.
  $B96A,$01 Increment #REGhl by one.
  $B96B,$01 #REGe=*#REGhl.
  $B96C,$01 Increment #REGhl by one.
  $B96D,$01 #REGa=#REGd.
  $B96E,$02,b$01 Keep only bits 0-6.
  $B970,$04 If the result is #N$7F jump to #R$B9A8.
  $B974,$04 If the result is not #N$7E jump to #R$B982.
  $B978,$01 #REGa=#REGe.
  $B979,$03 Call #R$EC1D.
  $B97C,$02
  $B97E,$02 Increment #REGhl by two.
  $B980,$02 Jump to #R$B969.

  $B982,$01 Stash #REGhl on the stack.
  $B983,$01 #REGb=#REGa.
  $B984,$01 #REGa=#REGe.
  $B985,$02,b$01 Keep only bits 3-7.
  $B987,$03 Rotate #REGa right three times.
  $B98A,$01 #REGc=#REGa.
  $B98B,$02 Rotate #REGd left once.
  $B98D,$02 Rotate #REGe left once.
  $B98F,$01 #REGa=#REGe.
  $B990,$02,b$01 Keep only bits 0-3.
  $B992,$03 #REGd=#REGa+#N$05.
  $B995,$01 #REGe=#REGc.
  $B996,$01 #REGl=#REGb.
  $B997,$02 #REGh=#N$00.
  $B999,$01 #REGhl*=#N$02.
  $B99A,$04 #REGhl+=#R$BD86.
  $B99E,$01 #REGa=*#REGhl.
  $B99F,$01 Increment #REGhl by one.
  $B9A0,$01 #REGh=*#REGhl.
  $B9A1,$01 #REGl=#REGa.
  $B9A2,$03 Call #R$B84B.
  $B9A5,$01 Restore #REGhl from the stack.
  $B9A6,$02 Jump to #R$B969.
  $B9A8,$03 Call #R$B9AC.
  $B9AB,$01 Return.

c $B9AC
  $B9AC,$03 #REGde=#N$5B00.
  $B9AF,$04 #REGix=#R$8278.
  $B9B3,$03 #REGbc=#N($1000,$04,$04).
  $B9B6,$03 #REGl=*#REGix+#N$00.
  $B9B9,$03 #REGh=*#REGix+#N$01.
  $B9BC,$04 Increment #REGix by two.
  $B9C0,$03 Call #R$BA25.
  $B9C3,$03 If the return from #R$BA25 is even, jump to #R$B9B6.
  $B9C6,$03 #REGbc=#N($0200,$04,$04).
  $B9C9,$03 #REGde=#R$FE00.
  $B9CC,$03 #REGhl=#R$5900.
  $B9CF,$03 Call #R$BA25.
  $B9D2,$03 If the return from #R$BA25 is even, jump to #R$B9CF.
  $B9D5,$01 Return.

c $B9D6
  $B9D6,$06 Write #REGiy+#N$0F to #R$B951.
  $B9DC,$02 #REGb=#N$05.
  $B9DE,$02 Stash #REGiy on the stack.
  $B9E0,$04 #REGiy=#R$BC6B.
  $B9E4,$01 Stash #REGbc on the stack.
  $B9E5,$03 #REGa=*#R$B951.
  $B9E8,$05 If #REGa is not equal to *#REGiy+#N$0F, jump to #R$B9F0.
  $B9ED,$03 Call #R$B0E6.
  $B9F0,$02 Decrease #REGiy by one.
  $B9F2,$01 Restore #REGbc from the stack.
  $B9F3,$02 Decrease counter by one and loop back to #R$B9E4 until counter is zero.
  $B9F5,$02 Restore #REGiy from the stack.
  $B9F7,$03 Call #R$B9FB.
  $B9FA,$01 Return.

c $B9FB Handler: Sprites
@ $B9FB label=Handler_Sprites
N $B9FB Draw Sprites.
  $B9FB,$03 #REGhl=#R$6B00.
  $B9FE,$04 #REGix=#R$8278.
  $BA02,$03 #REGbc=#N$1000.
@ $BA05 label=Handler_Sprites_Loop
  $BA05,$03 #REGe=*#REGix+#N$00.
  $BA08,$03 #REGd=*#REGix+#N$01.
  $BA0B,$04 Increment #REGix by two.
  $BA0F,$03 Call #R$BA25.
  $BA12,$03 Jump to #R$BA05 until #REGbc is zero.
N $BA15 Draw Sprite attributes.
  $BA15,$03 #REGbc=#N$0200.
  $BA18,$03 #REGhl=#R$FC00.
  $BA1B,$03 #REGde=#R$5900.
@ $BA1E label=Handler_Sprites_Attributes_Loop
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

c $BA66

c $BAD8
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

b $BC67
  $BC6B

g $BC94 Lives: Wally
@ $BC94 label=Lives_Wally
B $BC94,$01

g $BC95 Lives: Wilma
@ $BC95 label=Lives_Wilma
B $BC95,$01

g $BC96 Lives: Tom
@ $BC96 label=Lives_Tom
B $BC96,$01

g $BC97 Lives: Dick
@ $BC97 label=Lives_Dick
B $BC97,$01

g $BC98 Lives: Harry
@ $BC98 label=Lives_Harry
B $BC98,$01

g $BCB7 Items
@ $BCB7 label=Item_1_Wally
B $BCB7,$01
@ $BCB8 label=Item_1_Wilma
B $BCB8,$01
@ $BCB9 label=Item_1_Tom
B $BCB9,$01
@ $BCBA label=Item_1_Dick
B $BCBA,$01
@ $BCBB label=Item_1_Harry
B $BCBB,$01
@ $BCBC label=Item_2_Wally
B $BCBC,$01
@ $BCBD label=Item_2_Wilma
B $BCBD,$01
@ $BCBE label=Item_2_Tom
B $BCBE,$01
@ $BCBF label=Item_2_Dick
B $BCBF,$01
@ $BCC0 label=Item_2_Harry
B $BCC0,$01

b $BCC1

@ $BCF5 label=Item_Supermarket
B $BCF5,$01
@ $BCFA label=Item_Park
B $BCFA,$01
@ $BD01 label=Item_WallStreet
B $BD01,$01
@ $BD0F label=Item_Workshed_OnLeftTable
B $BD0F,$01
@ $BD13 label=Item_Workshed_UnderLeftTable
B $BD13,$01
@ $BD17 label=Item_Workshed_UnderRightTable
B $BD17,$01
@ $BD21 label=Item_School
B $BD21,$01
@ $BD32 label=Item_KemcoLab_Left
B $BD32,$01
@ $BD36 label=Item_KemcoLab_Right
B $BD36,$01
@ $BD3B label=Item_Garage
B $BD3B,$01
@ $BD4D label=Item_WallysHouse
B $BD4D,$01
@ $BD4F label=Item_Bank
B $BD4F,$01
@ $BD5A label=Item_Butchers
B $BD5A,$01
@ $BD6A label=Item_Station
B $BD6A,$01
@ $BD78 label=Item_Sewer
B $BD78,$01

b $BD86 Table: Graphic Data
@ $BD86 label=Table_GraphicData
W $BD86,$02 Sprite ID: #R(#PEEK(#PC)+#PEEK(#PC+$01)*$100)(#N((#PC-$BD86)/$02)).
L $BD86,$02,$76

b $BE72 Graphic ID
@ $BE72 label=graphic_0
  $BE72,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $BE75,$02 Attribute=#COLOUR(#PC+$01)
  $BE77,$01
  $BE78,$01
  $BE79,$01
  $BE7A,$01
  $BE7B,$01
  $BE7C,$01
  $BE7D Terminator.

b $BE8F Graphic ID
@ $BE8F label=graphic_1
  $BE8F,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $BE92,$02 Attribute=#COLOUR(#PC+$01)
  $BE94,$01
  $BE95,$01
  $BE96,$01
  $BE97,$01
  $BE98,$01
  $BE99,$01
  $BE9A,$01
  $BE9B,$01
  $BE9C,$01
  $BE9D,$01
  $BE9E,$01
  $BE9F,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $BEA2,$01
  $BEA3,$01
  $BEA4,$01
  $BEA5,$01
  $BEA6,$01
  $BEA7,$01
  $BEA8,$01
  $BEA9,$01
  $BEAA,$01
  $BEAB,$01
  $BEAC,$01
  $BEAD,$01
  $BEAE,$01
  $BEAF,$01
  $BEB0,$01
  $BEB1,$01
  $BEB2,$01
  $BEB3,$01
  $BEB4,$01
  $BEB5,$01
  $BEB6,$01
  $BEB7,$01
  $BEB8,$01
  $BEB9,$01
  $BEBA,$01
  $BEBB,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $BEBE,$02 Attribute=#COLOUR(#PC+$01)
  $BEC0,$01
  $BEC1,$01
  $BEC2,$01
  $BEC3,$01
  $BEC4,$01
  $BEC5,$01
  $BEC6,$01
  $BEC7,$01
  $BEC8,$01
  $BEC9,$01
  $BECA,$01
  $BECB,$01
  $BECC,$01
  $BECD,$01
  $BECE,$01
  $BECF,$01
  $BED0,$01
  $BED1,$01
  $BED2,$01
  $BED3,$01
  $BED4,$01
  $BED5,$01
  $BED6,$01
  $BED7,$01
  $BED8,$01
  $BED9 Terminator.

b $BEDA Graphic ID
@ $BEDA label=graphic_2
  $BEDA,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $BEDD,$02 Attribute=#COLOUR(#PC+$01)
  $BEDF,$01
  $BEE0,$01
  $BEE1,$01
  $BEE2,$01
  $BEE3,$01
  $BEE4 Terminator.

b $BF03 Graphic ID
@ $BF03 label=graphic_3
  $BF03,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $BF06,$02 Attribute=#COLOUR(#PC+$01)
  $BF08,$01
  $BF09,$01
  $BF0A,$01
  $BF0B,$01
  $BF0C,$01
  $BF0D,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $BF10,$02 Attribute=#COLOUR(#PC+$01)
  $BF12,$01
  $BF13,$01
  $BF14,$01
  $BF15,$01
  $BF16,$01
  $BF17,$01
  $BF18 Terminator.

b $BF19 Graphic ID
@ $BF19 label=graphic_4
  $BF19,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $BF1C,$02 Attribute=#COLOUR(#PC+$01)
  $BF1E,$01
  $BF1F,$01
  $BF20,$01
  $BF21,$01
  $BF22,$02 Attribute=#COLOUR(#PC+$01)
  $BF24,$01
  $BF25,$01
  $BF26 Terminator.

b $BF27 Graphic ID
@ $BF27 label=graphic_5
  $BF27,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $BF2A,$02 Attribute=#COLOUR(#PC+$01)
  $BF2C,$01
  $BF2D,$01
  $BF2E,$01
  $BF2F,$01
  $BF30,$01
  $BF31,$01
  $BF32,$01
  $BF33,$01
  $BF34,$01
  $BF35 Terminator.

b $BF81 Graphic ID
@ $BF81 label=graphic_6
  $BF81,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $BF84,$02 Attribute=#COLOUR(#PC+$01)
  $BF86,$01
  $BF87,$01
  $BF88,$01
  $BF89,$01
  $BF8A,$01
  $BF8B,$01
  $BF8C,$01
  $BF8D,$01
  $BF8E,$01
  $BF8F,$01
  $BF90,$01
  $BF91,$01
  $BF92,$01
  $BF93,$01
  $BF94,$01
  $BF95,$01
  $BF96,$01
  $BF97,$01
  $BF98,$01
  $BF99,$01
  $BF9A,$01
  $BF9B,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $BF9E,$01
  $BF9F,$01
  $BFA0,$01
  $BFA1 Terminator.

b $BFA4 Graphic ID
@ $BFA4 label=graphic_7
  $BFA4,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $BFA7,$01
  $BFA8,$01
  $BFA9,$02 Attribute=#COLOUR(#PC+$01)
  $BFAB,$01
  $BFAC,$01
  $BFAD,$01
  $BFAE,$01
  $BFAF,$01
  $BFB0,$01
  $BFB1 Terminator.

b $BFB2 Graphic ID
@ $BFB2 label=graphic_8
  $BFB2,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $BFB5,$02 Attribute=#COLOUR(#PC+$01)
  $BFB7,$01
  $BFB8,$01
  $BFB9,$01
  $BFBA,$01
  $BFBB,$01
  $BFBC,$01
  $BFBD,$01
  $BFBE,$01
  $BFBF,$01
  $BFC0,$01
  $BFC1,$01
  $BFC2,$01
  $BFC3,$01
  $BFC4,$01
  $BFC5,$01
  $BFC6,$01
  $BFC7,$01
  $BFC8,$01
  $BFC9,$01
  $BFCA,$01
  $BFCB,$01
  $BFCC,$01
  $BFCD,$01
  $BFCE,$01
  $BFCF,$01
  $BFD0,$01
  $BFD1,$01
  $BFD2,$01
  $BFD3,$01
  $BFD4,$01
  $BFD5,$01
  $BFD6,$01
  $BFD7,$01
  $BFD8,$01
  $BFD9 Terminator.

b $BFDA Graphic ID
@ $BFDA label=graphic_9
  $BFDA,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $BFDD,$02 Attribute=#COLOUR(#PC+$01)
  $BFDF,$01
  $BFE0,$01
  $BFE1,$01
  $BFE2,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $BFE5,$02 Attribute=#COLOUR(#PC+$01)
  $BFE7,$01
  $BFE8,$01
  $BFE9,$01
  $BFEA,$01
  $BFEB,$01
  $BFEC,$01
  $BFED,$01
  $BFEE,$01
  $BFEF,$01
  $BFF0,$01
  $BFF1,$01
  $BFF2,$01
  $BFF3,$01
  $BFF4,$01
  $BFF5,$01
  $BFF6,$01
  $BFF7,$02 Attribute=#COLOUR(#PC+$01)
  $BFF9,$01
  $BFFA,$01
  $BFFB,$01
  $BFFC,$01
  $BFFD Terminator.

b $BFE2 Graphic ID
@ $BFE2 label=graphic_10
  $BFE2,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $BFE5,$02 Attribute=#COLOUR(#PC+$01)
  $BFE7,$01
  $BFE8,$01
  $BFE9,$01
  $BFEA,$01
  $BFEB,$01
  $BFEC,$01
  $BFED,$01
  $BFEE,$01
  $BFEF,$01
  $BFF0,$01
  $BFF1,$01
  $BFF2,$01
  $BFF3,$01
  $BFF4,$01
  $BFF5,$01
  $BFF6,$01
  $BFF7,$02 Attribute=#COLOUR(#PC+$01)
  $BFF9,$01
  $BFFA,$01
  $BFFB,$01
  $BFFC,$01
  $BFFD Terminator.

b $BFFE Graphic ID
@ $BFFE label=graphic_11
  $BFFE,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C001,$02 Attribute=#COLOUR(#PC+$01)
  $C003,$01
  $C004,$01
  $C005,$01
  $C006,$01
  $C007,$01
  $C008,$01
  $C009,$01
  $C00A,$01
  $C00B,$01
  $C00C Terminator.

b $C026 Graphic ID
@ $C026 label=graphic_12
  $C026,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C029,$02 Attribute=#COLOUR(#PC+$01)
  $C02B,$01
  $C02C,$01
  $C02D,$01
  $C02E,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C031,$01
  $C032,$01
  $C033,$01
  $C034,$01
  $C035,$01
  $C036,$01
  $C037,$01
  $C038,$01
  $C039,$01
  $C03A,$01
  $C03B Terminator.

b $C03C Graphic ID
@ $C03C label=graphic_13
  $C03C,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C03F,$02 Attribute=#COLOUR(#PC+$01)
  $C041,$01
  $C042,$01
  $C043,$01
  $C044 Terminator.

b $C045 Graphic ID
@ $C045 label=graphic_14
  $C045,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C048,$02 Attribute=#COLOUR(#PC+$01)
  $C04A,$01
  $C04B,$01
  $C04C,$01
  $C04D,$01
  $C04E,$01
  $C04F Terminator.

b $C050 Graphic ID
@ $C050 label=graphic_15
  $C050,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C053,$02 Attribute=#COLOUR(#PC+$01)
  $C055,$01
  $C056,$01
  $C057,$01
  $C058,$01
  $C059 Terminator.

b $C05A Graphic ID
@ $C05A label=graphic_16
  $C05A,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C05D,$02 Attribute=#COLOUR(#PC+$01)
  $C05F,$01
  $C060,$01
  $C061,$01
  $C062,$01
  $C063,$01
  $C064,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C067,$01
  $C068,$01
  $C069,$01
  $C06A,$01
  $C06B,$01
  $C06C,$01
  $C06D,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C070,$01
  $C071,$01
  $C072,$01
  $C073,$01
  $C074,$01
  $C075,$01
  $C076,$01
  $C077,$01
  $C078 Terminator.

b $C082 Graphic ID
@ $C082 label=graphic_17
  $C082,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C085,$02 Attribute=#COLOUR(#PC+$01)
  $C087,$01
  $C088,$01
  $C089,$01
  $C08A,$01
  $C08B,$01
  $C08C,$01
  $C08D,$01
  $C08E,$01
  $C08F,$01
  $C090,$01
  $C091,$01
  $C092,$01
  $C093,$01
  $C094,$01
  $C095,$01
  $C096 Terminator.

b $C0A0 Graphic ID
@ $C0A0 label=graphic_18
  $C0A0,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C0A3,$01
  $C0A4,$01
  $C0A5,$02 Attribute=#COLOUR(#PC+$01)
  $C0A7,$01
  $C0A8,$01
  $C0A9 Terminator.

b $C0AA Graphic ID
@ $C0AA label=graphic_19
  $C0AA,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C0AD,$02 Attribute=#COLOUR(#PC+$01)
  $C0AF,$01
  $C0B0,$01
  $C0B1,$01
  $C0B2,$01
  $C0B3,$02 Attribute=#COLOUR(#PC+$01)
  $C0B5,$01
  $C0B6,$01
  $C0B7 Terminator.

b $C0B8 Graphic ID
@ $C0B8 label=graphic_20
  $C0B8,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C0BB,$02 Attribute=#COLOUR(#PC+$01)
  $C0BD,$01
  $C0BE,$01
  $C0BF,$01
  $C0C0,$01
  $C0C1,$01
  $C0C2,$01
  $C0C3,$01
  $C0C4,$01
  $C0C5,$01
  $C0C6,$01
  $C0C7,$01
  $C0C8,$01
  $C0C9,$01
  $C0CA,$01
  $C0CB,$01
  $C0CC,$01
  $C0CD,$01
  $C0CE,$01
  $C0CF,$01
  $C0D0,$01
  $C0D1,$01
  $C0D2,$01
  $C0D3 Terminator.

b $C0D4 Graphic ID
@ $C0D4 label=graphic_21
  $C0D4,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C0D7,$02 Attribute=#COLOUR(#PC+$01)
  $C0D9,$01
  $C0DA,$01
  $C0DB,$01
  $C0DC,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C0DF,$01
  $C0E0,$01
  $C0E1,$02 Attribute=#COLOUR(#PC+$01)
  $C0E3,$01
  $C0E4,$01
  $C0E5,$01
  $C0E6,$01
  $C0E7,$01
  $C0E8,$01
  $C0E9 Terminator.

b $C0DC Graphic ID
@ $C0DC label=graphic_22
  $C0DC,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C0DF,$01
  $C0E0,$01
  $C0E1,$02 Attribute=#COLOUR(#PC+$01)
  $C0E3,$01
  $C0E4,$01
  $C0E5,$01
  $C0E6,$01
  $C0E7,$01
  $C0E8,$01
  $C0E9 Terminator.

b $C0F1 Graphic ID
@ $C0F1 label=graphic_23
  $C0F1,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C0F4,$02 Attribute=#COLOUR(#PC+$01)
  $C0F6,$01
  $C0F7,$01
  $C0F8,$01
  $C0F9,$01
  $C0FA,$01
  $C0FB,$01
  $C0FC,$01
  $C0FD,$01
  $C0FE,$01
  $C0FF,$02 Attribute=#COLOUR(#PC+$01)
  $C101,$01
  $C102,$01
  $C103,$01
  $C104,$01
  $C105,$01
  $C106,$01
  $C107,$01
  $C108,$01
  $C109,$01
  $C10A,$01
  $C10B,$01
  $C10C,$01
  $C10D,$01
  $C10E,$02 Attribute=#COLOUR(#PC+$01)
  $C110,$01
  $C111,$01
  $C112,$01
  $C113,$01
  $C114,$01
  $C115,$01
  $C116,$01
  $C117,$01
  $C118,$01
  $C119,$01
  $C11A,$01
  $C11B,$01
  $C11C,$01
  $C11D,$01
  $C11E,$01
  $C11F,$01
  $C120,$01
  $C121,$01
  $C122,$01
  $C123,$01
  $C124,$01
  $C125,$01
  $C126,$01
  $C127,$01
  $C128,$02 Attribute=#COLOUR(#PC+$01)
  $C12A,$01
  $C12B,$01
  $C12C,$01
  $C12D,$01
  $C12E,$01
  $C12F,$01
  $C130,$01
  $C131 Terminator.

b $C132 Graphic ID
@ $C132 label=graphic_24
  $C132,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C135,$02 Attribute=#COLOUR(#PC+$01)
  $C137,$01
  $C138,$01
  $C139,$01
  $C13A,$01
  $C13B,$01
  $C13C,$01
  $C13D,$01
  $C13E,$01
  $C13F,$01
  $C140,$01
  $C141,$01
  $C142,$01
  $C143,$01
  $C144,$01
  $C145,$01
  $C146,$01
  $C147,$01
  $C148,$01
  $C149,$01
  $C14A,$01
  $C14B,$01
  $C14C,$01
  $C14D,$01
  $C14E,$01
  $C14F Terminator.

b $C19D Graphic ID
@ $C19D label=graphic_25
  $C19D,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C1A0,$02 Attribute=#COLOUR(#PC+$01)
  $C1A2,$01
  $C1A3,$01
  $C1A4,$01
  $C1A5,$01
  $C1A6,$01
  $C1A7,$01
  $C1A8,$01
  $C1A9,$01
  $C1AA,$01
  $C1AB,$01
  $C1AC,$01
  $C1AD,$01
  $C1AE,$01
  $C1AF,$01
  $C1B0,$01
  $C1B1,$01
  $C1B2,$01
  $C1B3,$01
  $C1B4,$01
  $C1B5,$01
  $C1B6,$01
  $C1B7,$01
  $C1B8,$01
  $C1B9,$01
  $C1BA,$01
  $C1BB,$01
  $C1BC,$01
  $C1BD,$01
  $C1BE,$01
  $C1BF,$01
  $C1C0,$01
  $C1C1,$01
  $C1C2,$01
  $C1C3,$01
  $C1C4,$01
  $C1C5,$01
  $C1C6,$01
  $C1C7,$01
  $C1C8,$01
  $C1C9,$01
  $C1CA,$01
  $C1CB,$01
  $C1CC,$01
  $C1CD,$01
  $C1CE,$01
  $C1CF,$01
  $C1D0,$01
  $C1D1,$01
  $C1D2,$01
  $C1D3,$01
  $C1D4,$01
  $C1D5,$01
  $C1D6,$01
  $C1D7,$01
  $C1D8,$01
  $C1D9,$01
  $C1DA,$01
  $C1DB,$01
  $C1DC,$01
  $C1DD,$01
  $C1DE,$01
  $C1DF,$01
  $C1E0,$01
  $C1E1,$01
  $C1E2,$01
  $C1E3,$01
  $C1E4,$01
  $C1E5,$01
  $C1E6,$01
  $C1E7,$01
  $C1E8,$01
  $C1E9,$01
  $C1EA,$01
  $C1EB,$01
  $C1EC,$01
  $C1ED,$01
  $C1EE,$01
  $C1EF,$01
  $C1F0,$01
  $C1F1,$01
  $C1F2,$01
  $C1F3,$01
  $C1F4,$01
  $C1F5,$01
  $C1F6,$01
  $C1F7,$01
  $C1F8,$01
  $C1F9 Terminator.

b $C20A Graphic ID
@ $C20A label=graphic_26
  $C20A,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C20D,$02 Attribute=#COLOUR(#PC+$01)
  $C20F,$01
  $C210,$01
  $C211,$01
  $C212,$02 Attribute=#COLOUR(#PC+$01)
  $C214,$01
  $C215,$01
  $C216,$01
  $C217,$02 Attribute=#COLOUR(#PC+$01)
  $C219,$01
  $C21A,$01
  $C21B,$01
  $C21C,$01
  $C21D,$01
  $C21E,$01
  $C21F Terminator.

b $C220 Graphic ID
@ $C220 label=graphic_27
  $C220,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C223,$02 Attribute=#COLOUR(#PC+$01)
  $C225,$01
  $C226,$02 Attribute=#COLOUR(#PC+$01)
  $C228,$01
  $C229,$01
  $C22A,$01
  $C22B,$01
  $C22C,$01
  $C22D,$01
  $C22E,$01
  $C22F,$02 Attribute=#COLOUR(#PC+$01)
  $C231,$01
  $C232,$01
  $C233,$01
  $C234,$01
  $C235,$01
  $C236,$02 Attribute=#COLOUR(#PC+$01)
  $C238,$01
  $C239,$01
  $C23A,$01
  $C23B Terminator.

b $C23C Graphic ID
@ $C23C label=graphic_28
  $C23C,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C23F,$02 Attribute=#COLOUR(#PC+$01)
  $C241,$01
  $C242,$01
  $C243,$01
  $C244,$01
  $C245,$02 Attribute=#COLOUR(#PC+$01)
  $C247,$01
  $C248,$01
  $C249,$01
  $C24A,$01
  $C24B,$01
  $C24C,$01
  $C24D,$01
  $C24E,$01
  $C24F,$02 Attribute=#COLOUR(#PC+$01)
  $C251,$01
  $C252,$01
  $C253 Terminator.

b $C254 Graphic ID
@ $C254 label=graphic_29
  $C254,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C257,$02 Attribute=#COLOUR(#PC+$01)
  $C259,$01
  $C25A,$02 Attribute=#COLOUR(#PC+$01)
  $C25C,$01
  $C25D,$02 Attribute=#COLOUR(#PC+$01)
  $C25F,$01
  $C260,$02 Attribute=#COLOUR(#PC+$01)
  $C262,$01
  $C263,$02 Attribute=#COLOUR(#PC+$01)
  $C265,$01
  $C266,$02 Attribute=#COLOUR(#PC+$01)
  $C268,$01
  $C269,$02 Attribute=#COLOUR(#PC+$01)
  $C26B,$01
  $C26C,$02 Attribute=#COLOUR(#PC+$01)
  $C26E,$01
  $C26F,$01
  $C270,$01
  $C271,$02 Attribute=#COLOUR(#PC+$01)
  $C273,$01
  $C274,$01
  $C275,$01
  $C276,$01
  $C277,$01
  $C278,$01
  $C279,$01
  $C27A,$01
  $C27B Terminator.

b $C27C Graphic ID
@ $C27C label=graphic_30
  $C27C,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C27F,$02 Attribute=#COLOUR(#PC+$01)
  $C281,$01
  $C282,$01
  $C283,$01
  $C284,$01
  $C285,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C288,$02 Attribute=#COLOUR(#PC+$01)
  $C28A,$01
  $C28B,$01
  $C28C,$01
  $C28D,$01
  $C28E,$01
  $C28F,$01
  $C290 Terminator.

b $C291 Graphic ID
@ $C291 label=graphic_31
  $C291,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C294,$02 Attribute=#COLOUR(#PC+$01)
  $C296,$01
  $C297,$01
  $C298,$01
  $C299 Terminator.

b $C29A Graphic ID
@ $C29A label=graphic_32
  $C29A,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C29D,$02 Attribute=#COLOUR(#PC+$01)
  $C29F,$01
  $C2A0,$01
  $C2A1,$01
  $C2A2,$01
  $C2A3,$01
  $C2A4,$01
  $C2A5,$01
  $C2A6,$01
  $C2A7 Terminator.

b $C2A8 Graphic ID
@ $C2A8 label=graphic_33
  $C2A8,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C2AB,$02 Attribute=#COLOUR(#PC+$01)
  $C2AD,$01
  $C2AE,$01
  $C2AF,$01
  $C2B0,$01
  $C2B1,$01
  $C2B2,$01
  $C2B3,$01
  $C2B4,$01
  $C2B5,$01
  $C2B6,$01
  $C2B7,$01
  $C2B8,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C2BB,$01
  $C2BC,$01
  $C2BD,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C2C0,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C2C3,$01
  $C2C4,$01
  $C2C5,$01
  $C2C6,$01
  $C2C7,$01
  $C2C8,$01
  $C2C9,$01
  $C2CA,$01
  $C2CB,$01
  $C2CC,$01
  $C2CD,$01
  $C2CE,$01
  $C2CF,$01
  $C2D0,$01
  $C2D1,$01
  $C2D2,$01
  $C2D3,$01
  $C2D4,$01
  $C2D5,$01
  $C2D6,$01
  $C2D7,$01
  $C2D8,$01
  $C2D9,$01
  $C2DA,$01
  $C2DB,$01
  $C2DC,$01
  $C2DD,$01
  $C2DE,$01
  $C2DF,$01
  $C2E0,$01
  $C2E1,$01
  $C2E2,$01
  $C2E3,$01
  $C2E4,$01
  $C2E5,$01
  $C2E6,$01
  $C2E7,$01
  $C2E8,$01
  $C2E9,$01
  $C2EA,$01
  $C2EB,$01
  $C2EC,$01
  $C2ED,$01
  $C2EE,$01
  $C2EF,$01
  $C2F0,$01
  $C2F1,$01
  $C2F2,$01
  $C2F3,$01
  $C2F4,$01
  $C2F5,$01
  $C2F6,$01
  $C2F7,$01
  $C2F8,$01
  $C2F9,$01
  $C2FA,$01
  $C2FB,$01
  $C2FC,$01
  $C2FD,$02 Attribute=#COLOUR(#PC+$01)
  $C2FF,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C302,$01
  $C303,$01
  $C304,$01
  $C305,$01
  $C306,$01
  $C307,$01
  $C308,$01
  $C309,$01
  $C30A,$01
  $C30B,$01
  $C30C,$01
  $C30D,$02 Attribute=#COLOUR(#PC+$01)
  $C30F,$01
  $C310,$01
  $C311 Terminator.

b $C312 Graphic ID
@ $C312 label=graphic_34
  $C312,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C315,$01
  $C316,$01
  $C317,$02 Attribute=#COLOUR(#PC+$01)
  $C319,$01
  $C31A,$01
  $C31B,$01
  $C31C,$01
  $C31D,$01
  $C31E,$01
  $C31F,$01
  $C320,$01
  $C321,$01
  $C322,$01
  $C323,$01
  $C324,$01
  $C325,$01
  $C326,$01
  $C327,$01
  $C328,$01
  $C329,$01
  $C32A,$01
  $C32B,$01
  $C32C,$01
  $C32D,$01
  $C32E,$01
  $C32F,$01
  $C330,$01
  $C331,$01
  $C332,$01
  $C333 Terminator.

b $C334 Graphic ID
@ $C334 label=graphic_35
  $C334,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C337,$02 Attribute=#COLOUR(#PC+$01)
  $C339,$01
  $C33A,$01
  $C33B,$01
  $C33C,$01
  $C33D,$01
  $C33E,$01
  $C33F,$02 Attribute=#COLOUR(#PC+$01)
  $C341,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C344,$01
  $C345,$01
  $C346 Terminator.

b $C347 Graphic ID
@ $C347 label=graphic_36
  $C347,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C34A,$01
  $C34B,$01
  $C34C,$02 Attribute=#COLOUR(#PC+$01)
  $C34E,$01
  $C34F,$01
  $C350,$01
  $C351 Terminator.

b $C352 Graphic ID
@ $C352 label=graphic_37
  $C352,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C355,$01
  $C356,$01
  $C357,$02 Attribute=#COLOUR(#PC+$01)
  $C359,$01
  $C35A,$01
  $C35B,$01
  $C35C Terminator.

b $C35D Graphic ID
@ $C35D label=graphic_38
  $C35D,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C360,$01
  $C361,$01
  $C362,$02 Attribute=#COLOUR(#PC+$01)
  $C364,$01
  $C365,$01
  $C366,$01
  $C367,$01
  $C368 Terminator.

b $C369 Graphic ID
@ $C369 label=graphic_39
  $C369,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C36C,$02 Attribute=#COLOUR(#PC+$01)
  $C36E,$01
  $C36F,$01
  $C370,$01
  $C371,$01
  $C372,$01
  $C373,$01
  $C374,$01
  $C375,$01
  $C376,$01
  $C377,$01
  $C378,$01
  $C379,$01
  $C37A,$01
  $C37B Terminator.

b $C37C Graphic ID
@ $C37C label=graphic_40
  $C37C,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C37F,$02 Attribute=#COLOUR(#PC+$01)
  $C381,$01
  $C382,$01
  $C383,$01
  $C384,$01
  $C385,$01
  $C386,$01
  $C387,$01
  $C388,$01
  $C389,$01
  $C38A,$01
  $C38B,$01
  $C38C,$01
  $C38D,$01
  $C38E,$01
  $C38F,$01
  $C390,$01
  $C391,$02 Attribute=#COLOUR(#PC+$01)
  $C393,$01
  $C394,$01
  $C395,$01
  $C396,$01
  $C397,$02 Attribute=#COLOUR(#PC+$01)
  $C399,$01
  $C39A,$01
  $C39B,$01
  $C39C,$01
  $C39D,$01
  $C39E,$02 Attribute=#COLOUR(#PC+$01)
  $C3A0,$01
  $C3A1,$01
  $C3A2,$02 Attribute=#COLOUR(#PC+$01)
  $C3A4,$01
  $C3A5,$01
  $C3A6,$01
  $C3A7,$01
  $C3A8,$02 Attribute=#COLOUR(#PC+$01)
  $C3AA,$01
  $C3AB,$02 Attribute=#COLOUR(#PC+$01)
  $C3AD,$01
  $C3AE,$01
  $C3AF,$01
  $C3B0,$01
  $C3B1,$01
  $C3B2,$02 Attribute=#COLOUR(#PC+$01)
  $C3B4,$01
  $C3B5,$01
  $C3B6,$02 Attribute=#COLOUR(#PC+$01)
  $C3B8,$01
  $C3B9,$01
  $C3BA,$01
  $C3BB,$01
  $C3BC,$02 Attribute=#COLOUR(#PC+$01)
  $C3BE,$01
  $C3BF,$02 Attribute=#COLOUR(#PC+$01)
  $C3C1,$01
  $C3C2,$01
  $C3C3,$01
  $C3C4,$01
  $C3C5,$01
  $C3C6,$02 Attribute=#COLOUR(#PC+$01)
  $C3C8,$01
  $C3C9,$01
  $C3CA,$02 Attribute=#COLOUR(#PC+$01)
  $C3CC,$01
  $C3CD,$01
  $C3CE,$01
  $C3CF,$02 Attribute=#COLOUR(#PC+$01)
  $C3D1,$01
  $C3D2,$02 Attribute=#COLOUR(#PC+$01)
  $C3D4,$01
  $C3D5,$01
  $C3D6,$01
  $C3D7,$02 Attribute=#COLOUR(#PC+$01)
  $C3D9,$01
  $C3DA Terminator.

b $C3DB Graphic ID
@ $C3DB label=graphic_41
  $C3DB,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C3DE,$02 Attribute=#COLOUR(#PC+$01)
  $C3E0,$01
  $C3E1,$01
  $C3E2,$01
  $C3E3,$01
  $C3E4,$01
  $C3E5,$01
  $C3E6,$01
  $C3E7,$01
  $C3E8,$01
  $C3E9,$01
  $C3EA,$01
  $C3EB,$01
  $C3EC,$01
  $C3ED,$01
  $C3EE,$01
  $C3EF,$01
  $C3F0,$01
  $C3F1,$01
  $C3F2,$01
  $C3F3,$02 Attribute=#COLOUR(#PC+$01)
  $C3F5,$01
  $C3F6,$01
  $C3F7,$01
  $C3F8,$01
  $C3F9,$02 Attribute=#COLOUR(#PC+$01)
  $C3FB,$01
  $C3FC,$01
  $C3FD,$01
  $C3FE,$01
  $C3FF,$01
  $C400,$02 Attribute=#COLOUR(#PC+$01)
  $C402,$01
  $C403,$02 Attribute=#COLOUR(#PC+$01)
  $C405,$01
  $C406,$01
  $C407,$01
  $C408,$01
  $C409,$01
  $C40A,$02 Attribute=#COLOUR(#PC+$01)
  $C40C,$01
  $C40D,$02 Attribute=#COLOUR(#PC+$01)
  $C40F,$01
  $C410,$01
  $C411,$01
  $C412,$01
  $C413,$01
  $C414,$02 Attribute=#COLOUR(#PC+$01)
  $C416,$01
  $C417,$02 Attribute=#COLOUR(#PC+$01)
  $C419,$01
  $C41A,$01
  $C41B,$01
  $C41C,$01
  $C41D,$01
  $C41E,$02 Attribute=#COLOUR(#PC+$01)
  $C420,$01
  $C421,$02 Attribute=#COLOUR(#PC+$01)
  $C423,$01
  $C424,$01
  $C425,$01
  $C426,$01
  $C427,$01
  $C428,$02 Attribute=#COLOUR(#PC+$01)
  $C42A,$01
  $C42B,$01
  $C42C,$01
  $C42D,$02 Attribute=#COLOUR(#PC+$01)
  $C42F,$01
  $C430,$02 Attribute=#COLOUR(#PC+$01)
  $C432,$01
  $C433,$01
  $C434,$01
  $C435,$01
  $C436 Terminator.

b $C437 Graphic ID
@ $C437 label=graphic_42
  $C437,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C43A,$02 Attribute=#COLOUR(#PC+$01)
  $C43C,$01
  $C43D,$02 Attribute=#COLOUR(#PC+$01)
  $C43F,$01
  $C440,$01
  $C441,$01
  $C442,$02 Attribute=#COLOUR(#PC+$01)
  $C444,$01
  $C445,$01
  $C446,$01
  $C447,$01
  $C448,$01
  $C449,$01
  $C44A,$01
  $C44B,$01
  $C44C,$01
  $C44D,$01
  $C44E,$01
  $C44F,$01
  $C450,$01
  $C451,$01
  $C452,$01
  $C453,$01
  $C454,$02 Attribute=#COLOUR(#PC+$01)
  $C456,$01
  $C457,$01
  $C458,$01
  $C459,$02 Attribute=#COLOUR(#PC+$01)
  $C45B,$01
  $C45C,$01
  $C45D,$01
  $C45E,$01
  $C45F,$01
  $C460,$01
  $C461,$01
  $C462,$01
  $C463,$01
  $C464,$01
  $C465,$01
  $C466,$01
  $C467,$01
  $C468,$02 Attribute=#COLOUR(#PC+$01)
  $C46A,$01
  $C46B,$01
  $C46C,$01
  $C46D,$02 Attribute=#COLOUR(#PC+$01)
  $C46F,$01
  $C470,$01
  $C471,$01
  $C472,$01
  $C473,$01
  $C474,$01
  $C475,$01
  $C476,$01
  $C477,$01
  $C478,$01
  $C479,$01
  $C47A,$01
  $C47B,$01
  $C47C,$02 Attribute=#COLOUR(#PC+$01)
  $C47E,$01
  $C47F,$01
  $C480,$01
  $C481,$02 Attribute=#COLOUR(#PC+$01)
  $C483,$01
  $C484,$01
  $C485,$01
  $C486,$01
  $C487,$01
  $C488,$01
  $C489,$01
  $C48A,$01
  $C48B,$01
  $C48C,$01
  $C48D,$01
  $C48E,$01
  $C48F,$01
  $C490,$02 Attribute=#COLOUR(#PC+$01)
  $C492,$01
  $C493,$01
  $C494,$01
  $C495,$02 Attribute=#COLOUR(#PC+$01)
  $C497,$01
  $C498,$01
  $C499,$01
  $C49A,$01
  $C49B,$01
  $C49C,$01
  $C49D,$01
  $C49E,$01
  $C49F,$01
  $C4A0,$01
  $C4A1,$02 Attribute=#COLOUR(#PC+$01)
  $C4A3,$01
  $C4A4,$01
  $C4A5,$01
  $C4A6,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C4A9,$01
  $C4AA,$01
  $C4AB,$01
  $C4AC,$01
  $C4AD,$01
  $C4AE,$01
  $C4AF,$01
  $C4B0,$01
  $C4B1,$01
  $C4B2,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C4B5,$01
  $C4B6,$01
  $C4B7,$01
  $C4B8,$02 Attribute=#COLOUR(#PC+$01)
  $C4BA,$01
  $C4BB,$01
  $C4BC,$01
  $C4BD,$02 Attribute=#COLOUR(#PC+$01)
  $C4BF,$01
  $C4C0,$01
  $C4C1,$01
  $C4C2,$02 Attribute=#COLOUR(#PC+$01)
  $C4C4,$01
  $C4C5,$01
  $C4C6,$02 Attribute=#COLOUR(#PC+$01)
  $C4C8,$01
  $C4C9,$01
  $C4CA,$01
  $C4CB,$01
  $C4CC Terminator.

b $C4CD Graphic ID
@ $C4CD label=graphic_43
  $C4CD,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C4D0,$02 Attribute=#COLOUR(#PC+$01)
  $C4D2,$01
  $C4D3,$01
  $C4D4,$01
  $C4D5,$01
  $C4D6,$01
  $C4D7,$01
  $C4D8,$01
  $C4D9,$01
  $C4DA,$01
  $C4DB,$01
  $C4DC,$01
  $C4DD,$01
  $C4DE,$01
  $C4DF,$01
  $C4E0,$01
  $C4E1,$01
  $C4E2,$01
  $C4E3,$01
  $C4E4,$01
  $C4E5,$01
  $C4E6,$01
  $C4E7,$01
  $C4E8,$01
  $C4E9,$02 Attribute=#COLOUR(#PC+$01)
  $C4EB,$01
  $C4EC,$01
  $C4ED,$01
  $C4EE,$01
  $C4EF,$01
  $C4F0,$01
  $C4F1 Terminator.

b $C56B Graphic ID
@ $C56B label=graphic_44
  $C56B,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C56E,$01
  $C56F,$01
  $C570,$02 Attribute=#COLOUR(#PC+$01)
  $C572,$01
  $C573,$01
  $C574,$01
  $C575,$01
  $C576 Terminator.

b $C577 Graphic ID
@ $C577 label=graphic_45
  $C577,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C57A,$02 Attribute=#COLOUR(#PC+$01)
  $C57C,$01
  $C57D,$01
  $C57E,$01
  $C57F Terminator.

b $C580 Graphic ID
@ $C580 label=graphic_46
  $C580,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C583,$02 Attribute=#COLOUR(#PC+$01)
  $C585,$01
  $C586,$01
  $C587,$01
  $C588,$01
  $C589,$01
  $C58A,$01
  $C58B,$01
  $C58C,$01
  $C58D,$01
  $C58E,$01
  $C58F,$01
  $C590,$01
  $C591,$01
  $C592,$01
  $C593,$01
  $C594,$01
  $C595,$02 Attribute=#COLOUR(#PC+$01)
  $C597,$01
  $C598,$01
  $C599,$01
  $C59A,$01
  $C59B,$01
  $C59C,$01
  $C59D,$01
  $C59E,$01
  $C59F,$01
  $C5A0,$01
  $C5A1,$01
  $C5A2,$01
  $C5A3,$01
  $C5A4,$01
  $C5A5,$01
  $C5A6,$01
  $C5A7,$01
  $C5A8,$01
  $C5A9,$01
  $C5AA,$01
  $C5AB,$01
  $C5AC,$01
  $C5AD,$01
  $C5AE,$01
  $C5AF,$01
  $C5B0,$01
  $C5B1,$01
  $C5B2,$01
  $C5B3,$01
  $C5B4,$01
  $C5B5,$01
  $C5B6,$01
  $C5B7,$01
  $C5B8,$01
  $C5B9,$01
  $C5BA,$01
  $C5BB,$01
  $C5BC,$01
  $C5BD,$01
  $C5BE,$01
  $C5BF Terminator.

b $C5C0 Graphic ID
@ $C5C0 label=graphic_47
  $C5C0,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C5C3,$02 Attribute=#COLOUR(#PC+$01)
  $C5C5,$01
  $C5C6,$01
  $C5C7,$01
  $C5C8,$01
  $C5C9,$01
  $C5CA,$01
  $C5CB,$01
  $C5CC,$01
  $C5CD,$01
  $C5CE,$01
  $C5CF,$01
  $C5D0,$01
  $C5D1,$01
  $C5D2,$01
  $C5D3,$02 Attribute=#COLOUR(#PC+$01)
  $C5D5,$01
  $C5D6,$01
  $C5D7,$01
  $C5D8,$01
  $C5D9 Terminator.

b $C5DA Graphic ID
@ $C5DA label=graphic_48
  $C5DA,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C5DD,$02 Attribute=#COLOUR(#PC+$01)
  $C5DF,$01
  $C5E0,$01
  $C5E1,$01
  $C5E2,$01
  $C5E3,$01
  $C5E4,$01
  $C5E5,$01
  $C5E6,$02 Attribute=#COLOUR(#PC+$01)
  $C5E8,$01
  $C5E9,$01
  $C5EA,$01
  $C5EB,$01
  $C5EC,$01
  $C5ED,$01
  $C5EE,$01
  $C5EF,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C5F2,$02 Attribute=#COLOUR(#PC+$01)
  $C5F4,$01
  $C5F5,$01
  $C5F6,$01
  $C5F7,$01
  $C5F8 Terminator.

b $C5F9 Graphic ID
@ $C5F9 label=graphic_49
  $C5F9,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C5FC,$02 Attribute=#COLOUR(#PC+$01)
  $C5FE,$01
  $C5FF,$01
  $C600,$01
  $C601,$01
  $C602,$02 Attribute=#COLOUR(#PC+$01)
  $C604,$01
  $C605,$01
  $C606,$01
  $C607,$01
  $C608,$02 Attribute=#COLOUR(#PC+$01)
  $C60A,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C60D,$01
  $C60E,$01
  $C60F Terminator.

b $C610 Graphic ID
@ $C610 label=graphic_50
  $C610,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C613,$02 Attribute=#COLOUR(#PC+$01)
  $C615,$01
  $C616,$01
  $C617,$01
  $C618,$01
  $C619 Terminator.

b $C61A Graphic ID
@ $C61A label=graphic_51
  $C61A,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C61D,$02 Attribute=#COLOUR(#PC+$01)
  $C61F,$01
  $C620,$01
  $C621,$01
  $C622,$01
  $C623,$01
  $C624 Terminator.

b $C625 Graphic ID
@ $C625 label=graphic_52
  $C625,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C628,$02 Attribute=#COLOUR(#PC+$01)
  $C62A,$01
  $C62B,$01
  $C62C,$01
  $C62D,$01
  $C62E,$01
  $C62F,$02 Attribute=#COLOUR(#PC+$01)
  $C631,$01
  $C632,$01
  $C633,$01
  $C634 Terminator.

b $C635 Graphic ID
@ $C635 label=graphic_53
  $C635,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C638,$02 Attribute=#COLOUR(#PC+$01)
  $C63A,$01
  $C63B,$01
  $C63C,$01
  $C63D,$01
  $C63E,$01
  $C63F,$02 Attribute=#COLOUR(#PC+$01)
  $C641,$01
  $C642,$01
  $C643,$01
  $C644,$01
  $C645,$01
  $C646,$01
  $C647,$01
  $C648,$01
  $C649,$01
  $C64A,$01
  $C64B,$02 Attribute=#COLOUR(#PC+$01)
  $C64D,$01
  $C64E,$01
  $C64F,$01
  $C650 Terminator.

b $C651 Graphic ID
@ $C651 label=graphic_54
  $C651,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C654,$02 Attribute=#COLOUR(#PC+$01)
  $C656,$01
  $C657,$01
  $C658,$01
  $C659,$01
  $C65A,$01
  $C65B,$01
  $C65C,$01
  $C65D,$01
  $C65E,$01
  $C65F,$01
  $C660,$01
  $C661,$01
  $C662,$01
  $C663,$01
  $C664,$01
  $C665,$01
  $C666,$01
  $C667,$01
  $C668,$01
  $C669,$01
  $C66A,$01
  $C66B,$01
  $C66C,$01
  $C66D,$01
  $C66E,$01
  $C66F,$01
  $C670,$01
  $C671,$01
  $C672,$01
  $C673,$01
  $C674,$01
  $C675,$01
  $C676,$01
  $C677,$01
  $C678,$01
  $C679,$01
  $C67A,$01
  $C67B,$01
  $C67C,$01
  $C67D,$01
  $C67E,$01
  $C67F,$01
  $C680,$01
  $C681,$01
  $C682,$01
  $C683,$01
  $C684,$01
  $C685,$01
  $C686,$01
  $C687,$01
  $C688,$01
  $C689,$01
  $C68A,$01
  $C68B,$01
  $C68C,$01
  $C68D,$01
  $C68E,$01
  $C68F,$01
  $C690,$01
  $C691,$01
  $C692,$01
  $C693,$01
  $C694,$01
  $C695,$01
  $C696,$01
  $C697,$01
  $C698,$01
  $C699,$01
  $C69A,$01
  $C69B,$01
  $C69C,$01
  $C69D,$01
  $C69E,$01
  $C69F,$01
  $C6A0,$01
  $C6A1,$01
  $C6A2,$01
  $C6A3,$01
  $C6A4,$01
  $C6A5,$01
  $C6A6,$01
  $C6A7,$01
  $C6A8,$01
  $C6A9,$01
  $C6AA,$01
  $C6AB,$01
  $C6AC,$01
  $C6AD,$01
  $C6AE,$01
  $C6AF,$01
  $C6B0,$01
  $C6B1,$01
  $C6B2,$01
  $C6B3,$01
  $C6B4,$01
  $C6B5,$01
  $C6B6,$01
  $C6B7,$01
  $C6B8,$01
  $C6B9,$01
  $C6BA,$01
  $C6BB,$01
  $C6BC,$01
  $C6BD,$01
  $C6BE,$01
  $C6BF,$01
  $C6C0,$01
  $C6C1,$01
  $C6C2,$02 Attribute=#COLOUR(#PC+$01)
  $C6C4,$01
  $C6C5,$01
  $C6C6,$01
  $C6C7,$01
  $C6C8,$01
  $C6C9,$01
  $C6CA,$01
  $C6CB,$01
  $C6CC,$01
  $C6CD,$01
  $C6CE,$01
  $C6CF,$01
  $C6D0,$01
  $C6D1,$01
  $C6D2,$01
  $C6D3,$01
  $C6D4,$01
  $C6D5,$01
  $C6D6,$01
  $C6D7,$01
  $C6D8,$01
  $C6D9,$01
  $C6DA,$01
  $C6DB,$01
  $C6DC,$01
  $C6DD,$01
  $C6DE,$01
  $C6DF,$01
  $C6E0,$01
  $C6E1,$01
  $C6E2 Terminator.

b $C6E3 Graphic ID
@ $C6E3 label=graphic_55
  $C6E3,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C6E6,$02 Attribute=#COLOUR(#PC+$01)
  $C6E8,$01
  $C6E9,$01
  $C6EA,$01
  $C6EB,$01
  $C6EC,$01
  $C6ED,$01
  $C6EE,$01
  $C6EF,$01
  $C6F0,$01
  $C6F1,$01
  $C6F2,$01
  $C6F3,$01
  $C6F4,$01
  $C6F5,$01
  $C6F6,$01
  $C6F7,$01
  $C6F8,$01
  $C6F9,$01
  $C6FA,$01
  $C6FB,$01
  $C6FC,$01
  $C6FD,$01
  $C6FE,$01
  $C6FF,$01
  $C700,$01
  $C701,$01
  $C702 Terminator.

b $C703 Graphic ID
@ $C703 label=graphic_56
  $C703,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C706,$02 Attribute=#COLOUR(#PC+$01)
  $C708,$01
  $C709,$01
  $C70A,$01
  $C70B,$01
  $C70C,$01
  $C70D,$01
  $C70E,$01
  $C70F,$01
  $C710,$01
  $C711,$01
  $C712,$01
  $C713,$01
  $C714,$01
  $C715,$01
  $C716,$01
  $C717,$01
  $C718,$01
  $C719,$01
  $C71A,$01
  $C71B,$01
  $C71C,$01
  $C71D,$01
  $C71E Terminator.

b $C71F Graphic ID
@ $C71F label=graphic_57
  $C71F,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C722,$02 Attribute=#COLOUR(#PC+$01)
  $C724,$01
  $C725,$01
  $C726,$01
  $C727,$01
  $C728,$01
  $C729,$01
  $C72A,$01
  $C72B,$01
  $C72C,$01
  $C72D,$01
  $C72E,$01
  $C72F,$01
  $C730,$01
  $C731 Terminator.

b $C732 Graphic ID
@ $C732 label=graphic_58
  $C732,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C735,$02 Attribute=#COLOUR(#PC+$01)
  $C737,$01
  $C738,$01
  $C739,$01
  $C73A,$01
  $C73B,$01
  $C73C,$01
  $C73D,$01
  $C73E,$01
  $C73F,$01
  $C740,$01
  $C741,$01
  $C742,$01
  $C743,$01
  $C744 Terminator.

b $C745 Graphic ID
@ $C745 label=graphic_59
  $C745,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C748,$02 Attribute=#COLOUR(#PC+$01)
  $C74A,$01
  $C74B,$01
  $C74C,$01
  $C74D,$01
  $C74E,$01
  $C74F,$01
  $C750,$01
  $C751,$01
  $C752,$01
  $C753,$01
  $C754,$01
  $C755,$01
  $C756,$01
  $C757,$01
  $C758,$01
  $C759,$01
  $C75A,$01
  $C75B,$01
  $C75C,$01
  $C75D,$01
  $C75E,$01
  $C75F,$01
  $C760,$01
  $C761 Terminator.

b $C762 Graphic ID
@ $C762 label=graphic_60
  $C762,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C765,$02 Attribute=#COLOUR(#PC+$01)
  $C767,$01
  $C768,$01
  $C769,$01
  $C76A,$01
  $C76B,$01
  $C76C,$01
  $C76D,$01
  $C76E,$01
  $C76F,$01
  $C770,$01
  $C771,$01
  $C772,$01
  $C773,$01
  $C774,$01
  $C775,$01
  $C776,$01
  $C777,$01
  $C778,$01
  $C779,$01
  $C77A,$01
  $C77B,$01
  $C77C,$01
  $C77D,$01
  $C77E Terminator.

b $C77F Graphic ID
@ $C77F label=graphic_61
  $C77F,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C782,$02 Attribute=#COLOUR(#PC+$01)
  $C784,$01
  $C785,$01
  $C786,$01
  $C787,$01
  $C788,$01
  $C789,$01
  $C78A,$01
  $C78B,$01
  $C78C,$01
  $C78D,$01
  $C78E,$01
  $C78F,$01
  $C790,$01
  $C791,$01
  $C792,$01
  $C793,$01
  $C794,$01
  $C795,$01
  $C796 Terminator.

b $C797 Graphic ID
@ $C797 label=graphic_62
  $C797,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C79A,$02 Attribute=#COLOUR(#PC+$01)
  $C79C,$01
  $C79D,$01
  $C79E,$01
  $C79F,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C7A2,$02 Attribute=#COLOUR(#PC+$01)
  $C7A4,$01
  $C7A5,$01
  $C7A6,$01
  $C7A7,$01
  $C7A8,$01
  $C7A9,$01
  $C7AA,$01
  $C7AB,$01
  $C7AC,$01
  $C7AD,$01
  $C7AE,$01
  $C7AF,$01
  $C7B0,$01
  $C7B1,$01
  $C7B2,$01
  $C7B3,$01
  $C7B4,$01
  $C7B5,$01
  $C7B6 Terminator.

b $C79F Graphic ID
@ $C79F label=graphic_63
  $C79F,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C7A2,$02 Attribute=#COLOUR(#PC+$01)
  $C7A4,$01
  $C7A5,$01
  $C7A6,$01
  $C7A7,$01
  $C7A8,$01
  $C7A9,$01
  $C7AA,$01
  $C7AB,$01
  $C7AC,$01
  $C7AD,$01
  $C7AE,$01
  $C7AF,$01
  $C7B0,$01
  $C7B1,$01
  $C7B2,$01
  $C7B3,$01
  $C7B4,$01
  $C7B5,$01
  $C7B6 Terminator.

b $C7B7 Graphic ID
@ $C7B7 label=graphic_64
  $C7B7,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C7BA,$02 Attribute=#COLOUR(#PC+$01)
  $C7BC,$01
  $C7BD,$01
  $C7BE,$01
  $C7BF,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C7C2,$02 Attribute=#COLOUR(#PC+$01)
  $C7C4,$01
  $C7C5,$01
  $C7C6,$01
  $C7C7,$01
  $C7C8,$01
  $C7C9,$01
  $C7CA,$01
  $C7CB,$01
  $C7CC,$01
  $C7CD,$01
  $C7CE,$01
  $C7CF,$01
  $C7D0,$01
  $C7D1,$01
  $C7D2,$01
  $C7D3,$01
  $C7D4,$01
  $C7D5,$01
  $C7D6,$01
  $C7D7,$01
  $C7D8,$01
  $C7D9,$01
  $C7DA,$01
  $C7DB,$01
  $C7DC,$01
  $C7DD,$01
  $C7DE,$01
  $C7DF Terminator.

b $C7BF Graphic ID
@ $C7BF label=graphic_65
  $C7BF,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C7C2,$02 Attribute=#COLOUR(#PC+$01)
  $C7C4,$01
  $C7C5,$01
  $C7C6,$01
  $C7C7,$01
  $C7C8,$01
  $C7C9,$01
  $C7CA,$01
  $C7CB,$01
  $C7CC,$01
  $C7CD,$01
  $C7CE,$01
  $C7CF,$01
  $C7D0,$01
  $C7D1,$01
  $C7D2,$01
  $C7D3,$01
  $C7D4,$01
  $C7D5,$01
  $C7D6,$01
  $C7D7,$01
  $C7D8,$01
  $C7D9,$01
  $C7DA,$01
  $C7DB,$01
  $C7DC,$01
  $C7DD,$01
  $C7DE,$01
  $C7DF Terminator.

b $C7E0 Graphic ID
@ $C7E0 label=graphic_66
  $C7E0,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C7E3,$02 Attribute=#COLOUR(#PC+$01)
  $C7E5,$01
  $C7E6,$01
  $C7E7,$01
  $C7E8,$01
  $C7E9,$01
  $C7EA,$01
  $C7EB,$01
  $C7EC,$01
  $C7ED,$01
  $C7EE,$01
  $C7EF,$01
  $C7F0,$01
  $C7F1,$01
  $C7F2,$01
  $C7F3,$01
  $C7F4,$01
  $C7F5,$01
  $C7F6,$01
  $C7F7,$01
  $C7F8,$01
  $C7F9,$01
  $C7FA,$01
  $C7FB,$01
  $C7FC,$01
  $C7FD,$01
  $C7FE,$01
  $C7FF,$01
  $C800 Terminator.

b $C801 Graphic ID
@ $C801 label=graphic_67
  $C801,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C804,$02 Attribute=#COLOUR(#PC+$01)
  $C806,$01
  $C807,$01
  $C808,$01
  $C809,$01
  $C80A,$01
  $C80B,$01
  $C80C,$01
  $C80D,$01
  $C80E,$01
  $C80F,$01
  $C810,$01
  $C811,$01
  $C812,$01
  $C813,$01
  $C814,$01
  $C815,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C818,$01
  $C819,$01
  $C81A,$01
  $C81B,$01
  $C81C,$01
  $C81D,$01
  $C81E,$01
  $C81F,$01
  $C820,$01
  $C821,$01
  $C822,$01
  $C823,$01
  $C824,$01
  $C825,$01
  $C826,$01
  $C827,$01
  $C828,$01
  $C829,$01
  $C82A Terminator.

b $C82B Graphic ID
@ $C82B label=graphic_68
  $C82B,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C82E,$02 Attribute=#COLOUR(#PC+$01)
  $C830,$01
  $C831,$01
  $C832,$01
  $C833,$01
  $C834,$01
  $C835,$01
  $C836,$01
  $C837,$01
  $C838,$01
  $C839,$01
  $C83A,$01
  $C83B,$01
  $C83C,$01
  $C83D,$01
  $C83E,$01
  $C83F,$01
  $C840,$01
  $C841,$01
  $C842,$01
  $C843,$01
  $C844,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C847,$02 Attribute=#COLOUR(#PC+$01)
  $C849,$01
  $C84A,$01
  $C84B,$01
  $C84C,$01
  $C84D,$01
  $C84E,$01
  $C84F,$01
  $C850,$01
  $C851,$01
  $C852,$01
  $C853,$01
  $C854,$01
  $C855,$01
  $C856 Terminator.

b $C844 Graphic ID
@ $C844 label=graphic_69
  $C844,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C847,$02 Attribute=#COLOUR(#PC+$01)
  $C849,$01
  $C84A,$01
  $C84B,$01
  $C84C,$01
  $C84D,$01
  $C84E,$01
  $C84F,$01
  $C850,$01
  $C851,$01
  $C852,$01
  $C853,$01
  $C854,$01
  $C855,$01
  $C856 Terminator.

b $C857 Graphic ID
@ $C857 label=graphic_70
  $C857,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C85A,$02 Attribute=#COLOUR(#PC+$01)
  $C85C,$01
  $C85D,$01
  $C85E,$01
  $C85F Terminator.

b $C860 Graphic ID
@ $C860 label=graphic_71
  $C860,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C863,$02 Attribute=#COLOUR(#PC+$01)
  $C865,$01
  $C866,$01
  $C867,$01
  $C868,$01
  $C869,$01
  $C86A,$01
  $C86B,$01
  $C86C,$01
  $C86D,$01
  $C86E,$01
  $C86F,$01
  $C870,$01
  $C871,$01
  $C872,$01
  $C873,$01
  $C874,$01
  $C875 Terminator.

b $C876 Graphic ID
@ $C876 label=graphic_72
  $C876,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C879,$02 Attribute=#COLOUR(#PC+$01)
  $C87B,$01
  $C87C,$01
  $C87D,$01
  $C87E,$01
  $C87F,$01
  $C880,$01
  $C881,$01
  $C882,$01
  $C883,$01
  $C884,$01
  $C885,$01
  $C886,$01
  $C887,$01
  $C888 Terminator.

b $C889 Graphic ID
@ $C889 label=graphic_73
  $C889,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C88C,$02 Attribute=#COLOUR(#PC+$01)
  $C88E,$01
  $C88F,$01
  $C890,$01
  $C891,$01
  $C892,$01
  $C893,$01
  $C894,$01
  $C895,$01
  $C896,$01
  $C897,$01
  $C898,$01
  $C899,$01
  $C89A,$01
  $C89B,$01
  $C89C,$01
  $C89D,$01
  $C89E Terminator.

b $C89F Graphic ID
@ $C89F label=graphic_74
  $C89F,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C8A2,$02 Attribute=#COLOUR(#PC+$01)
  $C8A4,$01
  $C8A5,$01
  $C8A6,$01
  $C8A7,$01
  $C8A8,$01
  $C8A9,$01
  $C8AA,$01
  $C8AB,$01
  $C8AC,$01
  $C8AD,$01
  $C8AE,$01
  $C8AF,$01
  $C8B0,$01
  $C8B1,$01
  $C8B2 Terminator.

b $C8B3 Graphic ID
@ $C8B3 label=graphic_75
  $C8B3,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C8B6,$02 Attribute=#COLOUR(#PC+$01)
  $C8B8,$01
  $C8B9,$01
  $C8BA,$01
  $C8BB,$01
  $C8BC,$01
  $C8BD,$01
  $C8BE,$01
  $C8BF,$01
  $C8C0,$01
  $C8C1,$01
  $C8C2 Terminator.

b $C8C3 Graphic ID
@ $C8C3 label=graphic_76
  $C8C3,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C8C6,$02 Attribute=#COLOUR(#PC+$01)
  $C8C8,$01
  $C8C9,$01
  $C8CA,$01
  $C8CB,$01
  $C8CC,$01
  $C8CD,$01
  $C8CE,$01
  $C8CF,$01
  $C8D0,$01
  $C8D1,$01
  $C8D2,$01
  $C8D3,$01
  $C8D4,$01
  $C8D5,$01
  $C8D6,$01
  $C8D7,$01
  $C8D8,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C8DB,$01
  $C8DC,$01
  $C8DD,$01
  $C8DE,$01
  $C8DF,$01
  $C8E0,$01
  $C8E1,$01
  $C8E2,$01
  $C8E3 Terminator.

b $C8E4 Graphic ID
@ $C8E4 label=graphic_77
  $C8E4,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C8E7,$02 Attribute=#COLOUR(#PC+$01)
  $C8E9,$01
  $C8EA,$01
  $C8EB,$01
  $C8EC,$01
  $C8ED,$01
  $C8EE,$01
  $C8EF,$01
  $C8F0,$01
  $C8F1,$01
  $C8F2,$01
  $C8F3,$01
  $C8F4,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C8F7,$01
  $C8F8,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C8FB,$01
  $C8FC,$01
  $C8FD,$01
  $C8FE,$01
  $C8FF,$01
  $C900,$01
  $C901,$01
  $C902,$01
  $C903,$01
  $C904,$01
  $C905,$01
  $C906,$01
  $C907 Terminator.

b $C908 Graphic ID
@ $C908 label=graphic_78
  $C908,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C90B,$02 Attribute=#COLOUR(#PC+$01)
  $C90D,$01
  $C90E,$01
  $C90F,$01
  $C910,$01
  $C911,$01
  $C912,$01
  $C913,$01
  $C914,$01
  $C915,$01
  $C916,$01
  $C917,$01
  $C918,$01
  $C919 Terminator.

b $C91A Graphic ID
@ $C91A label=graphic_79
  $C91A,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C91D,$02 Attribute=#COLOUR(#PC+$01)
  $C91F,$01
  $C920,$01
  $C921,$01
  $C922,$01
  $C923,$01
  $C924,$01
  $C925,$01
  $C926,$01
  $C927,$01
  $C928,$01
  $C929,$01
  $C92A,$01
  $C92B,$01
  $C92C,$01
  $C92D Terminator.

b $C92E Graphic ID
@ $C92E label=graphic_80
  $C92E,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C931,$02 Attribute=#COLOUR(#PC+$01)
  $C933,$01
  $C934,$01
  $C935,$01
  $C936,$01
  $C937,$01
  $C938,$01
  $C939,$01
  $C93A,$01
  $C93B,$01
  $C93C,$01
  $C93D,$01
  $C93E,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C941,$01
  $C942 Terminator.

b $C943 Graphic ID
@ $C943 label=graphic_81
  $C943,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C946,$02 Attribute=#COLOUR(#PC+$01)
  $C948,$01
  $C949,$01
  $C94A,$01
  $C94B,$01
  $C94C,$01
  $C94D,$01
  $C94E,$01
  $C94F,$01
  $C950,$01
  $C951,$01
  $C952,$01
  $C953,$01
  $C954,$01
  $C955,$01
  $C956 Terminator.

b $C957 Graphic ID
@ $C957 label=graphic_82
  $C957,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C95A,$02 Attribute=#COLOUR(#PC+$01)
  $C95C,$01
  $C95D,$01
  $C95E,$01
  $C95F Terminator.

b $C960 Graphic ID
@ $C960 label=graphic_83
  $C960,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C963,$02 Attribute=#COLOUR(#PC+$01)
  $C965,$01
  $C966,$01
  $C967,$01
  $C968,$01
  $C969,$01
  $C96A,$01
  $C96B,$01
  $C96C,$01
  $C96D,$01
  $C96E,$01
  $C96F,$01
  $C970,$01
  $C971,$01
  $C972,$01
  $C973,$01
  $C974,$01
  $C975,$02 Attribute=#COLOUR(#PC+$01)
  $C977,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C97A,$01
  $C97B,$01
  $C97C,$01
  $C97D,$01
  $C97E,$01
  $C97F,$01
  $C980 Terminator.

b $C986 Graphic ID
@ $C986 label=graphic_84
  $C986,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C989,$02 Attribute=#COLOUR(#PC+$01)
  $C98B,$01
  $C98C,$01
  $C98D,$01
  $C98E,$01
  $C98F,$01
  $C990,$01
  $C991,$01
  $C992,$01
  $C993,$01
  $C994,$01
  $C995,$01
  $C996,$01
  $C997,$01
  $C998,$01
  $C999,$01
  $C99A,$01
  $C99B,$01
  $C99C,$01
  $C99D,$01
  $C99E,$01
  $C99F,$01
  $C9A0,$01
  $C9A1 Terminator.

b $C9A2 Graphic ID
@ $C9A2 label=graphic_85
  $C9A2,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C9A5,$02 Attribute=#COLOUR(#PC+$01)
  $C9A7,$01
  $C9A8,$01
  $C9A9,$01
  $C9AA,$01
  $C9AB,$01
  $C9AC,$01
  $C9AD,$01
  $C9AE,$01
  $C9AF,$01
  $C9B0,$01
  $C9B1,$01
  $C9B2,$01
  $C9B3,$01
  $C9B4,$01
  $C9B5,$01
  $C9B6,$01
  $C9B7,$01
  $C9B8,$01
  $C9B9,$01
  $C9BA,$01
  $C9BB,$01
  $C9BC,$01
  $C9BD Terminator.

b $C9BE Graphic ID
@ $C9BE label=graphic_86
  $C9BE,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C9C1,$02 Attribute=#COLOUR(#PC+$01)
  $C9C3,$01
  $C9C4,$01
  $C9C5,$01
  $C9C6,$01
  $C9C7,$01
  $C9C8,$01
  $C9C9,$01
  $C9CA,$01
  $C9CB,$01
  $C9CC,$01
  $C9CD,$01
  $C9CE,$01
  $C9CF,$01
  $C9D0,$01
  $C9D1,$01
  $C9D2,$01
  $C9D3 Terminator.

b $C9D4 Graphic ID
@ $C9D4 label=graphic_87
  $C9D4,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C9D7,$02 Attribute=#COLOUR(#PC+$01)
  $C9D9,$01
  $C9DA,$01
  $C9DB,$01
  $C9DC Terminator.

b $C9DD Graphic ID
@ $C9DD label=graphic_88
  $C9DD,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C9E0,$02 Attribute=#COLOUR(#PC+$01)
  $C9E2,$01
  $C9E3,$01
  $C9E4,$01
  $C9E5,$01
  $C9E6,$01
  $C9E7,$01
  $C9E8,$01
  $C9E9,$01
  $C9EA,$01
  $C9EB,$01
  $C9EC,$01
  $C9ED,$01
  $C9EE,$01
  $C9EF,$01
  $C9F0,$01
  $C9F1,$01
  $C9F2,$01
  $C9F3,$01
  $C9F4,$01
  $C9F5,$01
  $C9F6,$01
  $C9F7,$01
  $C9F8,$01
  $C9F9,$01
  $C9FA,$01
  $C9FB Terminator.

b $C9FC Graphic ID
@ $C9FC label=graphic_89
  $C9FC,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $C9FF,$02 Attribute=#COLOUR(#PC+$01)
  $CA01,$01
  $CA02,$02 Attribute=#COLOUR(#PC+$01)
  $CA04,$01
  $CA05,$01
  $CA06,$01
  $CA07,$01
  $CA08,$01
  $CA09,$01
  $CA0A,$01
  $CA0B,$01
  $CA0C,$01
  $CA0D,$01
  $CA0E,$02 Attribute=#COLOUR(#PC+$01)
  $CA10,$01
  $CA11,$01
  $CA12,$01
  $CA13,$01
  $CA14,$01
  $CA15,$01
  $CA16,$01
  $CA17,$01
  $CA18,$01
  $CA19,$01
  $CA1A,$01
  $CA1B,$01
  $CA1C,$01
  $CA1D,$01
  $CA1E Terminator.

b $CA1F Graphic ID
@ $CA1F label=graphic_90
  $CA1F,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CA22,$02 Attribute=#COLOUR(#PC+$01)
  $CA24,$01
  $CA25,$01
  $CA26,$01
  $CA27,$01
  $CA28,$01
  $CA29,$01
  $CA2A,$01
  $CA2B,$01
  $CA2C,$01
  $CA2D,$01
  $CA2E,$01
  $CA2F,$01
  $CA30,$01
  $CA31,$01
  $CA32,$01
  $CA33,$01
  $CA34,$01
  $CA35,$01
  $CA36,$01
  $CA37,$01
  $CA38,$01
  $CA39,$01
  $CA3A,$01
  $CA3B,$01
  $CA3C,$01
  $CA3D,$01
  $CA3E,$01
  $CA3F,$02 Attribute=#COLOUR(#PC+$01)
  $CA41,$01
  $CA42,$01
  $CA43,$01
  $CA44,$01
  $CA45,$01
  $CA46,$01
  $CA47,$01
  $CA48,$01
  $CA49,$01
  $CA4A,$01
  $CA4B,$01
  $CA4C,$01
  $CA4D,$01
  $CA4E,$01
  $CA4F,$01
  $CA50,$01
  $CA51,$01
  $CA52,$02 Attribute=#COLOUR(#PC+$01)
  $CA54,$01
  $CA55,$01
  $CA56 Terminator.

b $CA57 Graphic ID
@ $CA57 label=graphic_91
  $CA57,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CA5A,$02 Attribute=#COLOUR(#PC+$01)
  $CA5C,$01
  $CA5D,$01
  $CA5E,$01
  $CA5F,$01
  $CA60,$01
  $CA61,$01
  $CA62,$01
  $CA63,$01
  $CA64,$01
  $CA65,$01
  $CA66,$01
  $CA67,$01
  $CA68,$01
  $CA69,$01
  $CA6A,$01
  $CA6B,$02 Attribute=#COLOUR(#PC+$01)
  $CA6D,$01
  $CA6E,$01
  $CA6F,$01
  $CA70,$01
  $CA71,$01
  $CA72,$01
  $CA73,$01
  $CA74,$01
  $CA75,$01
  $CA76,$01
  $CA77,$01
  $CA78,$01
  $CA79,$01
  $CA7A,$01
  $CA7B,$01
  $CA7C,$01
  $CA7D,$01
  $CA7E,$01
  $CA7F,$01
  $CA80,$01
  $CA81,$01
  $CA82,$01
  $CA83,$01
  $CA84,$01
  $CA85,$01
  $CA86,$01
  $CA87,$01
  $CA88,$01
  $CA89,$01
  $CA8A,$01
  $CA8B,$01
  $CA8C,$01
  $CA8D,$01
  $CA8E,$01
  $CA8F,$02 Attribute=#COLOUR(#PC+$01)
  $CA91,$01
  $CA92,$01
  $CA93,$01
  $CA94,$01
  $CA95,$01
  $CA96,$01
  $CA97,$01
  $CA98,$01
  $CA99 Terminator.

b $CA9A Graphic ID
@ $CA9A label=graphic_92
  $CA9A,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CA9D,$02 Attribute=#COLOUR(#PC+$01)
  $CA9F,$01
  $CAA0,$01
  $CAA1,$01
  $CAA2,$01
  $CAA3,$01
  $CAA4,$01
  $CAA5,$01
  $CAA6,$01
  $CAA7,$01
  $CAA8,$02 Attribute=#COLOUR(#PC+$01)
  $CAAA,$01
  $CAAB,$01
  $CAAC,$01
  $CAAD Terminator.

b $CAAE Graphic ID
@ $CAAE label=graphic_93
  $CAAE,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CAB1,$02 Attribute=#COLOUR(#PC+$01)
  $CAB3,$01
  $CAB4,$01
  $CAB5,$01
  $CAB6,$01
  $CAB7,$01
  $CAB8,$01
  $CAB9,$01
  $CABA,$01
  $CABB,$01
  $CABC,$01
  $CABD,$01
  $CABE,$01
  $CABF,$01
  $CAC0,$01
  $CAC1,$01
  $CAC2,$01
  $CAC3,$01
  $CAC4,$01
  $CAC5,$01
  $CAC6,$01
  $CAC7,$01
  $CAC8,$01
  $CAC9 Terminator.

b $CACA Graphic ID
@ $CACA label=graphic_94
  $CACA,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CACD,$02 Attribute=#COLOUR(#PC+$01)
  $CACF,$01
  $CAD0,$01
  $CAD1,$01
  $CAD2,$01
  $CAD3,$01
  $CAD4,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CAD7,$02 Attribute=#COLOUR(#PC+$01)
  $CAD9,$01
  $CADA,$01
  $CADB,$01
  $CADC,$01
  $CADD,$01
  $CADE,$01
  $CADF,$01
  $CAE0,$01
  $CAE1,$01
  $CAE2,$01
  $CAE3,$01
  $CAE4,$01
  $CAE5,$01
  $CAE6,$01
  $CAE7,$01
  $CAE8,$01
  $CAE9,$01
  $CAEA,$01
  $CAEB Terminator.

b $CAEC Graphic ID
@ $CAEC label=graphic_95
  $CAEC,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CAEF,$02 Attribute=#COLOUR(#PC+$01)
  $CAF1,$01
  $CAF2,$02 Attribute=#COLOUR(#PC+$01)
  $CAF4,$01
  $CAF5,$01
  $CAF6,$01
  $CAF7,$02 Attribute=#COLOUR(#PC+$01)
  $CAF9,$01
  $CAFA,$01
  $CAFB,$01
  $CAFC,$01
  $CAFD,$01
  $CAFE,$01
  $CAFF,$01
  $CB00,$01
  $CB01,$01
  $CB02,$01
  $CB03,$01
  $CB04 Terminator.

b $CB05 Graphic ID
@ $CB05 label=graphic_96
  $CB05,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CB08,$02 Attribute=#COLOUR(#PC+$01)
  $CB0A,$01
  $CB0B,$01
  $CB0C,$01
  $CB0D,$01
  $CB0E,$01
  $CB0F,$01
  $CB10,$01
  $CB11,$01
  $CB12,$01
  $CB13,$01
  $CB14,$01
  $CB15,$02 Attribute=#COLOUR(#PC+$01)
  $CB17,$01
  $CB18,$01
  $CB19 Terminator.

b $CB1A Graphic ID
@ $CB1A label=graphic_97
  $CB1A,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CB1D,$02 Attribute=#COLOUR(#PC+$01)
  $CB1F,$01
  $CB20,$01
  $CB21,$01
  $CB22,$01
  $CB23,$01
  $CB24,$01
  $CB25,$01
  $CB26,$01
  $CB27,$01
  $CB28,$01
  $CB29,$01
  $CB2A,$02 Attribute=#COLOUR(#PC+$01)
  $CB2C,$01
  $CB2D,$01
  $CB2E Terminator.

b $CB2F Graphic ID
@ $CB2F label=graphic_98
  $CB2F,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CB32,$02 Attribute=#COLOUR(#PC+$01)
  $CB34,$01
  $CB35,$01
  $CB36,$01
  $CB37,$01
  $CB38,$01
  $CB39,$01
  $CB3A,$01
  $CB3B,$01
  $CB3C,$01
  $CB3D,$01
  $CB3E,$01
  $CB3F,$02 Attribute=#COLOUR(#PC+$01)
  $CB41,$01
  $CB42,$02 Attribute=#COLOUR(#PC+$01)
  $CB44,$01
  $CB45,$01
  $CB46,$01
  $CB47,$01
  $CB48,$01
  $CB49,$01
  $CB4A,$01
  $CB4B,$01
  $CB4C,$01
  $CB4D,$01
  $CB4E,$01
  $CB4F,$01
  $CB50,$01
  $CB51,$01
  $CB52,$01
  $CB53,$01
  $CB54 Terminator.

b $CB55 Graphic ID
@ $CB55 label=graphic_99
  $CB55,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CB58,$02 Attribute=#COLOUR(#PC+$01)
  $CB5A,$01
  $CB5B,$01
  $CB5C,$01
  $CB5D,$01
  $CB5E,$01
  $CB5F,$01
  $CB60,$01
  $CB61,$01
  $CB62,$01
  $CB63,$01
  $CB64,$01
  $CB65,$01
  $CB66,$02 Attribute=#COLOUR(#PC+$01)
  $CB68,$01
  $CB69,$01
  $CB6A Terminator.

b $CB6B Graphic ID
@ $CB6B label=graphic_100
  $CB6B,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CB6E,$02 Attribute=#COLOUR(#PC+$01)
  $CB70,$01
  $CB71,$02 Attribute=#COLOUR(#PC+$01)
  $CB73,$01
  $CB74,$01
  $CB75,$01
  $CB76,$02 Attribute=#COLOUR(#PC+$01)
  $CB78,$01
  $CB79,$01
  $CB7A,$01
  $CB7B,$01
  $CB7C,$02 Attribute=#COLOUR(#PC+$01)
  $CB7E,$01
  $CB7F,$01
  $CB80,$01
  $CB81,$02 Attribute=#COLOUR(#PC+$01)
  $CB83,$01
  $CB84 Terminator.

b $CB85 Graphic ID
@ $CB85 label=graphic_101
  $CB85,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CB88,$02 Attribute=#COLOUR(#PC+$01)
  $CB8A,$01
  $CB8B,$01
  $CB8C,$01
  $CB8D,$01
  $CB8E,$01
  $CB8F,$01
  $CB90,$01
  $CB91,$01
  $CB92,$01
  $CB93,$01
  $CB94,$01
  $CB95,$01
  $CB96,$01
  $CB97,$01
  $CB98 Terminator.

b $CBA0 Graphic ID
@ $CBA0 label=graphic_102
  $CBA0,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CBA3,$02 Attribute=#COLOUR(#PC+$01)
  $CBA5,$01
  $CBA6,$01
  $CBA7,$01
  $CBA8,$01
  $CBA9,$01
  $CBAA,$01
  $CBAB,$01
  $CBAC,$01
  $CBAD,$01
  $CBAE,$01
  $CBAF,$01
  $CBB0,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CBB3,$02 Attribute=#COLOUR(#PC+$01)
  $CBB5,$01
  $CBB6,$01
  $CBB7,$01
  $CBB8,$01
  $CBB9,$01
  $CBBA,$01
  $CBBB,$01
  $CBBC,$01
  $CBBD,$01
  $CBBE,$01
  $CBBF,$01
  $CBC0,$01
  $CBC1,$01
  $CBC2,$01
  $CBC3,$01
  $CBC4,$01
  $CBC5,$01
  $CBC6,$01
  $CBC7,$01
  $CBC8,$01
  $CBC9,$01
  $CBCA,$01
  $CBCB,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CBCE,$02 Attribute=#COLOUR(#PC+$01)
  $CBD0,$01
  $CBD1,$01
  $CBD2,$01
  $CBD3,$01
  $CBD4,$01
  $CBD5,$01
  $CBD6,$01
  $CBD7,$01
  $CBD8,$01
  $CBD9,$01
  $CBDA,$01
  $CBDB,$01
  $CBDC,$01
  $CBDD,$01
  $CBDE,$01
  $CBDF Terminator.

b $CBE0 Graphic ID
@ $CBE0 label=graphic_103
  $CBE0,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CBE3,$02 Attribute=#COLOUR(#PC+$01)
  $CBE5,$01
  $CBE6,$01
  $CBE7,$01
  $CBE8,$01
  $CBE9,$01
  $CBEA,$01
  $CBEB,$01
  $CBEC,$01
  $CBED,$01
  $CBEE,$01
  $CBEF Terminator.

b $CBF0 Graphic ID
@ $CBF0 label=graphic_104
  $CBF0,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CBF3,$02 Attribute=#COLOUR(#PC+$01)
  $CBF5,$01
  $CBF6,$01
  $CBF7,$01
  $CBF8,$01
  $CBF9,$01
  $CBFA,$01
  $CBFB,$01
  $CBFC,$01
  $CBFD,$01
  $CBFE,$01
  $CBFF,$01
  $CC00,$01
  $CC01,$01
  $CC02 Terminator.

b $CC03 Graphic ID
@ $CC03 label=graphic_105
  $CC03,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CC06,$02 Attribute=#COLOUR(#PC+$01)
  $CC08,$01
  $CC09,$01
  $CC0A,$01
  $CC0B,$01
  $CC0C,$01
  $CC0D,$01
  $CC0E,$01
  $CC0F,$01
  $CC10,$01
  $CC11 Terminator.

b $CC25 Graphic ID
@ $CC25 label=graphic_106
  $CC25,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CC28,$02 Attribute=#COLOUR(#PC+$01)
  $CC2A,$01
  $CC2B,$01
  $CC2C,$01
  $CC2D,$01
  $CC2E,$01
  $CC2F,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CC32,$01
  $CC33,$01
  $CC34,$01
  $CC35,$01
  $CC36,$01
  $CC37,$01
  $CC38 Terminator.

b $CC39 Graphic ID
@ $CC39 label=graphic_107
  $CC39,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CC3C,$02 Attribute=#COLOUR(#PC+$01)
  $CC3E,$01
  $CC3F,$01
  $CC40,$01
  $CC41,$01
  $CC42,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CC45,$01
  $CC46,$01
  $CC47,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CC4A,$01
  $CC4B,$01
  $CC4C,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CC4F,$01
  $CC50,$01
  $CC51,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CC54,$01
  $CC55,$01
  $CC56,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CC59,$01
  $CC5A,$01
  $CC5B,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CC5E,$01
  $CC5F,$01
  $CC60,$02 Attribute=#COLOUR(#PC+$01)
  $CC62,$01
  $CC63,$01
  $CC64,$01
  $CC65,$01
  $CC66,$01
  $CC67,$02 Attribute=#COLOUR(#PC+$01)
  $CC69,$01
  $CC6A,$01
  $CC6B,$01
  $CC6C,$02 Attribute=#COLOUR(#PC+$01)
  $CC6E,$01
  $CC6F,$01
  $CC70,$01
  $CC71,$01
  $CC72,$01
  $CC73,$01
  $CC74,$01
  $CC75,$01
  $CC76,$01
  $CC77,$01
  $CC78,$01
  $CC79,$01
  $CC7A,$01
  $CC7B,$01
  $CC7C,$02 Attribute=#COLOUR(#PC+$01)
  $CC7E,$01
  $CC7F,$01
  $CC80,$01
  $CC81,$01
  $CC82,$01
  $CC83,$01
  $CC84,$01
  $CC85,$01
  $CC86,$01
  $CC87 Terminator.

b $CC5D Graphic ID
@ $CC5D label=graphic_108
  $CC5D,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CC60,$02 Attribute=#COLOUR(#PC+$01)
  $CC62,$01
  $CC63,$01
  $CC64,$01
  $CC65,$01
  $CC66,$01
  $CC67,$02 Attribute=#COLOUR(#PC+$01)
  $CC69,$01
  $CC6A,$01
  $CC6B,$01
  $CC6C,$02 Attribute=#COLOUR(#PC+$01)
  $CC6E,$01
  $CC6F,$01
  $CC70,$01
  $CC71,$01
  $CC72,$01
  $CC73,$01
  $CC74,$01
  $CC75,$01
  $CC76,$01
  $CC77,$01
  $CC78,$01
  $CC79,$01
  $CC7A,$01
  $CC7B,$01
  $CC7C,$02 Attribute=#COLOUR(#PC+$01)
  $CC7E,$01
  $CC7F,$01
  $CC80,$01
  $CC81,$01
  $CC82,$01
  $CC83,$01
  $CC84,$01
  $CC85,$01
  $CC86,$01
  $CC87 Terminator.

b $CC8D Graphic ID
@ $CC8D label=graphic_109
  $CC8D,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CC90,$02 Attribute=#COLOUR(#PC+$01)
  $CC92,$01
  $CC93,$01
  $CC94,$01
  $CC95,$01
  $CC96 Terminator.

b $CC97 Graphic ID
@ $CC97 label=graphic_110
  $CC97,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CC9A,$02 Attribute=#COLOUR(#PC+$01)
  $CC9C,$01
  $CC9D,$01
  $CC9E,$01
  $CC9F,$01
  $CCA0,$01
  $CCA1,$01
  $CCA2,$01
  $CCA3,$01
  $CCA4,$01
  $CCA5,$01
  $CCA6,$01
  $CCA7,$01
  $CCA8,$01
  $CCA9 Terminator.

b $CCAA Graphic ID
@ $CCAA label=graphic_111
  $CCAA,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CCAD,$02 Attribute=#COLOUR(#PC+$01)
  $CCAF,$01
  $CCB0,$01
  $CCB1 Terminator.

b $CCB2 Graphic ID
@ $CCB2 label=graphic_112
  $CCB2,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CCB5,$02 Attribute=#COLOUR(#PC+$01)
  $CCB7,$01
  $CCB8,$01
  $CCB9,$01
  $CCBA,$01
  $CCBB,$01
  $CCBC,$01
  $CCBD,$01
  $CCBE,$01
  $CCBF,$01
  $CCC0,$01
  $CCC1,$01
  $CCC2,$01
  $CCC3,$01
  $CCC4,$01
  $CCC5,$01
  $CCC6,$01
  $CCC7,$01
  $CCC8,$01
  $CCC9,$01
  $CCCA,$01
  $CCCB,$01
  $CCCC,$01
  $CCCD,$01
  $CCCE,$01
  $CCCF,$01
  $CCD0,$01
  $CCD1,$01
  $CCD2,$01
  $CCD3,$01
  $CCD4,$01
  $CCD5,$01
  $CCD6,$01
  $CCD7,$01
  $CCD8,$01
  $CCD9 Terminator.

b $CCDA Graphic ID
@ $CCDA label=graphic_113
  $CCDA,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CCDD,$02 Attribute=#COLOUR(#PC+$01)
  $CCDF,$01
  $CCE0,$01
  $CCE1,$01
  $CCE2,$01
  $CCE3,$01
  $CCE4,$01
  $CCE5,$01
  $CCE6,$01
  $CCE7,$01
  $CCE8,$01
  $CCE9,$01
  $CCEA,$01
  $CCEB,$01
  $CCEC,$01
  $CCED,$01
  $CCEE,$01
  $CCEF,$01
  $CCF0,$01
  $CCF1 Terminator.

b $CCF2 Graphic ID
@ $CCF2 label=graphic_114
  $CCF2,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CCF5,$02 Attribute=#COLOUR(#PC+$01)
  $CCF7,$01
  $CCF8,$01
  $CCF9,$01
  $CCFA,$01
  $CCFB,$01
  $CCFC,$01
  $CCFD,$01
  $CCFE,$01
  $CCFF,$01
  $CD00,$01
  $CD01,$01
  $CD02,$01
  $CD03,$01
  $CD04,$01
  $CD05,$01
  $CD06,$01
  $CD07,$01
  $CD08,$01
  $CD09,$01
  $CD0A,$01
  $CD0B,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CD0E,$01
  $CD0F,$02 Attribute=#COLOUR(#PC+$01)
  $CD11,$01
  $CD12,$01
  $CD13 Terminator.

b $CD14 Graphic ID
@ $CD14 label=graphic_115
  $CD14,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CD17,$02 Attribute=#COLOUR(#PC+$01)
  $CD19,$01
  $CD1A,$01
  $CD1B,$01
  $CD1C,$01
  $CD1D,$01
  $CD1E,$01
  $CD1F,$01
  $CD20,$01
  $CD21,$01
  $CD22,$01
  $CD23,$01
  $CD24,$01
  $CD25,$01
  $CD26,$01
  $CD27 Terminator.

b $CD2F Graphic ID
@ $CD2F label=graphic_116
  $CD2F,$03 Screen co-ordinates: #PEEK(#PC+$01),#PEEK(#PC+$02).
  $CD32,$02 Attribute=#COLOUR(#PC+$01)
  $CD34,$01
  $CD35,$01
  $CD36,$01
  $CD37,$01
  $CD38,$01
  $CD39,$01
  $CD3A,$01
  $CD3B,$01
  $CD3C,$01
  $CD3D,$01
  $CD3E,$01
  $CD3F,$01
  $CD40 Terminator.

b $CD43 Graphic ID
@ $CD43 label=graphic_117
M $CD43,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CD43,$01
W $CD44,$02
  $CD46,$02 Attribute: #COLOUR(#PC+$01)
  $CD48,$01
  $CD49,$01
  $CD4A,$01
  $CD4B,$01
  $CD4C,$01
  $CD4D,$01
  $CD4E,$01
  $CD4F,$01
  $CD50,$01
  $CD51,$01
  $CD52,$01
  $CD53,$01
  $CD54,$01
  $CD55,$01
  $CD56,$01
  $CD57,$01
  $CD58,$01
  $CD59,$01
  $CD5A,$01
  $CD5B,$01
  $CD5C,$01
  $CD5D,$02 Attribute=#COLOUR(#PC+$01)
  $CD5F,$01
  $CD60,$01
  $CD61,$01
  $CD62,$01
  $CD63,$01
  $CD64,$01
  $CD65,$01
  $CD66,$01
  $CD67,$01
  $CD68,$01
  $CD69,$01
  $CD6A,$01
  $CD6B,$01
  $CD6C,$01
  $CD6D,$01
  $CD6E,$01
  $CD6F,$01
  $CD70,$01
  $CD71,$01
  $CD72,$01
  $CD73,$01
  $CD74,$01
  $CD75,$01
  $CD76,$01
  $CD77,$02 Attribute: #COLOUR(#PC+$01)
M $CD79,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CD79,$01
W $CD7A,$02
  $CD7C,$01
  $CD7D,$01
  $CD7E,$01
  $CD7F,$01
  $CD80,$01
  $CD81,$02 Attribute=#COLOUR(#PC+$01)
  $CD83,$01
  $CD84,$01
  $CD85,$01
  $CD86,$01
  $CD87,$01
  $CD88,$01
  $CD89,$01
M $CD8A,$03 Sprite Data: #N(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CD8A,$01
W $CD8B,$02
  $CD8D,$01
  $CD8E,$01
  $CD8F,$01
  $CD90,$01
  $CD91,$01
M $CD92,$03 Sprite Data: #N(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CD92,$01
W $CD93,$02
  $CD95,$01
  $CD96,$01
  $CD97,$01
  $CD98,$01
  $CD99,$02 Attribute=#COLOUR(#PC+$01)
  $CD9B,$01
  $CD9C,$01
M $CD9D,$03 Sprite Data: #R(#PEEK(#PC+$01)+#PEEK(#PC+$02)*$100).
  $CD9D,$01
W $CD9E,$02
  $CDA0,$01
  $CDA1,$01
  $CDA2,$01
  $CDA3,$01
  $CDA4,$01
  $CDA5,$01
  $CDA6,$01
  $CDA7,$01
  $CDA8,$01
  $CDA9,$01
  $CDAA,$01
  $CDAB,$01
  $CDAC,$01
  $CDAD,$01
  $CDAE,$01
  $CDAF,$01
  $CDB0,$01
  $CDB1,$01
  $CDB2,$01
  $CDB3,$01
  $CDB4 Terminator.

w $CDB5 Room Data
@ $CDB5 label=Data_Rooms
  $CDB5,$02 Room #R(#PEEK(#PC)+#PEEK(#PC+$01)*$100)(#N((#PC-$CDB5)/$02)).
L $CDB5,$02,$21

b $CDF7
W $CDFE,$02
  $CE00,$01 Terminator.

b $CE01
  $CE25
  $CE37
  $CE69
  $CE7B
  $CE89
  $CEAD
  $CEC9
  $CEE1
  $CEF9
  $CF09
  $CF29
  $CF49
  $CF71
  $CF97
  $CFB5
  $CFD9
  $CFEF
  $D009
  $D039
  $D057
  $D08B
  $D0AF
  $D0C3
  $D0E7
  $D109
  $D125
  $D135
  $D153
  $D16D
  $D17D
  $D191

  $D191,$01
  $D192,$01
  $D193

  $D334,$08 #UDG(#PC,attr=$45)
  $D33C,$08 #UDG(#PC,attr=$45)
  $D344,$08 #UDG(#PC,attr=$45)
  $D34C,$08 #UDG(#PC,attr=$45)
  $D354,$08 #UDG(#PC,attr=$45)

  $D9E4,$08 #UDG(#PC,attr=$43)

b $DFDC Sprites
@ $DFDC label=Sprites
  $DFDC,$08 #UDG(#PC)
L $DFDC,$08,$64

c $E2FC

c $E329

c $E3FD
  $E3FD,$03 Call #R$B931.
  $E400,$03 #REGhl=#R$7E3F.
  $E403,$03 #REGde=#N($0010,$04,$04).
  $E406,$03 Call #R$B84B.
  $E409,$02 #REGh=#N$7C.
  $E40B,$03 #REGl=#REGiy-#N$23.
  $E40E,$02 #REGc=#N$45.
  $E410,$03 #REGde=#N($001B,$04,$04).
  $E413,$03 Call #R$B84B.
  $E416,$03 Call #R$E36D.
  $E419,$03 Call #R$E420.
  $E41C,$01 Return.

c $E41D

t $E484 Messaging: The Plunger
  $E484,$0B "#STR$E484,$08($b==$FF)".
B $E48F,$01 Terminator.

t $E490 Messaging: The Letter A
  $E490,$0D,c$0A,h$02,c$01 "#STR$E490,$08($b==$FF)".
B $E49D,$01 Terminator.

t $E49E Messaging: Book Two
  $E49E,$08 "#STR$E49E,$08($b==$FF)".
B $E4A6,$01 Terminator.

t $E4A7 Messaging: The Sand
  $E4A7,$08 "#STR$E4A7,$08($b==$FF)".
B $E4AF,$01 Terminator.

t $E4B0 Messaging: The Battery
  $E4B0,$0D,c$0B,h$02 "#STR$E4B0,$08($b==$FF)".
B $E4BD,$01 Terminator.

t $E4BE Messaging: Charged
  $E4BE,$09,h$02,c$07 "#STR$E4C0,$08($b==$FF)".
B $E4C7,$01 Terminator.

t $E4C8 Messaging: Flat
  $E4C8,$04 "#STR$E4C8,$08($b==$FF)".
B $E4CC,$01 Terminator.

t $E4CD Messaging: The Letter K
  $E4CD,$0D,c$0A,h$02,c$01 "#STR$E4CD,$08($b==$FF)".
B $E4DA,$01 Terminator.

t $E4DB Messaging: The Cement
  $E4DB,$0A "#STR$E4DB,$08($b==$FF)".
B $E4E5,$01 Terminator.

t $E4E6 Messaging: Book Three
  $E4E6,$0A "#STR$E4E6,$08($b==$FF)".
B $E4F0,$01 Terminator.

t $E4F1 Messaging: The Trowel
  $E4F1,$0A "#STR$E4F1,$08($b==$FF)".
B $E4FB,$01 Terminator.

t $E4FC Messaging: The Matches
  $E4FC,$0B "#STR$E4FC,$08($b==$FF)".
B $E507,$01 Terminator.

t $E508 Messaging: The Cracked Insulator
  $E508,$16,c$0B,h$02,c$09 "#STR$E508,$08($b==$FF)".
B $E51E,$01 Terminator.

t $E51F Messaging: Book One
  $E51F,$08 "#STR$E51F,$08($b==$FF)".
B $E527,$01 Terminator.

t $E528 Messaging: The Monkey Nuts
  $E528,$10,c$0A,h$02,c$04 "#STR$E528,$08($b==$FF)".
B $E538,$01 Terminator.

t $E539 Messaging: The Money
  $E539,$09 "#STR$E539,$08($b==$FF)".
B $E542,$01 Terminator.

t $E543 Messaging: Superglue
  $E543,$09 "#STR$E543,$08($b==$FF)".
B $E54C,$01 Terminator.

t $E54D Messaging: The Chewing Gum
  $E54D,$10,c$0B,h$02,c$03 "#STR$E54D,$08($b==$FF)".
B $E55D,$01 Terminator.

t $E55E Messaging: The Bucket
  $E55E,$0C,c$0A,h$02 "#STR$E55E,$08($b==$FF)".
B $E56A,$01 Terminator.

t $E56B Messaging: Full
  $E56B,$06,h$02,c$04 "#STR$E56D,$08($b==$FF)".
B $E571,$01 Terminator.

t $E572 Messaging: Empty
  $E572,$05 "#STR$E572,$08($b==$FF)".
B $E577,$01 Terminator.

t $E578 Messaging: The Jump Leads
  $E578,$0F,c$08,h$02,c$05 "#STR$E578,$08($b==$FF)".
B $E587,$01 Terminator.

t $E588 Messaging: The Bunsen Burner
  $E588,$12,c$0A,h$02,c$06 "#STR$E588,$08($b==$FF)".
B $E59A,$01 Terminator.

t $E59B Messaging: The Letter B
  $E59B,$0D,c$0A,h$02,c$01 "#STR$E59B,$08($b==$FF)".
B $E5A8,$01 Terminator.

t $E5A9 Messaging: Gas Mask
  $E5A9,$08 "#STR$E5A9,$08($b==$FF)".
B $E5B1,$01 Terminator.

t $E5B2 Messaging: The Parcel
  $E5B2,$0C,c$0A,h$02 "#STR$E5B2,$08($b==$FF)".
B $E5BE,$01 Terminator.

t $E5BF Messaging: Stamped
  $E5BF,$09,h$02,c$07 "#STR$E5C1,$08($b==$FF)".
B $E5C8,$01 Terminator.

t $E5C9 Messaging: Unstamped
  $E5C9,$09 "#STR$E5C9,$08($b==$FF)".
B $E5D2,$01 Terminator.

t $E5D3 Messaging: The Fuse
  $E5D3,$0A,c$08,h$02 "#STR$E5D3,$08($b==$FF)".
B $E5DD,$01 Terminator.

t $E5DE Messaging: Rewired
  $E5DE,$09,h$02,c$07 "#STR$E5E0,$08($b==$FF)".
B $E5E7,$01 Terminator.

t $E5E8 Messaging: Blown
  $E5E8,$05 "#STR$E5E8,$08($b==$FF)".
B $E5ED,$01 Terminator.

t $E5EE Messaging: The Meat
  $E5EE,$08 "#STR$E5EE,$08($b==$FF)".
B $E5F6,$01 Terminator.

t $E5F7 Messaging: The Monkey Wrench
  $E5F7,$12,c$0A,h$02,c$06 "#STR$E5F7,$08($b==$FF)".
B $E609,$01 Terminator.

t $E60A Messaging: Screwdriver
  $E60A,$0B "#STR$E60A,$08($b==$FF)".
B $E615,$01 Terminator.

t $E616 Messaging: The Letter E
  $E616,$0D,c$0A,h$02,c$01 "#STR$E616,$08($b==$FF)".
B $E623,$01 Terminator.

t $E624 Messaging: The Hook
  $E624,$0A,c$08,h$02 "#STR$E624,$08($b==$FF)".
B $E62E,$01 Terminator.

t $E62F Messaging: Working
  $E62F,$09,h$02,c$07 "#STR$E631,$08($b==$FF)".
B $E638,$01 Terminator.

t $E639 Messaging: Broken
  $E639,$06 "#STR$E639,$08($b==$FF)".
B $E63F,$01 Terminator.

t $E640 Messaging: The Patch
  $E640,$09 "#STR$E640,$08($b==$FF)".
B $E649,$01 Terminator.

t $E64A Messaging: The Pipe
  $E64A,$0A,c$08,h$02 "#STR$E64A,$08($b==$FF)".
B $E654,$01 Terminator.

t $E655 Messaging: Patched
  $E655,$09,h$02,c$07 "#STR$E657,$08($b==$FF)".
B $E65E,$01 Terminator.

t $E65F Messaging: Leaking
  $E65F,$07 "#STR$E65F,$08($b==$FF)".
B $E666,$01 Terminator.

t $E667 Messaging: The Letter R
  $E667,$0D,c$0A,h$02,c$01 "#STR$E667,$08($b==$FF)".
B $E674,$01 Terminator.

t $E675 Messaging: The Oil Can
  $E675,$0D,c$07,h$02,c$04 "#STR$E675,$08($b==$FF)".
B $E682,$01 Terminator.

t $E683 Messaging: Full
  $E683,$06,h$02,c$04 "#STR$E685,$08($b==$FF)".
B $E689,$01 Terminator.

t $E68A Messaging: Empty
  $E68A,$05 "#STR$E68A,$08($b==$FF)".
B $E68F,$01 Terminator.

t $E690 Messaging: The Fuse Wire
  $E690,$0E,c$08,h$02,c$04 "#STR$E690,$08($b==$FF)".
B $E69E,$01 Terminator.

t $E69F Messaging: The Good Insulator
  $E69F,$13,c$08,h$02,c$09 "#STR$E69F,$08($b==$FF)".
B $E6B2,$01 Terminator.

t $E6B3 Messaging: The Bottle
  $E6B3,$0C,c$0A,h$02 "#STR$E6B3,$08($b==$FF)".
B $E6BF,$01 Terminator.

t $E6C0 Messaging: Full
  $E6C0,$06,h$02,c$04 "#STR$E6C2,$08($b==$FF)".
B $E6C6,$01 Terminator.

t $E6C7 Messaging: Empty
  $E6C7,$05 "#STR$E6C7,$08($b==$FF)".
B $E6CC,$01 Terminator.

t $E6CD Messaging: The Red Herring
  $E6CD,$10,c$07,h$02,c$07 "#STR$E6CD,$08($b==$FF)".
B $E6DD,$01 Terminator.

t $E6DE Messaging: The Test Tube
  $E6DE,$0E,c$08,h$02,c$04 "#STR$E6DE,$08($b==$FF)".
B $E6EC,$01 Terminator.

t $E6ED Messaging: The Can Of Beans
  $E6ED,$11,c$0A,h$02,c$05 "#STR$E6ED,$08($b==$FF)".
B $E6FE,$01 Terminator.

t $E6FF Messaging: The Rubber Stamp
  $E6FF,$11,c$0A,h$02,c$05 "#STR$E6FF,$08($b==$FF)".
B $E710,$01 Terminator.

t $E711 Messaging: The Pliers
  $E711,$0A "#STR$E711,$08($b==$FF)".
B $E71B,$01 Terminator.

t $E71C Messaging: The Whistle
  $E71C,$0B "#STR$E71C,$08($b==$FF)".
B $E727,$01 Terminator.

w $E728 Item Table
@ $E728 label=ItemTable
  $E728,$02 #D(#PEEK(#PC)+#PEEK(#PC+$01)*$100).
L $E728,$02,$29

c $E77A
  $E77A,$03 Stash #REGhl, #REGbc and #REGde on the stack.
  $E77D,$04 #REGix=#R$81F8.
  $E781,$02 #REGc=#N$20.
  $E783,$03 #REGl=#REGix+#N$00.
  $E786,$03 #REGh=#REGix+#N$01.
  $E789,$02 #REGb=#N$0F.
  $E78B,$02 Write #N$00 to *#REGhl.
  $E78D,$01 Increment #REGhl by one.
  $E78E,$02 Decrease counter by one and loop back to #R$E78B until counter is zero.
  $E790,$04 Increment #REGix by two.
  $E794,$01 Decrease #REGc by one.
  $E795,$02 Jump to #R$E783 until #REGc is zero.
  $E797,$03 Restore #REGde, #REGbc and #REGhl from the stack.
  $E79A,$01 Return.

c $E79B
  $E79B,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$F7 | 1 | 2 | 3 | 4 | 5 }
. TABLE#
  $E79F,$02,b$01 Set bits 5-7.
  $E7A1,$02,b$01

  $E7BF,$01 Return.

c $EABF

c $EB55

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
N $EC34
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
  $ECF5
  $ECF6
  $ECFE
  $ECFF
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
W $F812

c $F814

B $F9F0,$05,$01

b $FAEF
  $FB00

b $FC00

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
