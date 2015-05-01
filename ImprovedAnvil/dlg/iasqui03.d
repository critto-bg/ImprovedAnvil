BEGIN ~IASQUI03~

IF ~NumTimesTalkedTo(0) Global("Iasquirjob","GLOBAL",3) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 0
  SAY @4390
  IF ~~ THEN REPLY @4391 GOTO 1
  IF ~PartyHasItem("S!misc44")~ THEN REPLY @4392 DO ~SetGlobal("Iahazelsoon","AR0500",1)~ GOTO 2
END

IF ~Global("Iasquirjob","GLOBAL",3) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 1
  SAY @4398
  IF ~~ THEN REPLY @4399 GOTO 5
  IF ~Global("Iahazelgiven","AR0500",0) PartyHasItem("S!misc44")~ THEN REPLY @4426 GOTO 2
END

IF ~Global("Iasquirjob","GLOBAL",3) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 2
  SAY @4393
  IF ~~ THEN REPLY @4394 GOTO 3
END

IF ~Global("Iasquirjob","GLOBAL",3) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 3
  SAY @4395
  IF ~~ THEN DO ~SetGlobal("Iahazelgiven","AR0500",1) TakePartyItemNum("S!misc44",1) DestroyItem("S!misc44") AddexperienceParty(15500)~ GOTO 4
END

IF ~Global("Iasquirjob","GLOBAL",3) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 4
  SAY @4396
  IF ~Global("Iahazelsoon","AR0500",1)~ THEN REPLY @4397 GOTO 1
  IF ~Global("Iahazelsoon","AR0500",0)~ THEN REPLY @4427 GOTO 5
END

IF ~Global("Iasquirjob","GLOBAL",3) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 5
  SAY @4400
  IF ~Global("Iahazelgiven","AR0500",1)~ THEN GOTO 6
  IF ~Global("Iahazelgiven","AR0500",0)~ THEN GOTO 7
END

IF ~Global("Iasquirjob","GLOBAL",3) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 6
  SAY @4401
  IF ~~ THEN REPLY @4402 GOTO 7
END

IF ~Global("Iasquirjob","GLOBAL",3) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 7
  SAY @4403
  IF ~Global("Iahazelgiven","AR0500",1)~ THEN GOTO 8
  IF ~Global("Iahazelgiven","AR0500",0)~ THEN GOTO 19
END

IF ~Global("Iasquirjob","GLOBAL",3) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 8
  SAY @4404
  IF ~~ THEN REPLY @4405 GOTO 9
END

IF ~Global("Iasquirjob","GLOBAL",3) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 9
  SAY @4406
  IF ~~ THEN REPLY @4407 GOTO 10
  IF ~~ THEN REPLY @4408 GOTO 10
END

IF ~Global("Iasquirjob","GLOBAL",3) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 10
  SAY @4409
  IF ~~ THEN REPLY @4410 GOTO 11
  IF ~~ THEN REPLY @4411 GOTO 12
END

IF ~Global("Iasquirjob","GLOBAL",3) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 11
  SAY @4412
  IF ~~ THEN REPLY @4414 GOTO 13
END

IF ~Global("Iasquirjob","GLOBAL",3) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 12
  SAY @4413
  IF ~~ THEN REPLY @4414 GOTO 13
END

IF ~Global("Iasquirjob","GLOBAL",3) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 13
  SAY @4415
  IF ~~ THEN REPLY @4416 GOTO 14
END

IF ~Global("Iasquirjob","GLOBAL",3) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 14
  SAY @4417
  IF ~~ THEN REPLY @4418 GOTO 15
END

IF ~Global("Iasquirjob","GLOBAL",3) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 15
  SAY @4419
  IF ~~ THEN REPLY @4420 GOTO 16
END

IF ~Global("Iasquirjob","GLOBAL",3) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 16
  SAY @4421
  IF ~~ THEN REPLY @4422 GOTO 17
END

IF ~Global("Iasquirjob","GLOBAL",3) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 17
  SAY @4423
  IF ~Global("Iahazelgiven","AR0500",1)~ THEN REPLY @4424 GOTO 18
  IF ~Global("Iahazelgiven","AR0500",0)~ THEN REPLY @4429 GOTO 18
END

IF ~Global("Iasquirjob","GLOBAL",3) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 18
  SAY @4425
  IF ~~ THEN DO ~SetGlobal("Iasquirjob","GLOBAL",4) DestroySelf()~ EXIT
END

IF ~Global("Iasquirjob","GLOBAL",3) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 19
  SAY @4428
  IF ~~ THEN REPLY @4420 GOTO 16
END