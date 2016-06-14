BEGIN ~IACGHOS2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @3400
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3401
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3402
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @3403
  IF ~~ THEN DO ~SetGlobal("ghostwent","ARIA14",1) AddXPObject(Player1,15500) AddXPObject(Player2,15500) AddXPObject(Player3,15500) AddXPObject(Player4,15500) AddXPObject(Player5,15500) AddXPObject(Player6,15500) DestroySelf()~ EXIT
END