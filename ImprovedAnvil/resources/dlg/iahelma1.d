BEGIN ~IAHELMA1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @5500
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @5501
  IF ~~ THEN DO ~GiveItemCreate("S!ring07",Player1,1,1,1)~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @5502
  IF ~~ THEN DO ~SetInterrupt(FALSE) SetGlobal("IaApparition","AR3020",3)~
  EXIT
END