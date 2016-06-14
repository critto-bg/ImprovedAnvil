BEGIN ~IASQUI01~

IF ~NumTimesTalkedTo(0) Global("Iasquirjob","GLOBAL",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 0
  SAY @4340
  IF ~~ THEN REPLY @4341 GOTO 1
END

IF ~Global("Iasquirjob","GLOBAL",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 1
  SAY @4342
  IF ~~ THEN GOTO 2
END

IF ~Global("Iasquirjob","GLOBAL",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 2
  SAY @4343
  IF ~~ THEN REPLY @4344 GOTO 3
END

IF ~Global("Iasquirjob","GLOBAL",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 3
  SAY @4345
  IF ~~ THEN GOTO 4
END

IF ~Global("Iasquirjob","GLOBAL",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 4
  SAY @4346
  IF ~~ THEN REPLY @4347 GOTO 5
  IF ~Global("ShadowLordDead","GLOBAL",0)~ THEN REPLY @4348 GOTO 6
  IF ~GlobalGT("ShadowLordDead","GLOBAL",0)~ THEN REPLY @4348 GOTO 7
END

IF ~Global("Iasquirjob","GLOBAL",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 5
  SAY @4355
  IF ~~ THEN DO ~SetGlobal("Iasquirjob","GLOBAL",1)~ EXIT
END

IF ~Global("Iasquirjob","GLOBAL",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 6
  SAY @4349
  IF ~~ THEN REPLY @4351 GOTO 8
END

IF ~Global("Iasquirjob","GLOBAL",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 7
  SAY @4350
  IF ~~ THEN REPLY @4351 GOTO 8
END

IF ~Global("Iasquirjob","GLOBAL",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 8
  SAY @4352
  IF ~~ THEN REPLY @4347 GOTO 5
  IF ~~ THEN REPLY @4353 GOTO 9
END

IF ~Global("Iasquirjob","GLOBAL",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 9
  SAY @4354
  IF ~~ THEN DO ~SetGlobal("Iasquirjob","GLOBAL",2)~ EXIT
END

IF ~Global("Iasquirjob","GLOBAL",1) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 10
  SAY @4361
  IF ~~ THEN EXIT
END

IF ~GlobalGT("Iasquirjob","GLOBAL",1) Global("Iasquirthanks","GLOBAL",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 11
  SAY @4356
  IF ~GlobalGT("Iasquirjob","GLOBAL",2)~ THEN REPLY @4357 GOTO 12
  IF ~Global("Iasquirjob","GLOBAL",2)~ THEN REPLY @4358 GOTO 13
END

IF ~GlobalGT("Iasquirjob","GLOBAL",2) Global("Iasquirthanks","GLOBAL",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 12
  SAY @4359
  IF ~~ THEN DO ~SetGlobal("Iasquirthanks","GLOBAL",1)~ EXIT
END

IF ~Global("Iasquirjob","GLOBAL",2) Global("Iasquirthanks","GLOBAL",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 13
  SAY @4360
  IF ~~ THEN EXIT
END

IF ~GlobalGT("Iasquirjob","GLOBAL",1) Global("Iasquirthanks","GLOBAL",1) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 14
  SAY @4361
  IF ~~ THEN EXIT
END