BEGIN ~IAKNIGHT~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1900
  IF ~~ THEN REPLY @1901 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1902
  IF ~~ THEN REPLY @1903 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @1904
  IF ~~ THEN REPLY @1905 GOTO 3
  IF ~Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @1906 GOTO 4
  IF ~!Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @1906 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @1907
  IF ~~ THEN REPLY @1906 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @1908
  IF ~~ THEN REPLY @1910 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @1909
  IF ~~ THEN REPLY @1910 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @1911
  IF ~~ THEN DO ~SetGlobal("Iarangerjob","GLOBAL",4) SetGlobalTimer("Iaauriel","GLOBAL",TWO_DAYS) ActionOverride("S!roshan",DestroySelf()) ActionOverride("S!girl1",DestroySelf()) DestroySelf()~ EXIT
END