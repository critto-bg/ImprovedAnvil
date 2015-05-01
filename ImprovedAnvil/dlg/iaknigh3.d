BEGIN ~IAKNIGH3~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2450
  IF ~~ THEN REPLY @2451 GOTO 1
  IF ~~ THEN REPLY @2452 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2453
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @2454
  IF ~~ THEN DO ~AddXPObject(Player1,55000) AddXPObject(Player2,55000) AddXPObject(Player3,55000) AddXPObject(Player4,55000) AddXPObject(Player5,55000) AddXPObject(Player6,55000) GivePartyGold(20000) GiveItemCreate("potn33",[PC],3,0,0) EscapeArea()~ EXIT
END