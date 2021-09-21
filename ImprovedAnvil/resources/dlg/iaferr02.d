BEGIN ~IAFERR02~

IF ~NumTimesTalkedTo(0)~ 0
  SAY @5865
  = @5866
  IF ~~ THEN EXTERN ~IAGDRU04~ 0
END

IF ~~ THEN BEGIN 2
  SAY @5868
  = @5869
  IF ~~ THEN EXTERN ~IAGDRU04~ 1
END

IF ~~ 4
  SAY @5872
  = @5873
  ++ @5874 + 6
END

IF ~~ 6
  SAY @5875
  = @5876
  IF ~~ THEN EXTERN ~IAGDRU04~ 3
END

IF ~~ 8
  SAY @5878
  IF ~~ THEN DO ~SetGlobal("IAPlot","S!0005",3) ClearAllActions() StartCutSceneMode() StartCutScene("S!druc15")~ EXIT
END