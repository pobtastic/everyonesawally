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
B $7C1B,$01
B $7C1C,$01 #COLOUR(#PEEK(#PC)).
  $7C1D,$0D "TODAY'S WAGES".
B $7C2A,$02
B $7C2C,$01
B $7C2D,$01 #COLOUR(#PEEK(#PC)).
  $7C2E,$0B "WALLY'S PAY".
B $7C39,$02
  $7C3B,$0B "WILMA'S PAY".
B $7C46,$02
  $7C48,$09 "TOM'S PAY".
B $7C51,$02
  $7C53,$0A "DICK'S PAY".
B $7C5D,$02
  $7C5F,$0B "HARRY'S PAY".
B $7C6A,$01
B $7C6B,$01 #COLOUR(#PEEK(#PC)).
B $7C6C,$02
  $7C6E,$07 "OVERALL".
B $7C75,$01 Terminator.

t $7C76 Messaging: Congratulations
@ $7C76 label=Messaging_Congratulations
B $7C76,$01
B $7C77,$01 #COLOUR(#PEEK(#PC)).
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
B $7D48,$01
B $7D49,$01 #COLOUR(#PEEK(#PC)).
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
B $7DC6,$01
B $7DC7,$01 #COLOUR(#PEEK(#PC)).
  $7DC8,$05 "KEY:-".
B $7DCD,$01
B $7DCE,$01 #COLOUR(#PEEK(#PC)).
  $7DCF,$16 "   1.SINCLAIR JOYSTICK".
B $7DE5,$02
B $7DE7,$01
B $7DE8,$01 #COLOUR(#PEEK(#PC)).
  $7DE9,$05 "KEY:-".
B $7DEE,$01
B $7DEF,$01 #COLOUR(#PEEK(#PC)).
  $7DF0,$16 "   2.KEMPSTON JOYSTICK".
B $7E06,$02
B $7E08,$01
B $7E09,$01 #COLOUR(#PEEK(#PC)).
  $7E0A,$05 "KEY:-".
B $7E0F,$01
B $7E10,$01 #COLOUR(#PEEK(#PC)).
  $7E11,$0D "   3.KEYBOARD".
B $7E1E,$02
B $7E20,$01
B $7E21,$01 #COLOUR(#PEEK(#PC)).
  $7E22,$14 "PRESS KEY 4 TO START".
B $7E36,$01 Terminator.

t $7E37 Messaging: Key
@ $7E37 label=Messaging_Key
B $7E37,$01
B $7E38,$01 #COLOUR(#PEEK(#PC)).
  $7E39,$06 "#STR$7E39,$08($b==$FF)".

b $7E3F

t $7E42 Messaging: Character
@ $7E42 label=Messaging_Character
B $7E42,$01
B $7E43,$01 #COLOUR(#PEEK(#PC)).
  $7E44,$0A "CHARACTER:".
B $7E4E,$03
B $7E51,$01 #COLOUR(#PEEK(#PC)).
  $7E52,$0A "ENDURANCE:".
B $7E5C,$02
B $7E5E,$01
B $7E5F,$01 #COLOUR(#PEEK(#PC)).
  $7E60,$02 "  " (whitespace).
B $7E62
B $7E68
  $7E70,$01 Terminator.

t $7E71 Messaging: Tea Break
@ $7E71 label=Messaging_TeaBreak
B $7E71,$01
B $7E72,$02
B $7E74,$01 #COLOUR(#PEEK(#PC)).
  $7E75,$16 "HO HUM, TIME FOR A BUN".
B $7E8B,$02
  $7E8D,$11 "#STR$7E8D,$08($b==$FF)".
B $7E9E,$01 Terminator.

t $7E9F Messaging: Lunch Time
@ $7E9F label=Messaging_LunchTime
B $7E9F,$01
B $7EA0,$01 #COLOUR(#PEEK(#PC)).
B $7EA1,$02
  $7EA3,$1C "RUBBA DUB DUB, TIME FOR GRUB".
B $7EBF,$02
  $7EC1,$0A "#STR$7EC1,$08($b==$FF)".
B $7ECB,$01 Terminator.

t $7ECC Messaging: Afternoon Tea Break
@ $7ECC label=Messaging_AfternoonTeaBreak
B $7ECC,$01
B $7ECD,$01 #COLOUR(#PEEK(#PC)).
B $7ECE,$02
  $7ED0,$1C "FIDDLE DEE DEE, TIME FOR TEA".
B $7EEC,$02
  $7EEE,$13 "#STR$7EEE,$08($b==$FF)".
B $7F01,$01 Terminator.

b $7F02
  $7F0E,$01 Terminator.
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

c $A83D

c $AA30

c $AA7F
  $AA7F,$03 #REGbc=#N$FF0A.
  $AA82,$03 #REGde=#N$0114.
  $AA85,$03 #REGhl=#N$1401.
  $AA88,$03 Call #R$E3D3.
  $AA8B,$01 Return.

c $AA8C

c $AC06

w $B09D
  $B09D,$02

c $B09F

c $B0E6
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

c $B7BA

c $B7F9

c $B82B

c $B84B

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

c $B902
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
  $B940,$02 #REGb=#N$20.
  $B942,$02 Write #N$00 to #REGhl.
  $B944,$01 Increment #REGhl by one.
  $B945,$02
  $B947,$04 Increment #REGix by two.
  $B94B,$01 Decrease #REGc by one.
  $B94C,$02 Jump to #R$B93A until #REGc is zero.
  $B94E,$03 Jump to #R$B92D.

c $B952
  $B952,$05 Write #N$B8 to #R$AF88.
  $B957,$03 Call #R$B902.

  $B961,$03 #REGhl=#R$CDB5.

c $B9D6

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

b $BB3E

b $BB7C

b $BC67

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

b $CDB5

b $DFDC

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

c $E79B

c $EABF

c $EB55

b $EC5C
  $ECF6
  $ECFE

c $ED13

c $ED2A

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

c $F578

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
