BEGIN ~IARAKP~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2950
  IF ~~ THEN REPLY @2951 DO ~SetGlobal("Ianolackey","AR4500",1)~ GOTO 1
  IF ~~ THEN REPLY @2952 DO ~SetGlobal("Iaaskedwho","AR4500",1)~ GOTO 2
  IF ~~ THEN REPLY @2953 DO ~SetGlobal("Iaaskedhow","AR4500",1)~ GOTO 3
END

IF ~Global("Iaepicbattle","AR4500",1)~ THEN BEGIN 1
  SAY @2954
  IF ~~ THEN REPLY @2952 DO ~SetGlobal("Iaaskedwho","AR4500",1)~ GOTO 2
  IF ~~ THEN REPLY @2953 DO ~SetGlobal("Iaaskedhow","AR4500",1)~ GOTO 3
END

IF ~Global("Iaepicbattle","AR4500",1)~ THEN BEGIN 2
  SAY @2955
  IF ~Global("Iaaskedhow","AR4500",0)~ THEN REPLY @2953 DO ~SetGlobal("Iaaskedhow","AR4500",1)~ GOTO 3
  IF ~~ THEN REPLY @2957 GOTO 4
END

IF ~Global("Iaepicbattle","AR4500",1)~ THEN BEGIN 3
  SAY @2956
  IF ~Global("Iaaskedwho","AR4500",0)~ THEN REPLY @2952 DO ~SetGlobal("Iaaskedwho","AR4500",1)~ GOTO 2
  IF ~Global("Iaaskedwho","AR4500",1)~ THEN REPLY @2957 GOTO 4
END

IF ~Global("Iaepicbattle","AR4500",1)~ THEN BEGIN 4
  SAY @2958
  IF ~~ THEN REPLY @2959 DO ~SetGlobal("Iaaskedgods","AR4500",1)~ GOTO 5
  IF ~~ THEN REPLY @2960 DO ~SetGlobal("Iaaskedfirst","AR4500",1)~ GOTO 6
END

IF ~Global("Iaepicbattle","AR4500",1)~ THEN BEGIN 5
  SAY @2962
  IF ~~ THEN REPLY @2960 DO ~SetGlobal("Iaaskedfirst","AR4500",1)~ GOTO 6
  IF ~Global("Iaaskedfirst","AR4500",1)~ THEN REPLY @2961 GOTO 7
END

IF ~Global("Iaepicbattle","AR4500",1)~ THEN BEGIN 6
  SAY @2963
  IF ~~ THEN REPLY @2959 DO ~SetGlobal("Iaaskedgods","AR4500",1)~ GOTO 5
  IF ~Global("Iaaskedgods","AR4500",1)~ THEN REPLY @2961 GOTO 7
END

IF ~Global("Iaepicbattle","AR4500",1)~ THEN BEGIN 7
  SAY @2964
  IF ~~ THEN REPLY @2965 GOTO 8
  IF ~~ THEN REPLY @2966 GOTO 8
END

IF ~Global("Iaepicbattle","AR4500",1)~ THEN BEGIN 8
  SAY @2967
  IF ~~ THEN REPLY @2968 GOTO 9
END

IF ~Global("Iaepicbattle","AR4500",1)~ THEN BEGIN 9
  SAY @2969
  IF ~~ THEN DO ~Enemy() SetGlobal("Iaepicbattle","AR4500",2)~ EXIT
END

IF ~Global("Iaepicbattle","AR4500",3)~ THEN BEGIN 10
  SAY @2970
  IF ~~ THEN GOTO 11
END

IF ~Global("Iaepicbattle","AR4500",3)~ THEN BEGIN 11
  SAY @2971
  IF ~~ THEN DO ~SetGlobal("Iaepicbattle","AR4500",4) AddXPObject(Player1,95000) AddXPObject(Player2,95000) AddXPObject(Player3,95000) AddXPObject(Player4,95000) AddXPObject(Player5,95000) AddXPObject(Player6,95000) DestroySelf()~ EXIT
END