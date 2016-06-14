BEGIN ~IAAURIE3~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @4000
  IF ~~ THEN REPLY @4001 GOTO 1
  IF ~~ THEN REPLY @4002 GOTO 1
END

IF ~Global("Iaswanmejob","GLOBAL",6) Global("Iagolems","AR1100",0)~ THEN BEGIN 1
  SAY @4003
  IF ~~ THEN REPLY @4004 GOTO 2
  IF ~~ THEN REPLY @4005 GOTO 2
END

IF ~Global("Iaswanmejob","GLOBAL",6) Global("Iagolems","AR1100",0)~ THEN BEGIN 2
  SAY @4006
  IF ~~ THEN GOTO 3
END

IF ~Global("Iaswanmejob","GLOBAL",6) Global("Iagolems","AR1100",0)~ THEN BEGIN 3
  SAY @4007
  IF ~~ THEN DO ~SetGlobal("Iagolems","AR1100",1) CreateCreatureObjectDoor("S!elego3",Myself,0,0,0) CreateCreatureObjectDoor("S!elego4",LastTalkedToBy,0,0,0) CreateCreatureObjectDoor("S!elego5",LastTalkedToBy,0,0,0) CreateCreatureObjectDoor("S!ultgod",Myself,0,0,0)~ EXIT
END

IF ~Global("Iaswanmejob","GLOBAL",7)~ THEN BEGIN 4
  SAY @4008
  IF ~~ THEN REPLY @4009 GOTO 5
  IF ~~ THEN REPLY @4010 GOTO 5
END

IF ~Global("Iaswanmejob","GLOBAL",7)~ THEN BEGIN 5
  SAY @4011
  IF ~~ THEN GOTO 6
END

IF ~Global("Iaswanmejob","GLOBAL",7)~ THEN BEGIN 6
  SAY @4012
  IF ~~ THEN DO ~SetGlobal("Iaswanmejob","GLOBAL",8) AddexperienceParty(45500) ReallyForceSpellRES("SPWII07",Myself) EscapeArea()~ EXIT
END