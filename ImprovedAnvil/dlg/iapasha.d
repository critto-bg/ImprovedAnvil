BEGIN ~IAPASHA~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1500
  IF ~~ THEN REPLY @1501 GOTO 1
END

IF ~Global("GypsyJob","GLOBAL",9)~ THEN BEGIN 1
  SAY @1502
  IF ~~ THEN REPLY @1503 GOTO 2
  IF ~~ THEN REPLY @1504 GOTO 2
END

IF ~Global("GypsyJob","GLOBAL",9)~ THEN BEGIN 2
  SAY @1505
  IF ~~ THEN REPLY @1506 GOTO 3
  IF ~~ THEN REPLY @1507 GOTO 3
END

IF ~Global("GypsyJob","GLOBAL",9)~ THEN BEGIN 3
  SAY @1508
  IF ~~ THEN REPLY @1509 GOTO 4
  IF ~~ THEN REPLY @1510 GOTO 5
END

IF ~Global("GypsyJob","GLOBAL",9)~ THEN BEGIN 4
  SAY @1511
  IF ~~ THEN REPLY @1510 GOTO 5
END

IF ~Global("GypsyJob","GLOBAL",9)~ THEN BEGIN 5
  SAY @1512
  IF ~~ THEN REPLY @1513 GOTO 6
  IF ~~ THEN REPLY @1514 GOTO 6
END

IF ~Global("GypsyJob","GLOBAL",9)~ THEN BEGIN 6
  SAY @1515
  IF ~~ THEN REPLY @1516 GOTO 7
  IF ~~ THEN REPLY @1517 GOTO 7
END

IF ~Global("GypsyJob","GLOBAL",9)~ THEN BEGIN 7
  SAY @1518
  IF ~~ THEN REPLY @1519 GOTO 8
  IF ~~ THEN REPLY @1520 GOTO 8
  IF ~~ THEN REPLY @1521 DO ~SetGlobal("GypsyJob","GLOBAL",10) ReputationInc(-2) Enemy()~ EXIT
END

IF ~Global("GypsyJob","GLOBAL",9)~ THEN BEGIN 8
  SAY @1522
  IF ~~ THEN REPLY @1523 GOTO 9
  IF ~~ THEN REPLY @1524 GOTO 9
END

IF ~Global("GypsyJob","GLOBAL",9)~ THEN BEGIN 9
  SAY @1525
  IF ~~ THEN DO ~SetGlobal("GypsyJob","GLOBAL",11) AddexperienceParty(30000) ReputationInc(1)~ EXIT
END

IF ~Global("GypsyJob","GLOBAL",13)~ THEN BEGIN 10
  SAY @1526
  IF ~~ THEN REPLY @1527 GOTO 11
  IF ~~ THEN REPLY @1528 GOTO 12
END

IF ~Global("GypsyJob","GLOBAL",13)~ THEN BEGIN 11
  SAY @1529
  IF ~~ THEN REPLY @1531 GOTO 12
END

IF ~Global("GypsyJob","GLOBAL",13)~ THEN BEGIN 12
  SAY @1530
  IF ~~ THEN DO ~DialogueInterrupt(FALSE) SetGlobal("GypsyJob","GLOBAL",14) AddexperienceParty(60000) ReputationInc(1) GiveItemCreate("S!scrl27",Player1,1,0,0) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END