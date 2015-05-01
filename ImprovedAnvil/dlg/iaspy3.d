BEGIN ~IASPY3~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @4100
  IF ~~ THEN REPLY @4101 GOTO 1
  IF ~~ THEN REPLY @4102 GOTO 2
  IF ~~ THEN REPLY @4103 GOTO 3
  IF ~~ THEN REPLY @4104 GOTO 4
  IF ~~ THEN REPLY @4105 GOTO 5
  IF ~~ THEN REPLY @4108 GOTO 7
  IF ~~ THEN REPLY @4106 GOTO 6
  IF ~~ THEN REPLY @4109 GOTO 8
END

IF ~~ THEN BEGIN 1
  SAY @4107
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spini46",Myself)) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4107
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spini47",Myself)) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @4107
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spini48",Myself)) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @4107
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spini49",Myself)) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @4107
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spini50",Myself)) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @4107
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spini44",Myself)) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @4107
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spini79",Myself)) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @4107
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spini80",Myself)) DestroySelf()~ EXIT
END