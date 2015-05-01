BEGIN ~IAAMMAR2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2800
  IF ~~ THEN DO ~CreateCreatureObjectDoor("S!amari2",Player1,0,0,0)~ EXIT
END