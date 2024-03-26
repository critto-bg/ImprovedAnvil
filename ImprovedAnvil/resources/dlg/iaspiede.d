BEGIN ~IASPIEDE~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Welcome
  SAY @5950

  ++ @5951 + Why
END

IF ~~ THEN BEGIN Why
  SAY @5952

  ++ @5953 + What
END

IF ~~ THEN BEGIN What
  SAY @5954
  = @5955
  = @5956

  ++ @5957 + Goodbye
END

IF ~~ THEN BEGIN Goodbye
  SAY @5958

  IF ~~ THEN DO ~SetGlobal("Iaspirit","AR4500",2) SetGlobalTimer("Iarakpspawn","AR4500",3) CreateCreatureDoor("S!smiede",[1940.1470],0) DestroySelf()~ EXIT
END