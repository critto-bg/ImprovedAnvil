BEGIN ~IABELGUA~

IF ~NumTimesTalkedTo(0) Global("Iaguard2","AR3001",1)~ THEN BEGIN 0
  SAY @4051
  IF ~~ THEN DO ~SetGlobal("Iaguard2","AR3001",2)~ EXIT
END