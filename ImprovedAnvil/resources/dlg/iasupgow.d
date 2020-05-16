BEGIN ~IASUPGOW~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @3550
  IF ~~ THEN REPLY @3551 GOTO 1
  IF ~~ THEN REPLY @3552 GOTO 1
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowtalk","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 1
  SAY @3554
  IF ~~ THEN REPLY @3553 GOTO 2
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowtalk","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 2
  SAY @3555
  IF ~~ THEN REPLY @3556 GOTO 3
  IF ~~ THEN REPLY @3557 GOTO 4
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowtalk","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 3
  SAY @3558
  IF ~~ THEN REPLY @3559 GOTO 5
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowtalk","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 5
  SAY @3560
  IF ~~ THEN GOTO 6
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowtalk","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 6
  SAY @3561
  IF ~~ THEN GOTO 7
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowtalk","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 7
  SAY @3562
  IF ~~ THEN GOTO 8
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowtalk","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 8
  SAY @3563
  IF ~~ THEN REPLY @3564 GOTO 9
  IF ~!Alignment(Player1,MASK_EVIL) !Global("Iap1notgood","GLOBAL",1) XPLT(Player1,4200000)~ THEN REPLY @3565 GOTO 10
  IF ~!Alignment(Player1,MASK_EVIL) !Global("Iap1notgood","GLOBAL",1) GlobalGT("Chapter","GLOBAL",5) XPGT(Player1,4199999)~ THEN REPLY @3565 GOTO 12
  IF ~!Alignment(Player1,MASK_EVIL) !Global("Iap1notgood","GLOBAL",1) GlobalLT("Chapter","GLOBAL",6) XPGT(Player1,4199999)~ THEN REPLY @3565 GOTO 29
  IF ~Alignment(Player1,MASK_EVIL)~ THEN REPLY @3565 GOTO 13
  IF ~!Alignment(Player1,MASK_EVIL) Global("Iap1notgood","GLOBAL",1)~ THEN REPLY @3568 GOTO 31
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowtalk","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 9
  SAY @3566
  IF ~~ THEN REPLY @3567 GOTO 11
  IF ~!Alignment(Player1,MASK_EVIL) !Global("Iap1notgood","GLOBAL",1) XPLT(Player1,4200000)~ THEN REPLY @3568 GOTO 10
  IF ~!Alignment(Player1,MASK_EVIL) !Global("Iap1notgood","GLOBAL",1) GlobalGT("Chapter","GLOBAL",5) XPGT(Player1,4199999)~ THEN REPLY @3568 GOTO 12
  IF ~!Alignment(Player1,MASK_EVIL) !Global("Iap1notgood","GLOBAL",1) GlobalLT("Chapter","GLOBAL",6) XPGT(Player1,4199999)~ THEN REPLY @3565 GOTO 29
  IF ~Alignment(Player1,MASK_EVIL)~ THEN REPLY @3568 GOTO 13
  IF ~!Alignment(Player1,MASK_EVIL) Global("Iap1notgood","GLOBAL",1)~ THEN REPLY @3568 GOTO 31
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowtalk","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 10
  SAY @3570
  IF ~~ THEN REPLY @3573 GOTO 14
  IF ~~ THEN REPLY @3575 GOTO 15
  IF ~~ THEN REPLY @3576 GOTO 16
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowtalk","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 12
  SAY @3571
  IF ~~ THEN REPLY @3573 GOTO 17
  IF ~~ THEN REPLY @3577 DO ~SetGlobal("Iaaskedhow","AR3011",1)~ GOTO 18
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowtalk","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 13
  SAY @3572
  IF ~~ THEN DO ~SetGlobal("Iasupgowtalk","AR3011",1) SetGlobal("Iatoldleave","AR3011",1)~ EXIT
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowtalk","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 14
  SAY @3574
  IF ~~ THEN REPLY @3575 GOTO 15
  IF ~~ THEN REPLY @3576 GOTO 16
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowtalk","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 15
  SAY @3578
  IF ~~ THEN REPLY @3597 GOTO 4
  IF ~~ THEN REPLY @3576 GOTO 16
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowtalk","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 16
  SAY @3579
  IF ~~ THEN DO ~SetGlobal("Iasupgowtalk","AR3011",1)~ EXIT
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowtalk","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 17
  SAY @3574
  IF ~~ THEN REPLY @3575 GOTO 19
  IF ~~ THEN REPLY @3596 DO ~SetGlobal("Iaaskedhow","AR3011",1)~ GOTO 18
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowtalk","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 19
  SAY @3598
  IF ~~ THEN REPLY @3597 GOTO 4
  IF ~~ THEN REPLY @3596 DO ~SetGlobal("Iaaskedhow","AR3011",1)~ GOTO 18
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iatoldleave","AR3011",1) Global("Iasupgowtalk","AR3011",1) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 20
  SAY @3599
  IF ~~ THEN EXIT
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iatoldleave","AR3011",0) !Alignment(Player1,MASK_EVIL) Global("Iap1notgood","GLOBAL",1) Global("Iasupgowtalk","AR3011",1) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 32
  SAY @3602
  IF ~~ THEN DO ~SetGlobal("Iatoldleave","AR3011",1)~ EXIT
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iatoldleave","AR3011",0) Alignment(Player1,MASK_EVIL) Global("Iasupgowtalk","AR3011",1) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 33
  SAY @3572
  IF ~~ THEN DO ~SetGlobal("Iatoldleave","AR3011",1)~ EXIT
