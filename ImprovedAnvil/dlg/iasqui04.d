BEGIN ~IASQUI04~

IF ~GlobalGT("Chapter","GLOBAL",5) GlobalGT("Iasquirjob","GLOBAL",4) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 0
  SAY @4471
  IF ~~ THEN GOTO 1
END

IF ~GlobalGT("Chapter","GLOBAL",5) GlobalGT("Iasquirjob","GLOBAL",4) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 1
  SAY @4472
  IF ~~ THEN GOTO 2
END

IF ~GlobalGT("Chapter","GLOBAL",5) GlobalGT("Iasquirjob","GLOBAL",4) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 2
  SAY @4473
  IF ~~ THEN GOTO 3
END

IF ~GlobalGT("Chapter","GLOBAL",5) GlobalGT("Iasquirjob","GLOBAL",4) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 3
  SAY @4474
  IF ~~ THEN GOTO 4
END

IF ~GlobalGT("Chapter","GLOBAL",5) GlobalGT("Iasquirjob","GLOBAL",4) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 4
  SAY @4475
  IF ~~ THEN REPLY @4476 GOTO 5
  IF ~~ THEN REPLY @4477 GOTO 5
END

IF ~GlobalGT("Chapter","GLOBAL",5) GlobalGT("Iasquirjob","GLOBAL",4) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 5
  SAY @4478
  IF ~~ THEN DO ~SetGlobal("Iaoldsquijob","GLOBAL",1) GiveItemCreate("S!misc47",LastTalkedToBy,0,0,0) DestroySelf()~ EXIT
END

IF ~GlobalLT("Chapter","GLOBAL",6) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 6
  SAY @4470
  IF ~~ THEN EXIT
END