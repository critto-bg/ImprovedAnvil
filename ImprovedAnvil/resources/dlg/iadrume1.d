BEGIN ~IADRUME1~

IF ~True()~ THEN BEGIN Warning
  SAY @5960

  IF ~Global("IADruidPlot","GLOBAL",2)~ THEN GOTO BringHelp
  IF ~Global("IADruidPlot","GLOBAL",3)~ THEN GOTO UrgeReturn
END

IF ~~ THEN BEGIN BringHelp
  SAY @5961

  IF ~OR(2) Global("IADruidAnathNote","GLOBAL",0) Global("IADruidMerellaTalk","GLOBAL",0)~ THEN GOTO Imnesvale
  IF ~Global("IADruidGrancorNote","GLOBAL",0)~ THEN GOTO Windspear
END

IF ~~ THEN BEGIN Windspear
  SAY @5962

  IF ~Global("IADruidAnathNote","GLOBAL",1) Global("IADruidMerellaTalk","GLOBAL",1)~ THEN GOTO Farewell
  IF ~OR(2) Global("IADruidAnathNote","GLOBAL",0) Global("IADruidMerellaTalk","GLOBAL",0)~ THEN GOTO Imnesvale
END

IF ~~ THEN BEGIN Imnesvale
  SAY @5963

  IF ~~ THEN GOTO Farewell
END

IF ~~ THEN BEGIN Farewell
  SAY @5964

  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN UrgeReturn
  SAY @5965

  IF ~~ THEN DO ~EscapeArea()~ EXIT
END