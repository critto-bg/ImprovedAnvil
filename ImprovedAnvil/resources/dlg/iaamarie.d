BEGIN ~IAAMARIE~

IF ~NumTimesTalkedTo(0) Global("Iaamarieljob","GLOBAL",0)~ THEN BEGIN 0
  SAY @2650
  IF ~~ THEN REPLY @2651 GOTO 1
  IF ~~ THEN REPLY @2652 GOTO 2
END

IF ~Global("Iaamarieljob","GLOBAL",0)~ THEN BEGIN 1
  SAY @2653
  IF ~~ THEN REPLY @2654 GOTO 2
  IF ~~ THEN REPLY @2652 GOTO 2
END

IF ~Global("Iaamarieljob","GLOBAL",0)~ THEN BEGIN 2
  SAY @2655
  IF ~~ THEN REPLY @2656 GOTO 3
  IF ~~ THEN REPLY @2657 GOTO 4
  IF ~~ THEN REPLY @2658 GOTO 5
END

IF ~Global("Iaamarieljob","GLOBAL",0)~ THEN BEGIN 3
  SAY @2659
  IF ~~ THEN REPLY @2657 GOTO 4
  IF ~~ THEN REPLY @2662 GOTO 6
  IF ~~ THEN REPLY @2671 DO ~SetGlobal("Iaammarname","GLOBAL",1)~ GOTO 10
  IF ~~ THEN REPLY @2673 GOTO 11
END

IF ~Global("Iaamarieljob","GLOBAL",0)~ THEN BEGIN 4
  SAY @2660
  IF ~~ THEN REPLY @2662 GOTO 6
END

IF ~Global("Iaamarieljob","GLOBAL",0)~ THEN BEGIN 5
  SAY @2661
  IF ~~ THEN REPLY @2657 GOTO 4
  IF ~~ THEN REPLY @2662 GOTO 6
END

IF ~Global("Iaamarieljob","GLOBAL",0)~ THEN BEGIN 6
  SAY @2663
  IF ~~ THEN REPLY @2664 GOTO 7
  IF ~~ THEN REPLY @2665 GOTO 7
END

IF ~Global("Iaamarieljob","GLOBAL",0)~ THEN BEGIN 7
  SAY @2666
  IF ~~ THEN REPLY @2667 GOTO 8
END

IF ~Global("Iaamarieljob","GLOBAL",0)~ THEN BEGIN 8
  SAY @2668
  IF ~~ THEN REPLY @2669 GOTO 9
  IF ~Global("Iaammarname","GLOBAL",0) CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @2671 DO ~SetGlobal("Iaammarname","GLOBAL",1)~ GOTO 12
END

IF ~Global("Iaamarieljob","GLOBAL",0)~ THEN BEGIN 9
  SAY @2670
  IF ~~ THEN DO ~SetGlobal("Iaamarieljob","GLOBAL",1) DestroySelf()~ EXIT
END

IF ~Global("Iaamarieljob","GLOBAL",0)~ THEN BEGIN 10
  SAY @2672
  IF ~~ THEN REPLY @2657 GOTO 4
  IF ~~ THEN REPLY @2662 GOTO 6
  IF ~~ THEN REPLY @2673 GOTO 11
END

IF ~Global("Iaamarieljob","GLOBAL",0)~ THEN BEGIN 11
  SAY @2674
  IF ~~ THEN REPLY @2657 GOTO 4
  IF ~~ THEN REPLY @2662 GOTO 6
  IF ~Global("Iaammarname","GLOBAL",0)~ THEN REPLY @2671 DO ~SetGlobal("Iaammarname","GLOBAL",1)~ GOTO 10
END

IF ~Global("Iaamarieljob","GLOBAL",0)~ THEN BEGIN 12
  SAY @2672
  IF ~~ THEN REPLY @2669 GOTO 9
END