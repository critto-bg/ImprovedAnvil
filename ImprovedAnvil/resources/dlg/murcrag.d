EXTEND_BOTTOM ~MURCRAG~ 0
  IF ~Global("Iapennyroyal","GLOBAL",1)~ THEN REPLY #25959 GOTO 14
END

APPEND ~MURCRAG~
  IF ~~ THEN BEGIN 14
    SAY #10889
    IF ~~ THEN REPLY #57002 GOTO 1
    IF ~PartyGoldGT(999)~ THEN REPLY #33410 DO ~GiveItemCreate("S!misc58",[PC],1,0,0)~ GOTO 15
  END

  IF ~~ THEN BEGIN 15
    SAY #30884
    IF ~~ THEN DO ~SetGlobal("Iapennyroyal","GLOBAL",2)~ EXIT
  END
END