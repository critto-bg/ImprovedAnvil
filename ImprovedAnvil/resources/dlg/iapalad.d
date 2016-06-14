BEGIN ~IAPALAD~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1100
  IF ~~ THEN REPLY @1101 DO ~SetGlobal("Iamessen","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @1102 DO ~SetGlobal("Iamessen","GLOBAL",1)~ GOTO 2
END

IF ~Global("VanyaJob","GLOBAL",0)~ THEN BEGIN 1
  SAY @1103
  IF ~~ THEN DO ~ReputationInc(-4) DestroySelf()~ EXIT
END

IF ~Global("VanyaJob","GLOBAL",0)~ THEN BEGIN 2
  SAY @1104
  IF ~~ THEN REPLY @1105 GOTO 3
  IF ~~ THEN REPLY @1106 GOTO 1
  IF ~~ THEN REPLY @1107 GOTO 4
END

IF ~Global("VanyaJob","GLOBAL",0)~ THEN BEGIN 3
  SAY @1108
  IF ~~ THEN REPLY @1106 GOTO 1
  IF ~~ THEN REPLY @1107 GOTO 4
END

IF ~Global("VanyaJob","GLOBAL",0)~ THEN BEGIN 4
  SAY @1109
  IF ~~ THEN DO ~SetGlobal("VanyaJob","GLOBAL",1)~ EXIT
END

IF ~GlobalGT("VanyaJob","GLOBAL",0) GlobalLT("VanyaJob","GLOBAL",3)~ THEN BEGIN 5
  SAY @1110
  IF ~Global("VanyaJob","GLOBAL",1)~ THEN REPLY @1111 GOTO 6
  IF ~Global("VanyaJob","GLOBAL",2)~ THEN REPLY @1112 GOTO 7
END

IF ~Global("VanyaJob","GLOBAL",1)~ THEN BEGIN 6
  SAY @1113
  IF ~~ THEN EXIT
END

IF ~Global("VanyaJob","GLOBAL",2)~ THEN BEGIN 7
  SAY @1114
  IF ~~ THEN DO ~SetGlobal("VanyaJob","GLOBAL",3) AddexperienceParty(60000) GivePartyGold(10000) GiveItemCreate("potn33",[PC],2,0,0)~ EXIT
END

IF ~Global("VanyaJob","GLOBAL",3) GlobalTimerNotExpired("Iavanyasec","GLOBAL")~ THEN BEGIN 13
  SAY @1124
  IF ~~ THEN EXIT
END

IF ~Global("VanyaJob","GLOBAL",3) GlobalTimerExpired("Iavanyasec","GLOBAL")~ THEN BEGIN 8
  SAY @1115
  IF ~~ THEN REPLY @1116 EXIT
  IF ~~ THEN REPLY @1117 GOTO 9
END

IF ~Global("VanyaJob","GLOBAL",3)~ THEN BEGIN 9
  SAY @1118
  IF ~~ THEN DO ~SetGlobal("VanyaJob","GLOBAL",4)~ EXIT
END

IF ~GlobalGT("VanyaJob","GLOBAL",3) GlobalLT("VanyaJob","GLOBAL",6)~ THEN BEGIN 10
  SAY @1119
  IF ~Global("VanyaJob","GLOBAL",4)~ THEN REPLY @1120 GOTO 11
  IF ~Global("VanyaJob","GLOBAL",5)~ THEN REPLY @1121 GOTO 12
END

IF ~Global("VanyaJob","GLOBAL",4)~ THEN BEGIN 11
  SAY @1122
  IF ~~ THEN EXIT
END

IF ~Global("VanyaJob","GLOBAL",5)~ THEN BEGIN 12
  SAY @1123
  IF ~~ THEN DO ~SetGlobal("VanyaJob","GLOBAL",6) AddXPObject(Player1,25000) AddXPObject(Player2,25000) AddXPObject(Player3,25000) AddXPObject(Player4,25000) AddXPObject(Player5,25000) AddXPObject(Player6,25000) GivePartyGold(10000) GiveItemCreate("potn33",[PC],2,0,0) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END