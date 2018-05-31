BEGIN ~IAEFREE2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2550
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2551
  IF ~~ THEN REPLY @2552 GOTO 2
  IF ~~ THEN REPLY @2553 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @2554
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @2559
  IF ~~ THEN DO ~SetGlobal("Iaexit","AR2210",2) ReallyForceSpellRES("SPWII07",Myself) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @2555
  IF ~PartyHasItem("misc3c")~ THEN REPLY @2556 GOTO 5
  IF ~~ THEN REPLY @2557 GOTO 3
END

IF ~~ THEN BEGIN 5
  SAY @2558
  IF ~~ THEN DO ~SetInterrupt(FALSE) SetGlobal("Iaexit","AR2210",3) TakePartyItem("misc3c") DestroyItem("misc3c") ForceSpell(Myself,DRYAD_TELEPORT) SetInterrupt(TRUE)~ EXIT
END