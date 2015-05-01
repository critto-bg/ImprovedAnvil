BEGIN ~IAACTON2~

IF ~NumTimesTalkedTo(0) Global("Iasquirjob","GLOBAL",8)~ THEN BEGIN 0
  SAY @4485
  IF ~~ THEN REPLY @4486 GOTO 1
  IF ~~ THEN REPLY @4487 GOTO 1
END

IF ~Global("Iasquirjob","GLOBAL",8)~ THEN BEGIN 1
  SAY @4488
  IF ~~ THEN REPLY @4489 DO ~SetGlobal("Iaactonknows","GLOBAL",1)~ GOTO 2
  IF ~PartyHasItem("S!misc48")~ THEN REPLY @4490 DO ~SetGlobal("Iaactonknows","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @4491 GOTO 13
END

IF ~Global("Iasquirjob","GLOBAL",8)~ THEN BEGIN 2
  SAY @4492
  IF ~PartyHasItem("S!misc48")~ THEN REPLY @4493 GOTO 3
  IF ~~ THEN REPLY @4496 GOTO 5
END

IF ~Global("Iasquirjob","GLOBAL",8)~ THEN BEGIN 3
  SAY @4494
  IF ~~ THEN DO ~TakePartyItemNum("S!misc48",1) DestroyItem("S!misc48") AddexperienceParty(15500)~ GOTO 4
END

IF ~Global("Iasquirjob","GLOBAL",8)~ THEN BEGIN 4
  SAY @4495
  IF ~~ THEN REPLY @4496 GOTO 5
END

IF ~Global("Iasquirjob","GLOBAL",8)~ THEN BEGIN 5
  SAY @4497
  IF ~~ THEN GOTO 6
END

IF ~Global("Iasquirjob","GLOBAL",8)~ THEN BEGIN 6
  SAY @4498
  IF ~~ THEN REPLY @4499 GOTO 7
  IF ~~ THEN REPLY @4500 GOTO 7
END

IF ~Global("Iasquirjob","GLOBAL",8)~ THEN BEGIN 7
  SAY @4501
  IF ~~ THEN GOTO 8
END

IF ~Global("Iasquirjob","GLOBAL",8)~ THEN BEGIN 8
  SAY @4502
  IF ~~ THEN GOTO 9
END

IF ~Global("Iasquirjob","GLOBAL",8)~ THEN BEGIN 9
  SAY @4503
  IF ~~ THEN REPLY @4504 GOTO 10
  IF ~~ THEN REPLY @4505 GOTO 10
END

IF ~Global("Iasquirjob","GLOBAL",8)~ THEN BEGIN 10
  SAY @4506
  IF ~~ THEN REPLY @4507 GOTO 11
  IF ~~ THEN REPLY @4508 GOTO 11
END

IF ~Global("Iasquirjob","GLOBAL",8)~ THEN BEGIN 11
  SAY @4509
  IF ~~ THEN GOTO 12
END

IF ~Global("Iasquirjob","GLOBAL",8)~ THEN BEGIN 12
  SAY @4510
  IF ~~ THEN GOTO 13
END

IF ~Global("Iasquirjob","GLOBAL",8)~ THEN BEGIN 13
  SAY @4511
  IF ~~ THEN GOTO 14
END

IF ~Global("Iasquirjob","GLOBAL",8)~ THEN BEGIN 14
  SAY @4512
  IF ~~ THEN DO ~SetGlobal("Iasquirjob","GLOBAL",9) AddXPObject(Player1,22500) AddXPObject(Player2,22500) AddXPObject(Player3,22500) AddXPObject(Player4,22500) AddXPObject(Player5,22500) AddXPObject(Player6,22500) GiveItemCreate("potn55",[PC],3,0,0) GiveItemCreate("potn33",[PC],2,0,0) GiveItemCreate("scrl9m",[PC],0,0,0) GiveItemCreate("S!helm06",[PC],0,0,0) GivePartyGold(10000) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END