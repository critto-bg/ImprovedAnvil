BEGIN ~IAKNIGH2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2300
  IF ~PartyHasItem("S!misc22")~ THEN REPLY @2301 DO ~TakePartyItem("S!misc22") DestroyItem("S!misc22")~ GOTO 1
  IF ~!PartyHasItem("S!misc22")~ THEN REPLY @2301 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2302
  IF ~~ THEN REPLY @2303 GOTO 2
  IF ~PartyHasItem("S!misc22")~ THEN REPLY @2304 GOTO 3
  IF ~!PartyHasItem("S!misc22")~ THEN REPLY @2304 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @2305
  IF ~~ THEN REPLY @2308 GOTO 5
  IF ~PartyHasItem("S!misc22")~ THEN REPLY @2304 GOTO 3
  IF ~!PartyHasItem("S!misc22")~ THEN REPLY @2304 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @2306
  IF ~~ THEN REPLY @2309 GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @2307
  IF ~~ THEN REPLY @2309 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @2310
  IF ~~ THEN REPLY @2311 GOTO 7
  IF ~PartyHasItem("S!misc22")~ THEN REPLY @2304 GOTO 3
  IF ~!PartyHasItem("S!misc22")~ THEN REPLY @2304 GOTO 4
END

IF ~~ THEN BEGIN 6
  SAY @2313
  IF ~~ THEN DO ~SetGlobal("Iarangerjob","GLOBAL",9) GiveItemCreate("S!misc24",[PC],1,0,0) AddexperienceParty(100000) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @2312
  IF ~~ THEN DO ~AddexperienceParty(100000) ActionOverride("S!rosha2",EscapeArea()) ActionOverride("S!girl2",EscapeArea()) EscapeArea()~ EXIT
END