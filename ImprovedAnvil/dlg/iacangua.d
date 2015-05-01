BEGIN ~IACANGUA~

IF ~NumTimesTalkedTo(0) Global("Iaguard1","AR3001",1)~ THEN BEGIN 0
  SAY @4050
  IF ~~ THEN DO ~SetGlobal("Iaguard1","AR3001",2)~ EXIT
END