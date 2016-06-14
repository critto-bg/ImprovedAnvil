BEGIN ~IAPASHA2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @3000
  IF ~~ THEN REPLY @3001 GOTO 1
  IF ~~ THEN REPLY @3002 GOTO 1
END

IF ~Global("Iapasha","AR4500",1)~ THEN BEGIN 1
  SAY @3003
  IF ~~ THEN REPLY @3004 GOTO 2
  IF ~~ THEN REPLY @3005 GOTO 2
END

IF ~Global("Iapasha","AR4500",1)~ THEN BEGIN 2
  SAY @3006
  IF ~~ THEN GOTO 3
END

IF ~Global("Iapasha","AR4500",1)~ THEN BEGIN 3
  SAY @3007
  IF ~~ THEN REPLY @3008 GOTO 4
  IF ~~ THEN REPLY @3009 GOTO 4
END

IF ~Global("Iapasha","AR4500",1)~ THEN BEGIN 4
  SAY @3010
  IF ~~ THEN REPLY @3011 GOTO 5
END

IF ~Global("Iapasha","AR4500",1)~ THEN BEGIN 5
  SAY @3012
  IF ~~ THEN GOTO 6
END

IF ~Global("Iapasha","AR4500",1)~ THEN BEGIN 6
  SAY @3013
  IF ~~ THEN GOTO 7
END

IF ~Global("Iapasha","AR4500",1)~ THEN BEGIN 7
  SAY @3014
  IF ~~ THEN DO ~SetGlobal("Iapasha","AR4500",2) SetGlobalTimer("Iarakpspawn","AR4500",6)~ EXIT
END

IF ~Global("Iaepicbattle","AR4500",4)~ THEN BEGIN 8
  SAY @3015
  IF ~~ THEN REPLY @3016 GOTO 9
  IF ~~ THEN REPLY @3017 GOTO 9
END

IF ~Global("Iaepicbattle","AR4500",4)~ THEN BEGIN 9
  SAY @3018
  IF ~~ THEN GOTO 10
END

IF ~Global("Iaepicbattle","AR4500",4)~ THEN BEGIN 10
  SAY @3019
  IF ~~ THEN GOTO 11
END

IF ~Global("Iaepicbattle","AR4500",4)~ THEN BEGIN 11
  SAY @3020
  IF ~~ THEN DO ~AddexperienceParty(100000) DestroySelf()~ EXIT
END