BEGIN ~IATARNOR~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY #45840
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3100
  IF ~~ THEN REPLY #45844 GOTO 2
  IF ~~ THEN REPLY #45845 GOTO 3
  IF ~PartyGoldGT(9999)~ THEN REPLY #45846 DO ~TakePartyGold(10000)~ GOTO 4
  IF ~~ THEN REPLY #45847 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY #45848
  IF ~~ THEN DO ~Shout(99) ActionOverride("Gall",Enemy()) ActionOverride("Draug",Enemy()) ActionOverride("Gaius",Enemy()) ActionOverride("Berkref",Enemy()) ActionOverride("Rengaa",Enemy()) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @3110
  IF ~PartyGoldGT(9999)~ THEN REPLY #45852 DO ~TakePartyGold(10000)~ GOTO 4
  IF ~~ THEN REPLY #45853 GOTO 2
  IF ~~ THEN REPLY #45854 GOTO 2
END

IF ~~ THEN BEGIN 4
  SAY #45857
  IF ~~ THEN DO ~ActionOverride("Gall",DestroySelf()) ActionOverride("Draug",DestroySelf()) ActionOverride("Gaius",DestroySelf()) ActionOverride("Berkref",DestroySelf()) ActionOverride("Rengaa",DestroySelf()) DestroySelf()~ EXIT
END