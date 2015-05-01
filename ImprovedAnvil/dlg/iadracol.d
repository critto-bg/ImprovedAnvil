BEGIN ~IADRACOL~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @3450
  IF ~~ THEN REPLY @3451 DO ~SetGlobal("Iaaskedwho","ARIA14",1)~ GOTO 1
  IF ~~ THEN REPLY @3452 DO ~SetGlobal("Iadifferent","ARIA14",1)~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @3454
  IF ~Global("Iadifferent","ARIA14",0)~ THEN REPLY @3452 DO ~SetGlobal("Iadifferent","ARIA14",1)~ GOTO 2
  IF ~~ THEN REPLY @3455 DO ~SetGlobal("Iaaskedwho","ARIA14",1)~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @3453
  IF ~Global("Iaaskedwho","ARIA14",0)~ THEN REPLY @3451 DO ~SetGlobal("Iaaskedwho","ARIA14",1)~ GOTO 1
  IF ~~ THEN REPLY @3456 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @3457
  IF ~Global("Iadifferent","ARIA14",0)~ THEN REPLY @3452 DO ~SetGlobal("Iadifferent","ARIA14",1)~ GOTO 2
  IF ~~ THEN REPLY @3460 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @3458
  IF ~~ THEN REPLY @3455 DO ~SetGlobal("Iaaskedwho","ARIA14",1)~ GOTO 3
  IF ~Global("Iatoldneed","ARIA14",0)~ THEN REPLY @3460 DO ~SetGlobal("Iatoldneed","ARIA14",1)~ GOTO 5
  IF ~Global("Iatoldneed","ARIA14",1)~ THEN REPLY @3459 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @3461
  IF ~Global("Iaaskedwho","ARIA14",0)~ THEN REPLY @3455 DO ~SetGlobal("Iaaskedwho","ARIA14",1)~ GOTO 3
  IF ~Global("Iadifferent","ARIA14",0)~ THEN REPLY @3452 DO ~SetGlobal("Iadifferent","ARIA14",1)~ GOTO 2
  IF ~~ THEN REPLY @3459 GOTO 6
  IF ~~ THEN REPLY @3464 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @3462
  IF ~~ THEN REPLY @3463 GOTO 8
  IF ~~ THEN REPLY @3464 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @3469
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @3465
  IF ~~ THEN REPLY @3466 GOTO 9
  IF ~~ THEN REPLY @3464 GOTO 7
END

IF ~~ THEN BEGIN 9
  SAY @3467
  IF ~~ THEN REPLY @3468 GOTO 7
  IF ~~ THEN REPLY @3464 GOTO 7
END