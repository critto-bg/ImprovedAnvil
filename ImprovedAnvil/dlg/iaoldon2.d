BEGIN ~IAOLDON2~

IF ~Global("Iaoldonejob","GLOBAL",3)~ THEN BEGIN 0
  SAY @4283
  IF ~~ GOTO 4
END

IF ~Global("Iaoldonejob","GLOBAL",1)~ THEN BEGIN 1
  SAY @4280
  IF ~~ THEN EXTERN ~IAGRLCH6~ 1
END

IF ~Global("Iaoldonejob","GLOBAL",1)~ THEN BEGIN 2
  SAY @4281
  IF ~~ GOTO 3
END

IF ~Global("Iaoldonejob","GLOBAL",1)~ THEN BEGIN 3
  SAY @4282
  IF ~~ THEN EXTERN ~IAGRLCH6~ 3
END

IF ~Global("Iaoldonejob","GLOBAL",3)~ THEN BEGIN 4
  SAY @4284
  IF ~~ GOTO 5
END

IF ~Global("Iaoldonejob","GLOBAL",3)~ THEN BEGIN 5
  SAY @4285
  IF ~~ GOTO 6
END

IF ~Global("Iaoldonejob","GLOBAL",3)~ THEN BEGIN 6
  SAY @4286
  IF ~~ THEN REPLY @4287 GOTO 7
END

IF ~Global("Iaoldonejob","GLOBAL",3)~ THEN BEGIN 7
  SAY @4288
  IF ~~ GOTO 8
END

IF ~Global("Iaoldonejob","GLOBAL",3)~ THEN BEGIN 8
  SAY @4289
  IF ~~ THEN DO ~SetGlobal("Iaoldonejob","GLOBAL",4) AddXPObject(Player1,50000) GiveItemCreate("S!clck06",[PC],0,0,0) DestroySelf()~ EXIT
END