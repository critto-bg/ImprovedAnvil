BEGIN ~IAGYPSY~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1200
  IF ~~ THEN REPLY @1201 GOTO 1
  IF ~~ THEN REPLY @1202 GOTO 2
END

IF ~Global("GypsyJob","GLOBAL",0) Global("GypsyTalk","AR0411",0)~ THEN BEGIN 1
  SAY @1203
  IF ~~ THEN DO ~SetGlobal("GypsyTalk","AR0411",1)~ EXIT
END

IF ~Global("GypsyJob","GLOBAL",0) Global("GypsyTalk","AR0411",0)~ THEN BEGIN 2
  SAY @1204
  IF ~~ THEN DO ~SetGlobal("GypsyJob","GLOBAL",1)~ EXIT
END

IF ~Global("GypsyJob","GLOBAL",0) Global("GypsyTalk","AR0411",1)~ THEN BEGIN 3
  SAY @1205
  IF ~~ THEN REPLY @1206 DO ~SetGlobal("GypsyTalk","AR0411",0)~ GOTO 2
  IF ~~ THEN REPLY @1207 EXIT
END

IF ~Global("GypsyJob","GLOBAL",1)~ THEN BEGIN 4
  SAY @1208
  IF ~~ THEN EXIT
END

IF ~Global("GypsyJob","GLOBAL",2) Global("GypsyTalk","AR0411",0)~ THEN BEGIN 5
  SAY @1209
  IF ~~ THEN REPLY @1210 DO ~SetGlobal("GypsyTalk","AR0411",2)~ GOTO 6
  IF ~~ THEN REPLY @1211 DO ~SetGlobal("GypsyTalk","AR0411",3)~ GOTO 7
END

IF ~Global("GypsyJob","GLOBAL",2) Global("GypsyTalk","AR0411",2)~ THEN BEGIN 6
  SAY @1212
  IF ~~ THEN DO ~SetGlobal("GypsyTalk","AR0411",4)~ EXIT
END

IF ~Global("GypsyJob","GLOBAL",2) Global("GypsyTalk","AR0411",3)~ THEN BEGIN 7
  SAY @1213
  IF ~~ THEN DO ~SetGlobal("GypsyTalk","AR0411",4)~ EXIT
END

IF ~Global("GypsyJob","GLOBAL",2) Global("GypsyTalk","AR0411",4)~ THEN BEGIN 8
  SAY @1205
  IF ~~ THEN REPLY @1214 DO ~SetGlobal("GypsyTalk","AR0411",5)~ GOTO 9
  IF ~~ THEN REPLY @1207 EXIT
END

IF ~Global("GypsyJob","GLOBAL",2) Global("GypsyTalk","AR0411",5)~ THEN BEGIN 9
  SAY @1215
  IF ~~ THEN REPLY @1216 GOTO 10
END

IF ~Global("GypsyJob","GLOBAL",2) Global("GypsyTalk","AR0411",5)~ THEN BEGIN 10
  SAY @1217
  IF ~~ THEN DO ~SetGlobal("GypsyJob","GLOBAL",3)~ EXIT
END

IF ~Global("GypsyJob","GLOBAL",3)~ THEN BEGIN 11
  SAY @1218
  IF ~~ THEN EXIT
END

IF ~GlobalGT("GypsyJob","GLOBAL",3) GlobalLT("GypsyJob","GLOBAL",6)~ THEN BEGIN 12
  SAY @1219
  IF ~~ THEN EXIT
END

IF ~Global("GypsyJob","GLOBAL",6)~ THEN BEGIN 13
  SAY @1220
  IF ~~ THEN REPLY @1214 GOTO 15
  IF ~~ THEN REPLY @1221 GOTO 14
END

IF ~Global("GypsyJob","GLOBAL",6)~ THEN BEGIN 14
  SAY @1222
  IF ~~ THEN GOTO 15
END

IF ~Global("GypsyJob","GLOBAL",6)~ THEN BEGIN 15
  SAY @1223
  IF ~~ THEN DO ~SetGlobal("GypsyJob","GLOBAL",7)~ EXIT
END

IF ~Global("GypsyJob","GLOBAL",7)~ THEN BEGIN 16
  SAY @1224
  IF ~~ THEN REPLY @1225 EXIT
END

IF ~Global("GypsyJob","GLOBAL",8)~ THEN BEGIN 17
  SAY @1226
  IF ~~ THEN GOTO 18
END

IF ~Global("GypsyJob","GLOBAL",8)~ THEN BEGIN 18
  SAY @1227
  IF ~~ THEN DO ~SetGlobal("GypsyJob","GLOBAL",9) GiveItemCreate("S!scrl06",[PC],1,0,0) GiveItemCreate("scrla4",[PC],1,0,0) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END