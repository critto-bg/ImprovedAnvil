BEGIN ~IASWANFA~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @4800
  IF ~~ THEN REPLY @4801 GOTO 1
  IF ~~ THEN REPLY @4802 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @4803
  IF ~~ THEN REPLY @4804 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @4805
  IF ~~ THEN REPLY @4806 GOTO 3
  IF ~~ THEN REPLY @4807 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @4808
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @4809
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @4810
  IF ~~ THEN REPLY @4811 DO ~GiveItemCreate("S!misc53",Player1,1,1,1)~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @4812
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @4813
  IF ~~ THEN DO ~SetGlobal("Iammirrorjob","GLOBAL",2) DestroySelf()~EXIT
END