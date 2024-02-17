APPEND ~CECHALLE~
  IF WEIGHT #2 ~OR(2) Global("IADruidPlot","GLOBAL",1) Global("IADruidPlot","GLOBAL",15)~
    THEN BEGIN 17
    SAY @5320
    IF ~~ THEN EXIT
  END

  IF WEIGHT #3 ~OR(2) Global("IADruidPlot","GLOBAL",2) Global("IADruidPlot","GLOBAL",3) Global("IACluesFirstTalk","LOCALS",0)~
    THEN BEGIN 18
    SAY @5380
    IF ~~ THEN REPLY @5381 DO ~SetGlobal("IACluesFirstTalk","LOCALS",1)~ GOTO 20
  END

  IF WEIGHT #4 ~OR(2) Global("IADruidPlot","GLOBAL",2) Global("IADruidPlot","GLOBAL",3) Global("IACluesFirstTalk","LOCALS",1)~
    THEN BEGIN 19
    SAY @5382
    IF ~~ THEN REPLY @5383 GOTO 20
  END

  IF ~~ THEN BEGIN 20
    SAY @5384

    // first clue
    IF ~GlobalGT("IADruidAnathNote","GLOBAL",0) GlobalLT("IADruidAnathNote","GLOBAL",3)~ THEN
      REPLY @5386
      DO ~SetGlobal("IADruidAnathNote","GLOBAL",3)~
      GOTO 21

    // second clue
    IF ~GlobalGT("IADruidMerellaTalk","GLOBAL",0) GlobalLT("IADruidMerellaTalk","GLOBAL",3)~ THEN
      REPLY @5388
      DO ~SetGlobal("IADruidMerellaTalk","GLOBAL",3)~
      GOTO 22

    // third clue
    IF ~GlobalGT("IADruidGrancorNote","GLOBAL",0) GlobalLT("IADruidGrancorNote","GLOBAL",3)~ THEN
      REPLY @5390
      DO ~SetGlobal("IADruidGrancorNote","GLOBAL",3)~
      GOTO 23

    // no clues anymore, still looking for more
    IF ~OR(3) GlobalLT("IADruidAnathNote","GLOBAL",3) GlobalLT("IADruidMerellaTalk","GLOBAL",3) GlobalLT("IADruidGrancorNote","GLOBAL",3)~ THEN REPLY @5392 GOTO 24

    // no clues anymore, all clues found
    IF ~Global("IADruidPlot","GLOBAL",3) Global("IADruidAnathNote","GLOBAL",3) Global("IADruidMerellaTalk","GLOBAL",3) Global("IADruidGrancorNote","GLOBAL",3)~ THEN REPLY @5392 GOTO 25
  END

  IF ~~ THEN BEGIN 21
    SAY @5387
    IF ~~ THEN REPLY @5385 GOTO 20
  END

  IF ~~ THEN BEGIN 22
    SAY @5389
    IF ~~ THEN REPLY @5385 GOTO 20
  END

  IF ~~ THEN BEGIN 23
    SAY @5391
    IF ~~ THEN REPLY @5385 GOTO 20
  END

  IF ~~ THEN BEGIN 24
    SAY @5393
    IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN 25
    SAY @5394
    IF ~~ THEN GOTO 26
  END

  IF ~~ THEN BEGIN 26
    SAY @5395
    IF ~~ THEN GOTO 27
  END

  IF ~~ THEN BEGIN 27
    SAY @5396
    IF ~~ THEN REPLY @5397 GOTO 28
  END

  IF ~~ THEN BEGIN 28
    SAY @5398
    IF ~~ THEN DO ~SetGlobal("IADruidPlot","GLOBAL",4) AddJournalEntry(@5515,QUEST)~
    EXIT
  END

  IF WEIGHT #5 ~Global("IADruidPlot","GLOBAL",4)~
    THEN BEGIN 29
    SAY @5399
    IF ~~ THEN EXIT
  END

  IF WEIGHT #6 ~GlobalGT("IADruidPlot","GLOBAL",4) GlobalLT("IADruidPlot","GLOBAL",9)~
    THEN BEGIN 30
    SAY @5460
    IF ~~ THEN GOTO 31
  END

  IF ~~ THEN BEGIN 31
    SAY @5461
    IF ~~ THEN REPLY @5462 GOTO 32
  END

  IF ~~ THEN BEGIN 32
    SAY @5463
    IF ~~ THEN REPLY @5464 GOTO 33
  END

  IF ~~ THEN BEGIN 33
    SAY @5465
    IF ~~ THEN EXIT
  END

  IF WEIGHT #7 ~Global("IADruidPlot","GLOBAL",9) Global("IAAmbushFirstTalk","GLOBAL",0)~
    THEN BEGIN 34
    SAY @5740
    IF ~~ THEN REPLY @5741 GOTO 35
  END

  IF ~~
    THEN BEGIN 35
    SAY @5742
    IF ~~ THEN REPLY @5743 GOTO 36
  END

  IF ~~
    THEN BEGIN 36
    SAY @5744
    IF ~~ THEN REPLY @5745 GOTO 37
  END

  IF ~~
    THEN BEGIN 37
    SAY @5746
    IF ~~ THEN REPLY @5747 GOTO 38
  END

  IF ~~
    THEN BEGIN 38
    SAY @5748
    IF ~~ THEN DO ~SetGlobal("IAAmbushFirstTalk","GLOBAL",1) SetGlobalTimer("IADruidMeetDramTimer","GLOBAL",THREE_DAYS)~
    EXIT
  END

  IF WEIGHT #8 ~GlobalGT("IADruidPlot","GLOBAL",8) GlobalLT("IADruidPlot","GLOBAL",15) Global("IAAmbushFirstTalk","GLOBAL",1)~
    THEN BEGIN 39
    SAY @5748
    IF ~~ THEN EXIT
  END

  IF WEIGHT #9 ~GlobalGT("IADruidPlot","GLOBAL",15) Global("IAFailedFirstTalk","LOCALS",0)~
    THEN BEGIN 40
    SAY @5750
    IF ~~ THEN REPLY @5751 GOTO 41
  END

  IF ~~
    THEN BEGIN 41
    SAY @5752
    IF ~~ THEN REPLY @5753 GOTO 42
  END

  IF ~~
    THEN BEGIN 42
    SAY @5754
    IF ~~ THEN REPLY @5755 GOTO 43
  END

  IF ~~
    THEN BEGIN 43
    SAY @5756
    IF ~~ THEN REPLY @5757 DO ~SetGlobal("IAFailedFirstTalk","LOCALS",1)~
    EXIT
  END

  IF WEIGHT #10 ~GlobalGT("IADruidPlot","GLOBAL",15) Global("IAFailedFirstTalk","LOCALS",1)~
    THEN BEGIN 44
    SAY @5756
    IF ~~ THEN EXIT
  END
END