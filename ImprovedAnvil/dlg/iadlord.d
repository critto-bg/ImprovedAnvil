BEGIN ~IADLORD~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @800
  IF ~~ THEN REPLY @801 GOTO 1
  IF ~PartyHasItem("sw1h60")~ THEN REPLY @802 GOTO 2
  IF ~~ THEN REPLY @803 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @804
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @805
  IF ~~ THEN DO ~TakePartyItemNum("sw1h60",1) DestroyItem("sw1h60") DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @806
  IF ~~ THEN DO ~Enemy()~ EXIT
END