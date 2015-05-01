BEGIN ~IAMORID1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @4300
  IF ~~ THEN GOTO 1
END

IF ~Global("Iaoldonejob","GLOBAL",4)~ THEN BEGIN 1
  SAY @4301
  IF ~Dead("S!oldon2")~ GOTO 2
  IF ~!Dead("S!oldon2")~ GOTO 3
END

IF ~Global("Iaoldonejob","GLOBAL",4)~ THEN BEGIN 2
  SAY @4302
  IF ~~ THEN GOTO 4
END

IF ~Global("Iaoldonejob","GLOBAL",4)~ THEN BEGIN 3
  SAY @4303
  IF ~~ THEN GOTO 4
END

IF ~Global("Iaoldonejob","GLOBAL",4)~ THEN BEGIN 4
  SAY @4304
  IF ~~ THEN REPLY @4305 GOTO 5
END

IF ~Global("Iaoldonejob","GLOBAL",4)~ THEN BEGIN 5
  SAY @4306
  IF ~~ THEN GOTO 6
END

IF ~Global("Iaoldonejob","GLOBAL",4)~ THEN BEGIN 6
  SAY @4307
  IF ~~ THEN REPLY @4308 GOTO 7
  IF ~~ THEN REPLY @4309 GOTO 8
END

IF ~Global("Iaoldonejob","GLOBAL",4)~ THEN BEGIN 7
  SAY @4310
  IF ~~ THEN DO ~SetGlobal("Iaoldonejob","GLOBAL",5) SetGlobal("Iamoridjob","GLOBAL",1) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~Global("Iaoldonejob","GLOBAL",4)~ THEN BEGIN 8
  SAY @4311
  IF ~~ THEN DO ~SetGlobal("Iaoldonejob","GLOBAL",5) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END