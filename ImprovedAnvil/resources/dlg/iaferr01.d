BEGIN ~IAFERR01~

IF ~NumTimesTalkedTo(0)~ 0
  SAY @5800
  = @5801
  IF ~~ THEN EXTERN ~IAGDRU03~ 4
END

IF ~~ 2
  SAY @5803
  ++ @5804 + 3
END

IF ~~ 3
  SAY @5805
  IF ~~ THEN EXTERN ~IAGDRU03~ 5
END

IF ~~ 4
  SAY @5807
  ++ @5808 + 5
END

IF ~~ 5
  SAY @5809
  ++ @5810 + 6
END

IF ~~ 6
  SAY @5811
  IF ~~ THEN DO ~SetGlobal("IAPlot","S!0001",2) ReallyForceSpellRES("S!dru05",Myself)~ EXIT
END

//

IF ~~ 7
  SAY @5816
  = @5817
  IF ~~ THEN EXTERN ~IAGDRU03~ 7
END

IF ~~ 9
  SAY @5819
  ++ @5820 + 10
END

IF ~~ 10
  SAY @5821
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutSceneEx("S!druc12",TRUE)~ EXIT
END