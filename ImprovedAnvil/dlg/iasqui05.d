BEGIN ~IASQUI05~

IF ~NumTimesTalkedTo(0) GlobalGT("Iammirrorjob","GLOBAL",2) Global("Iasqui05talk","ARia23",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 0
  SAY @4900
  IF ~!PartyHasItem("S!misc57")~ THEN REPLY @4901 GOTO 1
  IF ~PartyHasItem("S!misc57")~ THEN REPLY @4901 GOTO 2
END

IF ~GlobalGT("Iammirrorjob","GLOBAL",2) Global("Iasqui05talk","ARia23",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 1
  SAY @4902
  IF ~~ THEN DO ~SetGlobalTimer("Iasqui05appear","ARia23",60) SetGlobal("Iacreature","ARia23",0) DestroySelf()~ EXIT
END

IF ~GlobalGT("Iammirrorjob","GLOBAL",2) Global("Iasqui05talk","ARia23",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 2
  SAY @4903
  IF ~~ THEN REPLY @4904 GOTO 3
END

IF ~GlobalGT("Iammirrorjob","GLOBAL",2) Global("Iasqui05talk","ARia23",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 3
  SAY @4905
  IF ~~ THEN REPLY @4906 DO~TakePartyItemNum("S!misc57",1) DestroyItem("S!misc57") AddexperienceParty(12500)~ GOTO 4
END

IF ~GlobalGT("Iammirrorjob","GLOBAL",2) Global("Iasqui05talk","ARia23",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 4
  SAY @4907
  IF ~~ THEN REPLY @4908 GOTO 5
END

IF ~GlobalGT("Iammirrorjob","GLOBAL",2) Global("Iasqui05talk","ARia23",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 5
  SAY @4909
  IF ~~ THEN GOTO 6
END

IF ~GlobalGT("Iammirrorjob","GLOBAL",2) Global("Iasqui05talk","ARia23",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 6
  SAY @4910
  IF ~~ THEN GOTO 7
END

IF ~GlobalGT("Iammirrorjob","GLOBAL",2) Global("Iasqui05talk","ARia23",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 7
  SAY @4911
  IF ~~ THEN REPLY @4912 GOTO 8
  IF ~~ THEN REPLY @4913 GOTO 9
END

IF ~GlobalGT("Iammirrorjob","GLOBAL",2) Global("Iasqui05talk","ARia23",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 8
  SAY @4915
  IF ~~ THEN GOTO 7
END

IF ~GlobalGT("Iammirrorjob","GLOBAL",2) Global("Iasqui05talk","ARia23",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 9
  SAY @4916
  IF ~~ THEN REPLY @4917 GOTO 11
END

IF ~GlobalGT("Iammirrorjob","GLOBAL",2) Global("Iasqui05talk","ARia23",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 10
  SAY @4918
  IF ~~ THEN DO ~SetGlobal("Iapennyroyal","GLOBAL",1) SetGlobal("Iasqui05talk","ARia23",1) EscapeArea()~ EXIT
END

IF ~GlobalGT("Iammirrorjob","GLOBAL",2) Global("Iasqui05talk","ARia23",0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 11
  SAY @4911
  IF ~~ THEN REPLY @4914 GOTO 10
END