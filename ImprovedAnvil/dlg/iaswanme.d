BEGIN ~IASWANME~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @3700
  IF ~~ THEN GOTO 1
END

IF ~Global("Swanmetalk","AR1107",0)~ THEN BEGIN 1
  SAY @3701
  IF ~~ THEN REPLY @3702 GOTO 2
  IF ~~ THEN REPLY @3703 GOTO 2
END

IF ~Global("Swanmetalk","AR1107",0)~ THEN BEGIN 2
  SAY @3704
  IF ~~ THEN REPLY @3705 GOTO 3
  IF ~~ THEN REPLY @3706 GOTO 3
END

IF ~Global("Swanmetalk","AR1107",0)~ THEN BEGIN 3
  SAY @3707
  IF ~~ THEN GOTO 4
END

IF ~Global("Swanmetalk","AR1107",0)~ THEN BEGIN 4
  SAY @3708
  IF ~~ THEN REPLY @3709 GOTO 5
END

IF ~Global("Swanmetalk","AR1107",0)~ THEN BEGIN 5
  SAY @3710
  IF ~~ THEN REPLY @3711 DO ~SetGlobal("askedwho","AR1107",1)~ GOTO 6
  IF ~~ THEN REPLY @3712 DO ~SetGlobal("askedwhere","AR1107",1)~ GOTO 7
END

IF ~Global("Swanmetalk","AR1107",0)~ THEN BEGIN 6
  SAY @3713
  IF ~Global("askedwhere","AR1107",0)~ THEN REPLY @3712 DO ~SetGlobal("askedwhere","AR1107",1)~ GOTO 7
  IF ~Global("askedwhere","AR1107",1)~ THEN REPLY @3715 GOTO 8
  IF ~~ THEN REPLY @3716 GOTO 9
END

IF ~Global("Swanmetalk","AR1107",0)~ THEN BEGIN 7
  SAY @3714
  IF ~Global("askedwho","AR1107",0)~ THEN REPLY @3711 DO ~SetGlobal("askedwho","AR1107",1)~ GOTO 6
  IF ~Global("askedwho","AR1107",1)~ THEN REPLY @3715 GOTO 8
  IF ~Global("askedwho","AR1107",1)~ THEN REPLY @3716 GOTO 9
END

IF ~Global("Swanmetalk","AR1107",0)~ THEN BEGIN 8
  SAY @3717
  IF ~~ THEN REPLY @3716 GOTO 9
END

IF ~Global("Swanmetalk","AR1107",0)~ THEN BEGIN 9
  SAY @3718
  IF ~~ THEN DO ~SetGlobal("Swanmetalk","AR1107",1) SetGlobal("Iaswanmejob","GLOBAL",1)~ EXIT
END

IF ~Global("SwanmeAttacked","AR1107",1)~ THEN BEGIN 10
  SAY @3719
  IF ~~ THEN DO ~ReputationInc(-4)~ GOTO 11
END

IF ~Global("SwanmeAttacked","AR1107",1)~ THEN BEGIN 11
  SAY @3720
  IF ~~ THEN DO ~ReputationInc(-4)~ GOTO 12
END

IF ~Global("SwanmeAttacked","AR1107",1)~ THEN BEGIN 12
  SAY @3721
  IF ~~ THEN DO ~ReputationInc(-4)~ GOTO 13
END

IF ~Global("SwanmeAttacked","AR1107",1)~ THEN BEGIN 13
  SAY @3722
  IF ~~ THEN DO ~ReputationInc(-4) DestroyItem("minhp1") SetGlobal("SwanmeAttacked","AR1107",2) DialogueInterrupt(FALSE)~ EXIT
END

IF ~Global("Swanmetalk","AR1107",1)~ THEN BEGIN 14
  SAY @3723
  IF ~OR(2) !PartyHasItem("S!misc39")
            GlobalLT("Iaswanmejob","GLOBAL",8)~
    THEN REPLY @3724 GOTO 15
  IF ~Global("Iaswanmejob","GLOBAL",8) PartyHasItem("S!misc39")~ THEN REPLY @3725 GOTO 16
END

IF ~Global("Swanmetalk","AR1107",1)~ THEN BEGIN 15
  SAY @3726
  IF ~~ THEN EXIT
END

IF ~Global("Swanmetalk","AR1107",1)~ THEN BEGIN 16
  SAY @3727
  IF ~~ THEN DO ~TakePartyItemNum("S!misc39",1) DestroyItem("S!misc39") GiveItemCreate("S!axe02",Player1,1,1,1)~ GOTO 17
END

IF ~Global("Swanmetalk","AR1107",1)~ THEN BEGIN 17
  SAY @3728
  IF ~~ THEN REPLY @3729 GOTO 18
  IF ~~ THEN REPLY @3730 GOTO 19
END

IF ~Global("Swanmetalk","AR1107",1)~ THEN BEGIN 18
  SAY @3731
  IF ~~ THEN GOTO 20
END

IF ~Global("Swanmetalk","AR1107",1)~ THEN BEGIN 19
  SAY @3732
  IF ~~ THEN GOTO 20
END

IF ~Global("Swanmetalk","AR1107",1)~ THEN BEGIN 20
  SAY @3733
  IF ~~ THEN DO ~ReputationInc(1) AddXPObject(Player1,45000) AddXPObject(Player2,45000) AddXPObject(Player3,45000) AddXPObject(Player4,45000) AddXPObject(Player5,45000) AddXPObject(Player6,45000) GiveGoldForce(125000) SetGlobal("Iaswanmejob","GLOBAL",9) DestroySelf()~ EXIT
END