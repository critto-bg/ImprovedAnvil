BEGIN ~IASPIDEQ~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1050
  IF ~~ THEN REPLY @1051 GOTO 1
  IF ~PartyHasItem("MISC3E")~ THEN REPLY @1052 GOTO 2
  IF ~~ THEN REPLY @1053 GOTO 3
  IF ~!PartyHasItem("MISC3E")~ THEN REPLY @1057 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1054
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @1055
  IF ~PartyHasItem("MISC3E")~ THEN DO ~SetInterrupt(FALSE) TakePartyItemNum("MISC3E",1) DestroyItem("MISC3E") SetGlobal("Iadoors","AR3001",2) ForceSpell(Myself,DRYAD_TELEPORT) SetInterrupt(TRUE)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @1056
  IF ~~ THEN REPLY @1051 GOTO 1
  IF ~PartyHasItem("MISC3E")~ THEN REPLY @1052 GOTO 2
END