BEGIN ~IAAURIE2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @3800
  IF ~~ THEN REPLY @3801 GOTO 1
  IF ~~ THEN REPLY @3802 GOTO 1
  IF ~~ THEN REPLY @3803 GOTO 2
END

IF ~Global("Iaswanmejob","GLOBAL",2)~ THEN BEGIN 1
  SAY @3804
  IF ~~ THEN REPLY @3805 GOTO 2
END

IF ~Global("Iaswanmejob","GLOBAL",2)~ THEN BEGIN 2
  SAY @3806
  IF ~~ THEN GOTO 3
END

IF ~Global("Iaswanmejob","GLOBAL",2)~ THEN BEGIN 3
  SAY @3807
  IF ~~ THEN REPLY @3808 GOTO 4
  IF ~~ THEN REPLY @3809 GOTO 4
END

IF ~Global("Iaswanmejob","GLOBAL",2)~ THEN BEGIN 4
  SAY @3816
  IF ~~ THEN REPLY @3810 GOTO 5
END

IF ~Global("Iaswanmejob","GLOBAL",2)~ THEN BEGIN 5
  SAY @3811
  IF ~~ THEN REPLY @3812 GOTO 6
END

IF ~Global("Iaswanmejob","GLOBAL",2)~ THEN BEGIN 6
  SAY @3813
  IF ~~ THEN REPLY @3814 GOTO 7
END

IF ~Global("Iaswanmejob","GLOBAL",2)~ THEN BEGIN 7
  SAY @3815
  IF ~~ THEN DO ~SetGlobal("Iaswanmejob","GLOBAL",3) EscapeArea()~ EXIT
END