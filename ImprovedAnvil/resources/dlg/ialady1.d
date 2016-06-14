BEGIN ~IALADY1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1400
  IF ~PartyHasItem("S!misc19")~ THEN REPLY @1401 GOTO 1
  IF ~PartyHasItem("S!misc19")~ THEN REPLY @1402 GOTO 2
  IF ~!PartyHasItem("S!misc19")~ THEN REPLY @1402 GOTO 3
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 7
  SAY @1413
  IF ~PartyHasItem("S!misc19")~ THEN REPLY @1402 GOTO 2
  IF ~!PartyHasItem("S!misc19")~ THEN REPLY @1402 GOTO 3
  IF ~PartyHasItem("S!misc19")~ THEN REPLY @1415 GOTO 1
  IF ~PartyHasItem("S!misc19")~ THEN REPLY @1416 GOTO 6
  IF ~!PartyHasItem("S!misc19")~ THEN REPLY @1416 GOTO 8
END

IF ~~ THEN BEGIN 1
  SAY @1403
  IF ~~ THEN REPLY @1406 GOTO 4
  IF ~~ THEN REPLY @1407 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @1404
  IF ~~ THEN REPLY @1407 GOTO 5
  IF ~~ THEN REPLY @1411 GOTO 6
END

IF ~~ THEN BEGIN 3
  SAY @1405
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @1408
  IF ~~ THEN DO ~SetInterrupt(FALSE) SetGlobal("Iacreature","AR0511",3) TakePartyItemNum("S!misc19",1) DestroyItem("S!misc19") ForceSpell(Myself,DRYAD_TELEPORT) SetInterrupt(TRUE)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @1409
  IF ~~ THEN REPLY @1410 GOTO 4
END

IF ~~ THEN BEGIN 6
  SAY @1412
  IF ~~ THEN DO ~SetInterrupt(FALSE) SetGlobal("Iacreature","AR0511",3) TakePartyItemNum("S!misc19",1) DestroyItem("S!misc19") ForceSpell(Myself,DRYAD_TELEPORT) SetInterrupt(TRUE)~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @1417
  IF ~~ THEN DO ~SetInterrupt(FALSE) SetGlobal("GypsyJob","GLOBAL",6) ForceSpell(Myself,DRYAD_TELEPORT) SetInterrupt(TRUE)~ EXIT
END