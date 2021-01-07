APPEND ~uhrang01~
  IF ~NumTimesTalkedTo(0) OR(2) Class(Player1,DRUID_ALL) Class(Player1,SHAMAN)~
    THEN BEGIN 1
    SAY @5360
    IF ~~ THEN REPLY @5361 GOTO 2
  END

  IF ~~ THEN BEGIN 2
    SAY @5362
    IF ~~ THEN REPLY @5363 GOTO 3
  END

  IF ~~ THEN BEGIN 3
    SAY @5364
    IF ~GlobalGT("IADruidPlot","GLOBAL",0)~ THEN REPLY @5365 GOTO 4
    IF ~Global("IADruidPlot","GLOBAL",0)~ THEN REPLY @5366 GOTO 4
  END

  IF ~~ THEN BEGIN 4
    SAY @5367
    IF ~~ THEN REPLY @5368 GOTO 5
  END

  IF ~~ THEN BEGIN 5
    SAY @5369
    IF ~~ THEN REPLY @5370 GOTO 6
  END

  IF ~~ THEN BEGIN 6
    SAY @5371
    IF ~~ THEN DO ~SetGlobal("IADruidMerellaTalk","GLOBAL",1) Kill(Myself)~
    EXIT
  END
END
