BEGIN ~IAMIRCRE~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @4925
  IF ~Global("Iacanbreathe","GLOBAL",0) Global("Iablazingmir","GLOBAL",0) Global("Iasendblazing","AR2810",0)~ THEN REPLY @4926 GOTO 1
  IF ~Global("Iacanbreathe","GLOBAL",1) Global("Iablazingmir","GLOBAL",0) Global("Iasendblazing","AR2810",0)~ THEN REPLY @4926 GOTO 2
  IF ~Global("Iabldstainmir","GLOBAL",0) Global("Iasendbldstain","AR2810",0)~ THEN REPLY @4927 GOTO 3
  IF ~Global("Iawoodenmir","GLOBAL",0) Global("Iasendwooden","AR2810",0)~ THEN REPLY @4928 GOTO 6
  IF ~Global("Iammirrorjob","GLOBAL",5) Global("Iawoodenmir","GLOBAL",1) Global("Iabldstainmir","GLOBAL",1) Global("Iablazingmir","GLOBAL",1) PartyHasItem("S!misc54") PartyHasItem("S!misc55") PartyHasItem("S!misc56")~ THEN REPLY @4934 GOTO 7
  IF ~~ THEN REPLY @4929 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @4930
  IF ~~ THEN DO ~SetGlobal("Iabreathissue","AR2810",1) SetGlobal("Iamircrespawn","AR2810",0) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4931
  IF ~~ THEN DO ~SetGlobal("Iamircrespawn","AR2810",0) SetGlobal("Iasendblazing","AR2810",1) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @4932
  IF ~~ THEN REPLY #24097 GOTO 4
  IF ~~ THEN REPLY @4933 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY #9749
  IF ~~ THEN DO ~SetGlobal("Iamircrespawn","AR2810",0) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @4931
  IF ~~ THEN DO ~SetGlobal("Iamircrespawn","AR2810",0) SetGlobal("Iasendbldstain","AR2810",1) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @4931
  IF ~~ THEN DO ~SetGlobal("Iamircrespawn","AR2810",0) SetGlobal("Iasendwooden","AR2810",1) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @4931
  IF ~~ THEN DO ~SetGlobal("Iamircrespawn","AR2810",0) SetGlobal("Iasendformom","AR2810",1) DestroySelf()~ EXIT
END