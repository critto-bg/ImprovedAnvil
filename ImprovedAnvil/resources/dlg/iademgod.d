BEGIN ~IADEMGOD~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @900
  IF ~~ THEN REPLY @901 GOTO 1
  IF ~PartyHasItem("S!sw04")~ THEN REPLY @902 GOTO 2
  IF ~~ THEN REPLY @903 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @904
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @905
  IF ~~ THEN DO ~TakePartyItemNum("S!sw04",1) DestroyItem("S!sw04") SetGlobal("Ianojudgement","GLOBAL",1) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @906
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @907
  IF ~~ THEN DO ~Enemy()~ EXIT
END