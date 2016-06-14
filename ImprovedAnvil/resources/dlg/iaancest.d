BEGIN ~IAANCEST~

IF ~Global("Iainjured","AR5002",1)~ THEN BEGIN 0
  SAY @3250
  IF ~~ THEN GOTO 1
END

IF ~Global("Iainjured","AR5002",1)~ THEN BEGIN 1
  SAY @3251
  IF ~~ THEN DO ~SetGlobal("Iainjured","AR5002",0) ActionOverride("gromnir",ApplySpellRES("SPWII07",Myself))~ EXIT
END