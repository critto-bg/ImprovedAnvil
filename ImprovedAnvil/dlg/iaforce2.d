BEGIN ~IAFORCE2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @4765
  IF ~~ THEN GOTO 1
END

IF ~GlobalLT("Ialavokjob","GLOBAL",3)~ THEN BEGIN 1
  SAY @4766
  IF ~~ THEN DO ~SetGlobal("Ialavokjob","GLOBAL",3) ActionOverride(Player1,ReallyForceSpellRES("SPINI22",Myself))~ EXIT
END

IF ~Global("Ialavokjob","GLOBAL",4)~ THEN BEGIN 2
  SAY @4767
  IF ~~ THEN GOTO 3
END

IF ~Global("Ialavokjob","GLOBAL",4)~ THEN BEGIN 3
  SAY @4768
  IF ~~ THEN GOTO 4
END

IF ~Global("Ialavokjob","GLOBAL",4)~ THEN BEGIN 4
  SAY @4769
  IF ~~ THEN GOTO 5
END

IF ~Global("Ialavokjob","GLOBAL",4)~ THEN BEGIN 5
  SAY @4770
  IF ~~ THEN DO ~SetGlobal("Ialavokjob","GLOBAL",5) AddXPObject(Player1,45000) AddXPObject(Player2,45000) AddXPObject(Player3,45000) AddXPObject(Player4,45000) AddXPObject(Player5,45000) AddXPObject(Player6,45000) DestroySelf()~ EXIT
END