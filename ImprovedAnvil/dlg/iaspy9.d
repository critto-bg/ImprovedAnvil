BEGIN ~IASPY9~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @4110
  IF ~~ THEN REPLY @4111 GOTO 1
  IF ~~ THEN REPLY @4112 GOTO 2
  IF ~~ THEN REPLY @4113 GOTO 3
  IF ~~ THEN REPLY @4114 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @4115
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("SPPRI26",Myself)) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4115
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("SPPR713",Myself)) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @4115
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("SPPRI25",Myself)) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @4115
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("sppri27",Myself)) DestroySelf()~ EXIT
END
