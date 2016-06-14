BEGIN ~IAHORSE1~

IF ~NumTimesTalkedTo(0) CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 0
  SAY @4195
  IF ~~ THEN REPLY @4196 GOTO 1
END

IF ~CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 1
  SAY @4197
  IF ~~ THEN GOTO 2
END

IF ~CheckStat(Myself,2,SCRIPTINGSTATE3)~ THEN BEGIN 2
  SAY @4198
  IF ~~ THEN DO ~GiveItemCreate("potn55",LastTalkedToBy,5,0,0) GiveItemCreate("potn52",LastTalkedToBy,5,0,0) GiveItemCreate("potn37",LastTalkedToBy,5,0,0) GiveItemCreate("potn35",LastTalkedToBy,2,0,0) GiveItemCreate("potn34",LastTalkedToBy,2,0,0) DestroySelf()~EXIT
END