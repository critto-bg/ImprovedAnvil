BEGIN ~IALADY2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1450
  IF ~~ THEN DO ~SetGlobal("Iadoors","AR0511",1) DestroyItem("S!minhp1")~ EXIT
END