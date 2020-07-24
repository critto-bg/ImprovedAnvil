BEGIN ~IAGDRU02~

// arrival at the docks of the Island
IF ~Global("IADruidIsland","GLOBAL",0)~ THEN BEGIN 0
  SAY @5625
  IF ~~ THEN REPLY @5626 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @5627
  IF ~~ THEN REPLY @5628 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @5629
  IF ~~ THEN EXTERN ~IADRAD~ 5
END

IF ~~ THEN BEGIN 3
  SAY @5632
  IF ~~ THEN REPLY @5633 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @5634
  IF ~~ THEN EXTERN ~IADRAD~ 6
END

IF ~~ THEN BEGIN 5
  SAY @5637
  IF ~~ THEN
    DO ~SetGlobal("IADradeel","GLOBAL",4)
        SetGlobal("IADruidIsland","GLOBAL",1)
        ClearAllActions()
        StartCutSceneMode()
        StartCutScene("S!druc05")~
  EXIT
END

// near Dradeel's house
IF ~Global("IADruidIsland","GLOBAL",1)~ THEN BEGIN 6
  SAY @5641
  IF ~~ THEN REPLY @5642 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @5643
  IF ~~ THEN
    DO ~SetGlobal("IADradeel","GLOBAL",5)
        SetGlobal("IADruidIsland","GLOBAL",2)
        ClearAllActions()
        StartCutSceneMode()
        StartCutScene("S!druc06")~
  EXIT
END

// inside Dradeel's house
IF ~Global("IADruidIsland","GLOBAL",2)~ THEN BEGIN 8
  SAY @5645
  IF ~~ THEN REPLY @5646 EXTERN ~IADRAD~ 7
END

IF ~~ THEN BEGIN 9
  SAY @5648
  IF ~~ THEN REPLY @5649 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @5650
  IF ~~ THEN EXTERN ~IADRAD~ 8
END

IF ~~ THEN BEGIN 11
  SAY @5652
  IF ~~ THEN DO ~SetGlobal("IADruidIsland","GLOBAL",3)~
  EXIT
END

// inside the house, while the search is in progress
IF ~Global("IADruidIsland","GLOBAL",3) OR(2) !PartyHasItem("S!misc71") !PartyHasItem("S!misc43")~ THEN BEGIN 12
  SAY @5653
  IF ~~ THEN EXIT
END

// inside the house, found the hidden room
IF ~~ THEN BEGIN 13
  SAY @5661
  IF ~~ THEN REPLY @5662 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @5663
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @5664
  IF ~~ THEN DO ~SetGlobal("IADradeel","GLOBAL",6)~ EXIT
END

// inside the house, found the items
IF ~Global("IADruidIsland","GLOBAL",3) PartyHasItem("S!misc71") PartyHasItem("S!misc43")~ THEN BEGIN 16
  SAY @5670
  IF ~~ THEN REPLY @5671 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @5672
  IF ~~ THEN DO ~TakePartyItem("S!misc71") TakePartyItem("S!misc43")~ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @5673
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @5674
  IF ~~ THEN REPLY @5675 GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @5676
  IF ~~ THEN REPLY @5677 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @5678
  IF ~~ THEN DO ~SetGlobal("IADruidIsland","GLOBAL",4)
                 ClearAllActions()
                 StartCutSceneMode()
                 StartCutScene("S!druc08")~
  EXIT
END

// outside the house, after the ambush
IF ~Global("IADruidIsland","GLOBAL",5)~ THEN BEGIN 22
  SAY @5692
  IF ~~ THEN REPLY @5693 GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @5694
  IF ~~ THEN REPLY @5695 GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @5696
  IF ~~ THEN REPLY @5697 GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @5698
  IF ~~ THEN REPLY @5699 GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @5700
  IF ~~ THEN DO ~SetGlobal("IADruidIsland","GLOBAL",6)
                 ClearAllActions()
                 StartCutSceneMode()
                 StartCutScene("S!druc09")~
  EXIT
END

// at the docks, preparing to leave the island
IF ~~ THEN BEGIN 27
  SAY @5711
  IF ~~ THEN REPLY @5712 GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @5713
  IF ~~ THEN REPLY @5714 GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @5715
  IF ~~ THEN REPLY @5716 GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @5717
  IF ~~ THEN REPLY @5718 EXTERN ~PPSAEM3~ 86
END

IF ~~ THEN BEGIN 31
  SAY @5720
  IF ~~ THEN REPLY @5721 GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @5722
  IF ~~ THEN DO ~SetGlobal("IADruidIsland","GLOBAL",7)
                 ClearAllActions()
                 StartCutSceneMode()
                 StartCutScene("S!druc10")~
  EXIT
END
