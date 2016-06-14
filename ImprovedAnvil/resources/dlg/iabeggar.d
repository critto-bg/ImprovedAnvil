BEGIN ~IABEGGAR~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1300
  IF ~~ THEN REPLY @1301 GOTO 1
END

IF ~Global("BeggarTalk","AR2000",0)~ THEN BEGIN 1
  SAY @1302
  IF ~~ THEN REPLY @1303 GOTO 2
  IF ~~ THEN REPLY @1304 GOTO 3
  IF ~~ THEN REPLY @1305 GOTO 4
END

IF ~Global("BeggarTalk","AR2000",0)~ THEN BEGIN 2
  SAY @1306
  IF ~~ THEN REPLY @1304 GOTO 3
  IF ~~ THEN REPLY @1305 GOTO 4
END

IF ~Global("BeggarTalk","AR2000",0)~ THEN BEGIN 3
  SAY @1307
  IF ~~ THEN REPLY @1303 GOTO 2
  IF ~~ THEN REPLY @1305 GOTO 4
END

IF ~Global("BeggarTalk","AR2000",0)~ THEN BEGIN 4
  SAY @1308
  IF ~~ THEN REPLY @1309 DO ~SetGlobal("BeggarTalk","AR2000",1)~ GOTO 5
  IF ~PartyGoldGT(999)~ THEN REPLY @1310 GOTO 7
END

IF ~Global("BeggarTalk","AR2000",1)~ THEN BEGIN 5
  SAY @1311
  IF ~~ THEN DO ~SetGlobal("BeggarTalk","AR2000",2)~ EXIT
END

IF ~Global("BeggarTalk","AR2000",2)~ THEN BEGIN 6
  SAY @1313
  IF ~~ THEN REPLY @1314 EXIT
  IF ~PartyGoldGT(999)~ THEN REPLY @1315 GOTO 7
END

IF ~~THEN BEGIN 7
  SAY @1312
  IF ~~ THEN DO ~TakePartyGold(1000) DestroyGold(1000)GiveItemCreate("S!misc19",[PC],1,0,0) SetGlobal("GypsyJob","GLOBAL",4) EscapeArea()~ EXIT
END