BEGIN ~IADRACOF~

// almost dead, calls upon the diviner

IF ~Global("IAPlot","S!0005",5) NumTimesTalkedTo(1)~ 0
  SAY @5885
  = @5886
  IF ~~ THEN EXTERN ~IAGDRU04~ 4
END

// final talk with the diviner

IF ~Global("IAPlot","S!0005",5) NumTimesTalkedTo(2)~ 2
  SAY @5895
  = @5896
  IF ~~ THEN EXTERN ~IADRUDIV~ 0
END

IF ~~ 4
  SAY @5898
  IF ~~ THEN EXTERN ~IADRUDIV~ 1
END

IF ~~ 5
  SAY @5900
  IF ~~ THEN EXTERN ~IADRUDIV~ 2
END

IF ~~ 6
  SAY @5903
  IF ~~ THEN EXTERN ~IADRUDIV~ 4
END

IF ~~ 7
  SAY @5906
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("S!druc17")~ EXIT
END

// first dialogue after the transformation

IF ~Global("IAPlot","S!0005",4) NumTimesTalkedTo(0)~ 8
  SAY @5879
  = @5880

  IF ~~ THEN DO ~Enemy()~ EXIT
END