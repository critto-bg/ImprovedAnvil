BEGIN ~MULTIG~

IF ~!InParty(Myself)~ THEN BEGIN 0
  SAY #43200 /* ~It has been a pleasure adventuring with you. Well met, and farewell.~ */
  IF ~Global("Ialeaving","LOCALS",1)~ THEN DO ~DestroySelf()~ EXIT
  IF ~Global("Ialeaving","LOCALS",0)~ THEN REPLY #74098 /* ~Please rejoin the party.~ */
    DO ~JoinParty()~ EXIT
END

IF ~InParty(Myself)~ THEN BEGIN 1
  SAY #62166 /* ~Why do you wish to waste my time with idle banter?~ */
  IF ~~ THEN EXIT
END