BEGIN ~IAFORCE1~

IF ~NumTimesTalkedTo(0) Global("Iaforce1tlknum","AR0414",0)~ THEN BEGIN 0
  SAY @4750
  IF ~~ THEN REPLY @4751 GOTO 1
  IF ~~ THEN REPLY @4752 GOTO 1
END

IF ~Global("Iaforce1tlknum","AR0414",0)~ THEN BEGIN 1
  SAY @4753
  IF ~~ THEN GOTO 2
END

IF ~Global("Iaforce1tlknum","AR0414",0)~ THEN BEGIN 2
  SAY @4754
  IF ~~ THEN DO ~SetGlobal("Iaforce1tlknum","AR0414",1) SetGlobal("Iafirstbattle","AR0414",1) DestroySelf()~ EXIT
END

IF ~GlobalGT("Iaforce1tlknum","AR0414",0) Global("Iapartyrest","AR0414",1)~ THEN BEGIN 3
  SAY @4758
  IF ~~ THEN GOTO 4
END

IF ~GlobalGT("Iaforce1tlknum","AR0414",0) Global("Iapartyrest","AR0414",1)~ THEN BEGIN 4
  SAY @4759
  IF ~~ THEN DO ~SetGlobal("Iapartyrest","AR0414",0) SetGlobal("Iacompensate","AR0414",1) SetGlobal("Iaforcerespawn","AR0414",1) SetGlobalTimer("Iafrespawntime","AR0414",6) DestroySelf()~ EXIT
END

IF ~Global("Iaforce1tlknum","AR0414",1)~ THEN BEGIN 5
  SAY @4755
  IF ~~ THEN DO ~SetGlobal("Iaforce1tlknum","AR0414",2) SetGlobal("Ia2ndbattle","AR0414",1) DestroySelf()~ EXIT
END

IF ~Global("Iaforce1tlknum","AR0414",2)~ THEN BEGIN 6
  SAY @4757
  IF ~~ THEN DO ~SetGlobal("Iaforce1tlknum","AR0414",3) SetGlobal("Ia3rdbattle","AR0414",1) DestroySelf()~ EXIT
END