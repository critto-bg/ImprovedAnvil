BEGIN ~IAACTON~

IF ~NumTimesTalkedTo(0) Global("Iasquirjob","GLOBAL",5) Global("Iaactongone","GLOBAL",0)~ THEN BEGIN 0
  SAY @4430
  IF ~~ THEN GOTO 1
END

IF ~Global("Iasquirjob","GLOBAL",5) Global("Iaactongone","GLOBAL",0)~ THEN BEGIN 1
  SAY @4431
  IF ~~ THEN REPLY @4432 GOTO 2
  IF ~~ THEN REPLY @4433 GOTO 3
  IF ~~ THEN REPLY @4434 GOTO 4
END

IF ~Global("Iasquirjob","GLOBAL",5) Global("Iaactongone","GLOBAL",0)~ THEN BEGIN 2
  SAY @4435
  IF ~~ THEN REPLY @4438 GOTO 5
  IF ~~ THEN REPLY @4439 GOTO 6
END

IF ~Global("Iasquirjob","GLOBAL",5) Global("Iaactongone","GLOBAL",0)~ THEN BEGIN 3
  SAY @4436
  IF ~~ THEN REPLY @4438 GOTO 5
  IF ~~ THEN REPLY @4439 GOTO 6
END

IF ~Global("Iasquirjob","GLOBAL",5) Global("Iaactongone","GLOBAL",0)~ THEN BEGIN 4
  SAY @4437
  IF ~~ THEN REPLY @4438 GOTO 5
  IF ~~ THEN REPLY @4439 GOTO 6
END

IF ~Global("Iasquirjob","GLOBAL",5) Global("Iaactongone","GLOBAL",0)~ THEN BEGIN 5
  SAY @4440
  IF ~~ THEN REPLY @4443 GOTO 8
END

IF ~Global("Iasquirjob","GLOBAL",5) Global("Iaactongone","GLOBAL",0)~ THEN BEGIN 6
  SAY @4441
  IF ~~ THEN GOTO 7
END

IF ~Global("Iasquirjob","GLOBAL",5) Global("Iaactongone","GLOBAL",0)~ THEN BEGIN 7
  SAY @4442
  IF ~~ THEN DO ~SetGlobal("Iaactongone","GLOBAL",1) GiveItemCreate("potn52",[PC],0,0,0) GiveItemCreate("potn03",[PC],0,0,0) GiveItemCreate("potn43",[PC],0,0,0) AddexperienceParty(10000) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~Global("Iasquirjob","GLOBAL",5) Global("Iaactongone","GLOBAL",0)~ THEN BEGIN 8
  SAY @4444
  IF ~~ THEN GOTO 9
END

IF ~Global("Iasquirjob","GLOBAL",5) Global("Iaactongone","GLOBAL",0)~ THEN BEGIN 9
  SAY @4445
  IF ~~ THEN REPLY @4446 GOTO 10
  IF ~~ THEN REPLY @4447 GOTO 11
  IF ~~ THEN REPLY @4439 GOTO 6
END

IF ~Global("Iasquirjob","GLOBAL",5) Global("Iaactongone","GLOBAL",0)~ THEN BEGIN 10
  SAY @4448
  IF ~~ THEN REPLY @4447 GOTO 11
  IF ~~ THEN REPLY @4439 GOTO 6
END

IF ~Global("Iasquirjob","GLOBAL",5) Global("Iaactongone","GLOBAL",0)~ THEN BEGIN 11
  SAY @4449
  IF ~~ THEN GOTO 12
END

IF ~Global("Iasquirjob","GLOBAL",5) Global("Iaactongone","GLOBAL",0)~ THEN BEGIN 12
  SAY @4450
  IF ~~ THEN REPLY @4451 GOTO 13
  IF ~~ THEN REPLY @4453 GOTO 14
END

IF ~Global("Iasquirjob","GLOBAL",5) Global("Iaactongone","GLOBAL",0)~ THEN BEGIN 13
  SAY @4452
  IF ~~ THEN REPLY @4453 GOTO 14
  IF ~~ THEN REPLY @4454 GOTO 6
END

IF ~Global("Iasquirjob","GLOBAL",5) Global("Iaactongone","GLOBAL",0)~ THEN BEGIN 14
  SAY @4455
  IF ~~ THEN REPLY @4456 GOTO 15
  IF ~~ THEN REPLY @4457 GOTO 15
END

IF ~Global("Iasquirjob","GLOBAL",5) Global("Iaactongone","GLOBAL",0)~ THEN BEGIN 15
  SAY @4458
  IF ~~ THEN GOTO 16
END

IF ~Global("Iasquirjob","GLOBAL",5) Global("Iaactongone","GLOBAL",0)~ THEN BEGIN 16
  SAY @4459
  IF ~~ THEN GOTO 17
END

IF ~Global("Iasquirjob","GLOBAL",5) Global("Iaactongone","GLOBAL",0)~ THEN BEGIN 17
  SAY @4460
  IF ~~ THEN GOTO 18
END

IF ~Global("Iasquirjob","GLOBAL",5) Global("Iaactongone","GLOBAL",0)~ THEN BEGIN 18
  SAY @4461
  IF ~~ THEN GOTO 19
END

IF ~Global("Iasquirjob","GLOBAL",5) Global("Iaactongone","GLOBAL",0)~ THEN BEGIN 19
  SAY @4462
  IF ~~ THEN DO ~SetGlobal("Iasquirjob","GLOBAL",6) GiveItemCreate("potn55",[PC],0,0,0) GiveItemCreate("potn05",[PC],0,0,0) GiveItemCreate("potn43",[PC],0,0,0) GiveItemCreate("scrl9m",[PC],0,0,0) AddexperienceParty(15500) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END