END

IF ~Global("Iasupgowsent","AR3011",0) !Alignment(Player1,MASK_EVIL) XPLT(Player1,4200000) Global("Iasupgowtalk","AR3011",1) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 21
  SAY @3586
  IF ~~ THEN REPLY @3597 GOTO 4
  IF ~Global("Iasupgowtrick","AR3011",0)~ THEN REPLY @3589 DO ~SetGlobal("Iasupgowtrick","AR3011",1)~ GOTO 22
  IF ~~ THEN REPLY @3587 EXIT
END

IF ~Global("Iasupgowsent","AR3011",0) !Alignment(Player1,MASK_EVIL) GlobalLT("Chapter","GLOBAL",6) XPGT(Player1,4199999) Global("Iasupgowtalk","AR3011",1) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 30
  SAY @3586
  IF ~~ THEN REPLY @3597 GOTO 4
  IF ~Global("Iasupgowtrick","AR3011",0)~ THEN REPLY @3589 DO ~SetGlobal("Iasupgowtrick","AR3011",1)~ GOTO 22
  IF ~~ THEN REPLY @3587 EXIT
END

IF ~Global("Iasupgowsent","AR3011",0) !Alignment(Player1,MASK_EVIL) Global("Iasupgowtrick","AR3011",1) Global("Iasupgowtalk","AR3011",1) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 22
  SAY @3590
  IF ~~ THEN REPLY @3591 GOTO 27
  IF ~~ THEN REPLY @3592 GOTO 23
END

IF ~Global("Iasupgowsent","AR3011",0) !Alignment(Player1,MASK_EVIL) Global("Iasupgowtrick","AR3011",1) Global("Iasupgowtalk","AR3011",1) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 23
  SAY @3593
  IF ~~ THEN DO ~SetGlobal("Iasupgowtrick","AR3011",2)~ EXIT
END

IF ~Global("Iasupgowsent","AR3011",0) !Alignment(Player1,MASK_EVIL) GlobalGT("Chapter","GLOBAL",5) XPGT(Player1,4199999) Global("Iasupgowtalk","AR3011",1) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 24
  SAY @3588
  IF ~~ THEN GOTO 25
END

IF ~Global("Iasupgowsent","AR3011",0) !Alignment(Player1,MASK_EVIL) GlobalGT("Chapter","GLOBAL",5) XPGT(Player1,4199999) Global("Iasupgowtalk","AR3011",1) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 25
  SAY @3595
  IF ~~ THEN REPLY @3577 DO ~SetGlobal("Iaaskedhow","AR3011",1)~ GOTO 18
  IF ~Global("Iasupgowtrick","AR3011",0)~ THEN REPLY @3591 GOTO 4
  IF ~Global("Iasupgowtrick","AR3011",2)~ THEN REPLY @3591 GOTO 27
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iaaskedhow","AR3011",1) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 18
  SAY @3580
  IF ~Global("Iasupgowtrick","AR3011",0)~ THEN REPLY @3581 GOTO 4
  IF ~Global("Iasupgowtrick","AR3011",2)~ THEN REPLY @3581 GOTO 27
  IF ~~ THEN REPLY @3582 GOTO 26
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 26
  SAY @3583
  IF ~~ THEN DO ~SetGlobal("Iasupgowsent","AR3011",1)~ EXIT
END

IF ~Global("Iasupgowsent","AR3011",3) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 28
  SAY @3600
  IF ~~ THEN REPLY @3603 DO ~GiveItemCreate("plot02a",[PC],0,0,0) SetGlobal("Iasupgowdead","GLOBAL",1) THEN BEGIN 32 
  IF ~~ THEN REPLY @3604 THEN GO TO 50~ EXIT
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowattack","AR3011",0) GlobalGT("Iasupgowtrick","AR3011",0)~ THEN BEGIN 27
  SAY @3594
  IF ~~ THEN DO ~SetGlobal("Iasupgowattack","AR3011",1) Enemy()~ EXIT
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowtalk","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 11
  SAY @3569
  IF ~~ THEN DO ~SetGlobal("Iasupgowattack","AR3011",1) ReputationInc(-2) Enemy()~ EXIT
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 4
  SAY @3594
  IF ~~ THEN DO ~SetGlobal("Iasupgowattack","AR3011",1) ReputationInc(-2) Enemy()~ EXIT
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowtalk","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 29
  SAY @3601
  IF ~~ THEN REPLY @3573 GOTO 14
  IF ~~ THEN REPLY @3575 GOTO 15
  IF ~~ THEN REPLY @3576 GOTO 16
END

IF ~Global("Iasupgowsent","AR3011",0) Global("Iasupgowtalk","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 31
  SAY @3602
  IF ~~ THEN DO ~SetGlobal("Iasupgowtalk","AR3011",1) SetGlobal("Iatoldleave","AR3011",1)~ EXIT
END

IF ~Global("Iasupgowsent","AR3011",3)  Global("Iasupgowtalk","AR3011",0) Global("Iasupgowattack","AR3011",0)~ THEN BEGIN 50
  SAY @3594
  IF ~~ THEN DO ~SetGlobal("Iasupgowattack","AR3011",1) ReputationInc(-2) Enemy()~ EXIT
END