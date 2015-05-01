BEGIN ~IADEMMAG~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @4481
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @4482
  IF ~~ THEN DO ~SetGlobal("Iamessage","AR0530",1)~ EXIT
END