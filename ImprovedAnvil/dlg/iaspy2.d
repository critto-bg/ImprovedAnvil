BEGIN ~IASPY2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @3300
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3301
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3302
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @3303
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @3304
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @3305
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @3306
  IF ~~ THEN DO ~SetGlobal("Iajdstalk","GLOBAL",1) SetGlobalTimer("Iajdstime","GLOBAL",SEVEN_DAYS) DestroySelf()~ EXIT
END