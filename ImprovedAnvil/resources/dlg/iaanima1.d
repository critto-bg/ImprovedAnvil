BEGIN ~IAANIMA1~

IF ~NumTimesTalkedTo(0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 0
  SAY @4180
  IF ~Global("Iarandomanimal","GLOBAL",1) PartyHasItem("potn08")~ THEN REPLY @4181 GOTO 1
  IF ~Global("Iarandomanimal","GLOBAL",2)~ THEN REPLY @4181 GOTO 2
  IF ~Global("Iarandomanimal","GLOBAL",3)~ THEN REPLY @4181 GOTO 3
  IF ~Global("Iarandomanimal","GLOBAL",4) PartyHasItem("potn20")~ THEN REPLY @4181 GOTO 4
  IF ~Global("Iarandomanimal","GLOBAL",1) !PartyHasItem("potn08")~ THEN REPLY @4181 GOTO 5
  IF ~Global("Iarandomanimal","GLOBAL",4) !PartyHasItem("potn20")~ THEN REPLY @4181 GOTO 5
  IF ~Global("Iarandomanimal","GLOBAL",5)~ THEN REPLY @4181 GOTO 5
END

IF ~CheckStat(Myself,2,SCRIPTINGSTATE3) Global("Iaanimaltalked","LOCALS",1) !Class(LastTalkedToBy,RANGER_ALL) !Class(LastTalkedToBy,DRUID_ALL)~ THEN BEGIN 9
  SAY @4192
  IF ~~ THEN EXIT
END

IF ~CheckStat(Myself,2,SCRIPTINGSTATE3) Global("Iaanimaltalked","LOCALS",1)~ THEN BEGIN 10
  SAY @4189
  IF ~~ THEN EXIT
END

IF ~CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 5
  SAY @4189
  IF ~~ THEN DO ~SetGlobal("Iarandomanimal","GLOBAL",0) SetGlobal("Iaanimaltalked","LOCALS",1)~ EXIT
END

IF ~CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 1
  SAY @4182
  IF ~~ THEN REPLY @4186 GOTO 6
  IF ~~ THEN REPLY @4190 GOTO 7
END

IF ~CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 2
  SAY @4183
  IF ~~ THEN DO ~SetGlobal("Iarandomanimal","GLOBAL",0) SetGlobal("Iaanimaltalked","LOCALS",1) GiveItemCreate("S!berry2",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 3
  SAY @4184
  IF ~~ THEN DO ~SetGlobal("Iarandomanimal","GLOBAL",0) SetGlobal("Iaanimaltalked","LOCALS",1) GiveGoldForce(1)~ EXIT
END

IF ~CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 4
  SAY @4185
  IF ~~ THEN REPLY @4188 GOTO 8
  IF ~~ THEN REPLY @4190 GOTO 7
END

IF ~CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 6
  SAY @4187
  IF ~~ THEN DO ~SetGlobal("Iarandomanimal","GLOBAL",0) SetGlobal("Iaanimaltalked","LOCALS",1) TakePartyItemNum("potn08",1) DestroyItem("potn08") AddexperienceParty(100)~ EXIT
END

IF ~CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 7
  SAY @4191
  IF ~~ THEN DO ~SetGlobal("Iarandomanimal","GLOBAL",0) SetGlobal("Iaanimaltalked","LOCALS",1) ReputationInc(-1) Kill(Myself)~ EXIT
END

IF ~CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 8
  SAY @4187
  IF ~~ THEN DO ~SetGlobal("Iarandomanimal","GLOBAL",0) SetGlobal("Iaanimaltalked","LOCALS",1) TakePartyItemNum("potn20",1) DestroyItem("potn20") AddexperienceParty(100)~ EXIT
END