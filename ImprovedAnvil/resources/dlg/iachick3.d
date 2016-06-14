BEGIN ~IACHICK3~

IF ~NumTimesTalkedTo(0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 0
  SAY @4175
  IF ~Global("ShadowLordDead","GLOBAL",0)~ THEN REPLY @4176 GOTO 1
  IF ~GlobalGT("ShadowLordDead","GLOBAL",0)~ THEN REPLY @4176 GOTO 3
END

IF ~Global("ShadowLordDead","GLOBAL",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 1
  SAY @4177
  IF ~~ THEN GOTO 2
END

IF ~Global("ShadowLordDead","GLOBAL",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 2
  SAY @4178
  IF ~~ THEN DO ~SetGlobal("Iadruidjob","GLOBAL",4) DestroySelf()~ EXIT
END

IF ~GlobalGT("ShadowLordDead","GLOBAL",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 3
  SAY @4179
  IF ~~ THEN DO ~SetGlobal("Iadruidjob","GLOBAL",4) DestroySelf()~ EXIT
END