BEGIN ~IACGHOST~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @3350
  IF ~~ THEN REPLY @3351 DO ~SetGlobal("askedwho","ARIA01",1)~ GOTO 1
  IF ~~ THEN REPLY @3352 DO ~SetGlobal("askedwhere","ARIA01",1)~ GOTO 2
END

IF ~Global("ghosttalked","ARIA01",0)~ THEN BEGIN 1
  SAY @3353
  IF ~~ THEN GOTO 3
END

IF ~Global("ghosttalked","ARIA01",0)~ THEN BEGIN 2
  SAY @3363
  IF ~Global("askedwho","ARIA01",0)~ THEN REPLY @3351 GOTO 1
  IF ~Global("askedwho","ARIA01",1)~ THEN REPLY @3364 GOTO 8
END

IF ~Global("ghosttalked","ARIA01",0)~ THEN BEGIN 3
  SAY @3354
  IF ~~ THEN REPLY @3355 GOTO 4
END

IF ~Global("ghosttalked","ARIA01",0)~ THEN BEGIN 4
  SAY @3356
  IF ~~ THEN REPLY @3357 GOTO 5
END

IF ~Global("ghosttalked","ARIA01",0)~ THEN BEGIN 5
  SAY @3358
  IF ~Global("askedwhere","ARIA01",0)~ THEN REPLY @3352 GOTO 2
  IF ~~ THEN REPLY @3359 GOTO 6
END

IF ~Global("ghosttalked","ARIA01",0)~ THEN BEGIN 6
  SAY @3360
  IF ~~ THEN REPLY @3361 GOTO 7
END

IF ~Global("ghosttalked","ARIA01",0)~ THEN BEGIN 7
  SAY @3362
  IF ~Global("askedwhere","ARIA01",0)~ THEN REPLY @3352 GOTO 2
  IF ~Global("askedwhere","ARIA01",1)~ THEN REPLY @3364 GOTO 8
END

IF ~Global("ghosttalked","ARIA01",0)~ THEN BEGIN 8
  SAY @3365
  IF ~~ THEN REPLY @3366 GOTO 9
END

IF ~Global("ghosttalked","ARIA01",0)~ THEN BEGIN 9
  SAY @3367
  IF ~~ THEN GOTO 10
END

IF ~Global("ghosttalked","ARIA01",0)~ THEN BEGIN 10
  SAY @3368
  IF ~~ THEN REPLY @3369 GOTO 11
END

IF ~Global("ghosttalked","ARIA01",0)~ THEN BEGIN 11
  SAY @3370
  IF ~~ THEN REPLY @3371 GOTO 12
  IF ~~ THEN REPLY @3373 GOTO 13
END

IF ~Global("ghosttalked","ARIA01",0)~ THEN BEGIN 12
  SAY @3372
  IF ~~ THEN REPLY @3373 GOTO 13
END

IF ~Global("ghosttalked","ARIA01",0)~ THEN BEGIN 13
  SAY @3374
  IF ~~ THEN DO ~SetGlobal("ghosttalked","ARIA01",1)~ EXIT
END

IF ~Global("ghosttalked","ARIA01",1)~ THEN BEGIN 14
  SAY @3375
  IF ~~ THEN REPLY @3376 GOTO 15
END

IF ~Global("ghosttalked","ARIA01",1)~ THEN BEGIN 15
  SAY @3377
  IF ~~ THEN EXIT
END

IF ~Global("ghosttalked","ARIA01",2)~ THEN BEGIN 16
  SAY @3378
  IF ~~ THEN DO ~SetGlobal("ghosttalked","ARIA01",3) SetGlobal("Iaghostfled","GLOBAL",1) DestroySelf()~ EXIT
END