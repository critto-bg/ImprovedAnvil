BEGIN ~IADRUDIV~

IF ~~ 0
  SAY @5897
  IF ~~ THEN EXTERN ~IADRACOF~ 4
END

IF ~~ 1
  SAY @5899
  IF ~~ THEN EXTERN ~IADRACOF~ 5
END

IF ~~ 2
  SAY @5901
  = @5902
  IF ~~ THEN EXTERN ~IADRACOF~ 6
END

IF ~~ 4
  SAY @5904
  = @5905
  IF ~~ THEN EXTERN ~IADRACOF~ 7
END

// draco has been killed, final talk with diviner

IF ~~ 6
  SAY @5913
  = @5914
  IF ~~ THEN REPLY @5915 GOTO 8
END

IF ~~ 8
  SAY @5916
  = @5917
  IF ~~ THEN REPLY @5918 GOTO 10
END

IF ~~ 10
  SAY @5919
  = @5920
  = @5921
  IF ~~ THEN REPLY @5922 EXTERN ~IAGDRU04~ 9
END

IF ~~ 13
  SAY @5924
  IF ~~ THEN REPLY @5925 GOTO 14
END

IF ~~ 14
  SAY @5926
  = @5927
  IF ~~ THEN EXTERN ~IAGDRU04~ 10
END

IF ~~ 16
  SAY @5932
  IF ~~ THEN DO ~TakePartyItem("S!misc73")~ GOTO 17
END

IF ~~ 17
  SAY @5933
  IF ~~ THEN DO ~SetGlobal("IADruidPlot","GLOBAL",14) ClearAllActions() StartCutSceneMode() StartCutScene("S!druc18")~ EXIT
END