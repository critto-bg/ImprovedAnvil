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
