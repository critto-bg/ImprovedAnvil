BEGIN ~IAFSDRAG~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1600
  IF ~~ THEN REPLY @1601 GOTO 1
  IF ~~ THEN REPLY @1602 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1603
  IF ~!Dead("gorsal") Dead("firkra02")~ THEN REPLY @1604 GOTO 2
  IF ~Dead("gorsal") !Dead("firkra02")~ THEN REPLY @1605 GOTO 3
  IF ~Dead("gorsal") Dead("firkra02")~ THEN REPLY @1606 GOTO 4
  IF ~~ THEN REPLY @1607 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @1608
  IF ~~ THEN REPLY @1607 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @1609
  IF ~~ THEN REPLY @1607 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @1610
  IF ~~ THEN REPLY @1607 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @1611
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @1612
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @1613
  IF ~~ THEN DO ~Enemy()~ EXIT
END