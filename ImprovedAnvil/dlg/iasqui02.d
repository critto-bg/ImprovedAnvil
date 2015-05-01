BEGIN ~IASQUI02~

IF ~NumTimesTalkedTo(0) Global("Iasquirjob","GLOBAL",2) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 0
  SAY @4370
  IF ~~ THEN REPLY @4371 GOTO 1
END

IF ~Global("Iasquirjob","GLOBAL",2) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 1
  SAY @4372
  IF ~~ THEN REPLY @4373 GOTO 2
END

IF ~Global("Iasquirjob","GLOBAL",2) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 2
  SAY @4374
  IF ~~ THEN GOTO 3
END

IF ~Global("Iasquirjob","GLOBAL",2) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 3
  SAY @4375
  IF ~~ THEN REPLY @4376 GOTO 4
END

IF ~Global("Iasquirjob","GLOBAL",2) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 4
  SAY @4377
  IF ~~ THEN GOTO 5
END

IF ~Global("Iasquirjob","GLOBAL",2) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 5
  SAY @4378
  IF ~~ THEN REPLY @4379 GOTO 6
  IF ~~ THEN REPLY @4380 GOTO 7
END

IF ~Global("Iasquirjob","GLOBAL",2) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 6
  SAY @4381
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~Global("Iasquirjob","GLOBAL",2) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 7
  SAY @4382
  IF ~~ THEN REPLY @4383 GOTO 6
  IF ~~ THEN REPLY @4384 GOTO 8
END

IF ~Global("Iasquirjob","GLOBAL",2) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 8
  SAY @4385
  IF ~~ THEN REPLY @4386 GOTO 9
END

IF ~Global("Iasquirjob","GLOBAL",2) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 9
  SAY @4387
  IF ~~ THEN GOTO 10
END

IF ~Global("Iasquirjob","GLOBAL",2) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 10
  SAY @4388
  IF ~~ THEN DO ~SetGlobal("Iasquirjob","GLOBAL",3) GiveItemCreate("S!misc44",LastTalkedToBy,0,0,0) EscapeArea()~ EXIT
END