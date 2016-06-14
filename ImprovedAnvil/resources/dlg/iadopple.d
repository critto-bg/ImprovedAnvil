BEGIN ~IADOPPLE~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2250
  IF ~~ THEN REPLY @2251 GOTO 1
  IF ~~ THEN REPLY @2252 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @2253
  IF ~~ THEN DO ~SetGlobal("Iarangerjob","GLOBAL",7)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @2254
  IF ~~ THEN DO ~SetGlobal("Iarangerjob","GLOBAL",7)~ EXIT
END