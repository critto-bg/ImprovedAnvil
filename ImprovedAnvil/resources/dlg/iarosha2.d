BEGIN ~IAROSHA2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2350
  IF ~Reputation(Player1,20)~ THEN GOTO 1
  IF ~ReputationLT(Player1,20)~ THEN GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @2351
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @2352
  IF ~~ THEN DO ~GiveItemCreate("S!ring06",Player1,1,1,1) ActionOverride("S!girl2",EscapeArea()) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @2352
  IF ~~ THEN DO ~ActionOverride("S!girl2",EscapeArea()) EscapeArea()~ EXIT
END