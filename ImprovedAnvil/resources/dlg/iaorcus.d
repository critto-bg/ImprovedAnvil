BEGIN ~IAORCUS~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @3200
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3201
  IF ~PartyHasItem("sw1h31")~ THEN REPLY @3202 GOTO 2
  IF ~!Kit(Player1,MAGESCHOOL_NECROMANCER)~ THEN REPLY @3203 GOTO 3
  IF ~Kit(Player1,MAGESCHOOL_NECROMANCER)~ THEN REPLY @3206 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @3204
  IF ~PartyHasItem("sw1h31")~ THEN DO ~TakePartyItem("sw1h31") DestroyItem("sw1h31") SetGlobal("Ianodaystar","GLOBAL",1) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @3205
  IF ~~ THEN DO ~SetGlobal("Iaorcushostile","AR0802",1) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @3207
  IF ~~ THEN DO ~SetGlobal("Iaorcushostile","AR0802",1) Enemy()~ EXIT
END