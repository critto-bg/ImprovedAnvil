BEGIN ~IAMORID2~

IF ~Global("Iamoridinit","AR0411",0)~ THEN BEGIN 0
  SAY @4520
  IF ~~ THEN GOTO 1
END

IF ~Global("Iamoridinit","AR0411",0)~ THEN BEGIN 1
  SAY @4521
  IF ~~ THEN GOTO 2
END

IF ~Global("Iamoridinit","AR0411",0)~ THEN BEGIN 2
  SAY @4522
  IF ~~ THEN GOTO 3
END

IF ~Global("Iamoridinit","AR0411",0)~ THEN BEGIN 3
  SAY @4523
  IF ~~ THEN GOTO 4
END

IF ~Global("Iamoridinit","AR0411",0)~ THEN BEGIN 4
  SAY @4524
  IF ~~ THEN GOTO 5
END

IF ~Global("Iamoridinit","AR0411",0)~ THEN BEGIN 5
  SAY @4525
  IF ~~ THEN DO ~SetGlobal("Iamoridinit","AR0411",1)~ EXIT
END

IF ~Global("Iamoridinit","AR0411",1) GlobalTimerNotExpired("Iamoridworks","GLOBAL")~ THEN BEGIN 6
  SAY @4532
  IF ~~ THEN EXIT
END

IF ~Global("Iamoridinit","AR0411",1) Global("Iatimemftalked","AR0411",1)~ THEN BEGIN 7
  SAY @4526
  IF ~~ THEN REPLY @4548 GOTO 8
END

IF ~Global("Iamoridinit","AR0411",1) Global("Iatimemftalked","AR0411",1)~ THEN BEGIN 8
  SAY @4549
  IF ~~ THEN DO ~SetGlobal("Iatimemfspawn","AR0411",2) SetGlobal("Iatimemftalked","AR0411",2)~ EXIT
END

IF ~Global("Iamoridinit","AR0411",1) Global("Iatimemactive","AR0411",1) GlobalTimerExpired("Iamoridworks","GLOBAL")~ THEN BEGIN 9
  SAY @4540
  IF ~~ THEN REPLY @4541 DO ~SetGlobal("Iatimemactive","AR0411",2)~ EXIT
  IF ~~ THEN REPLY @4542 DO ~SetGlobal("Iatimemactive","AR0411",2)~ EXIT
END

IF ~Global("Iamoridinit","AR0411",1) Global("Ianewspell","AR0411",1) GlobalTimerExpired("Iamoridworks","GLOBAL")~ THEN BEGIN 10
  SAY @4543
  IF ~~ THEN REPLY @4544 GOTO 11
END

IF ~Global("Iamoridinit","AR0411",1) Global("Ianewspell","AR0411",1) GlobalTimerExpired("Iamoridworks","GLOBAL")~ THEN BEGIN 11
  SAY @4545
  IF ~~ THEN DO ~SetGlobal("Ianewspell","AR0411",2) SetGlobal("Iascrollmade","GLOBAL",1) GiveItemCreate("S!scrl08",[PC],0,0,0)~ EXIT
END

IF ~Global("Iamoridinit","AR0411",1) Global("Iabrewpotn33","AR0411",1) GlobalTimerExpired("Iamoridworks","GLOBAL")~ THEN BEGIN 12
  SAY @4546
  IF ~~ THEN DO ~SetGlobal("Iabrewpotn33","AR0411",2) GiveItemCreate("potn33",[PC],5,0,0)~ EXIT
END

IF ~Global("Iamoridinit","AR0411",1) Global("Iapotnbatch","AR0411",1) GlobalTimerExpired("Iamoridworks","GLOBAL")~ THEN BEGIN 13
  SAY @4547
  IF ~~ THEN DO ~SetGlobal("Iapotnbatch","AR0411",2) GiveItemCreate("potn55",[PC],5,0,0) GiveItemCreate("potn37",[PC],5,0,0) GiveItemCreate("potn34",[PC],2,0,0) GiveItemCreate("potn35",[PC],2,0,0)~ EXIT
END

IF ~Global("Iamoridinit","AR0411",1) Global("Iawoodenkey","AR0411",1) GlobalTimerExpired("Iamoridworks","GLOBAL")~ THEN BEGIN 14
  SAY @4559
  IF ~~ THEN DO ~SetGlobal("Iawoodenkey","AR0411",2) GiveItemCreate("S!keyw",[PC],0,0,0) GiveItemCreate("S!misc49",[PC],0,0,0)~ EXIT
END

IF ~Global("Iamoridinit","AR0411",1) Global("Iagoldenkey","AR0411",1) GlobalTimerExpired("Iamoridworks","GLOBAL")~ THEN BEGIN 15
  SAY @4560
  IF ~~ THEN DO ~SetGlobal("Iagoldenkey","AR0411",2) GiveItemCreate("S!keyg",[PC],0,0,0)~ EXIT
END

IF ~Global("Iamoridinit","AR0411",1) Global("Iarubykey","AR0411",1) GlobalTimerExpired("Iamoridworks","GLOBAL")~ THEN BEGIN 16
  SAY @4561
  IF ~~ THEN DO ~SetGlobal("Iarubykey","AR0411",2) GiveItemCreate("S!keyr",[PC],0,0,0) GiveItemCreate("S!helm06",[PC],0,0,0)~ EXIT
END

IF ~Global("Iamoridinit","AR0411",1) Global("Iaamberkey","AR0411",1) GlobalTimerExpired("Iamoridworks","GLOBAL")~ THEN BEGIN 17
  SAY @4562
  IF ~~ THEN DO ~SetGlobal("Iaamberkey","AR0411",2) GiveItemCreate("S!keya",[PC],0,0,0)~ EXIT
END

IF ~Global("Iamoridinit","AR0411",1) Global("Iabonekey","AR0411",1) GlobalTimerExpired("Iamoridworks","GLOBAL")~ THEN BEGIN 29
  SAY @4565
  IF ~~ THEN DO ~SetGlobal("Iabonekey","AR0411",2) GiveItemCreate("S!keyb",[PC],0,0,0)~ EXIT
END

IF ~GlobalTimerExpired("Iamoridworks","GLOBAL")
Global("Iamoridinit","AR0411",1)
Global("Iatimemactive","AR0411",2)
Global("Iatimemfspawn","AR0411",2)
Global("Iabrewpotn33","AR0411",2)
Global("Iapotnbatch","AR0411",2)
Global("Iawoodenkey","AR0411",2)
Global("Iagoldenkey","AR0411",2)
Global("Iarubykey","AR0411",2)
Global("Iaamberkey","AR0411",2)
Global("Iabonekey","AR0411",2)
~ THEN BEGIN 18
  SAY @4550
  IF ~~ THEN EXIT
END

IF ~Global("Iamoridinit","AR0411",1)~ THEN BEGIN 19
  SAY @4526
  IF ~Global("Iatimemactive","AR0411",0)~ THEN REPLY @4527 GOTO 20
  IF ~Global("Ianewspell","AR0411",0)~ THEN REPLY @4528 GOTO 21
  IF ~Global("Iabrewpotn33","AR0411",0)~ THEN REPLY @4529 GOTO 22
  IF ~Global("Iapotnbatch","AR0411",0)~ THEN REPLY @4530 GOTO 23
  IF ~Global("Iatimemfspawn","AR0411",2) Global("Iawoodenkey","AR0411",0)~ THEN REPLY @4551 GOTO 24
  IF ~Global("Iatimemfspawn","AR0411",2) Global("Iagoldenkey","AR0411",0)~ THEN REPLY @4552 GOTO 25
  IF ~Global("Iatimemfspawn","AR0411",2) Global("Iarubykey","AR0411",0)~ THEN REPLY @4553 GOTO 26
  IF ~Global("Iatimemfspawn","AR0411",2) Global("Iaamberkey","AR0411",0)~ THEN REPLY @4554 GOTO 27
  IF ~Global("Iatimemfspawn","AR0411",2) Global("Iabonekey","AR0411",0)~ THEN REPLY @4563 GOTO 30
  IF ~~ THEN REPLY @4531 EXIT
END

IF ~Global("Iamoridinit","AR0411",1)~ THEN BEGIN 20
  SAY @4533
  IF ~~ THEN REPLY @4534 EXIT
  IF ~PartyHasItem("S!scrl10") PartyHasItem("S!misc06") NumItemsPartyGT("misc42",3) NumItemsPartyGT("potn14",5)~
      THEN REPLY @4535
      DO ~TakePartyItemNum("S!scrl10",1)   DestroyItem("S!scrl10")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("potn14",1)   DestroyItem("potn14")
          TakePartyItemNum("potn14",1)   DestroyItem("potn14")
          TakePartyItemNum("potn14",1)   DestroyItem("potn14")
          TakePartyItemNum("potn14",1)   DestroyItem("potn14")
          TakePartyItemNum("potn14",1)   DestroyItem("potn14")
          TakePartyItemNum("potn14",1)   DestroyItem("potn14")
          SetGlobal("Iatimemactive","AR0411",1)~ GOTO 28
END

IF ~Global("Iatimemactive","AR0411",1)~ THEN BEGIN 28
  SAY @4536
  IF ~~ THEN DO ~SetGlobalTimer("Iamoridworks","GLOBAL",THREE_DAYS)~ EXIT
END

IF ~Global("Iamoridinit","AR0411",1)~ THEN BEGIN 21
  SAY @4537
  IF ~~ THEN REPLY @4534 EXIT
  IF ~Dead("TELWRAI") Global("Iabook01found","GLOBAL",1) PartyHasItem("S!book01") PartyHasItem("S!misc06")~
      THEN REPLY @4535
      DO ~TakePartyItemNum("S!book01",1)   DestroyItem("S!book01")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          SetGlobal("Ianewspell","AR0411",1)~ GOTO 28
END

IF ~Global("Iamoridinit","AR0411",1)~ THEN BEGIN 22
  SAY @4538
  IF ~~ THEN REPLY @4534 EXIT
  IF ~Global("Iamisc50found","GLOBAL",1) Dead("c6bodhi") NumItemsPartyGT("misc23",4) NumItemsPartyGT("scrl59",4) PartyHasItem("S!misc50") PartyHasItem("S!misc52")
      PartyGoldGT(29999)~
    THEN REPLY @4535
    DO ~TakePartyGold(30000)      DestroyGold(30000)
        TakePartyItemNum("misc23",1)   DestroyItem("misc23")
        TakePartyItemNum("misc23",1)   DestroyItem("misc23")
        TakePartyItemNum("misc23",1)   DestroyItem("misc23")
        TakePartyItemNum("misc23",1)   DestroyItem("misc23")
        TakePartyItemNum("misc23",1)   DestroyItem("misc23")
        TakePartyItemNum("scrl59",1)   DestroyItem("scrl59")
        TakePartyItemNum("scrl59",1)   DestroyItem("scrl59")
        TakePartyItemNum("scrl59",1)   DestroyItem("scrl59")
        TakePartyItemNum("scrl59",1)   DestroyItem("scrl59")
        TakePartyItemNum("scrl59",1)   DestroyItem("scrl59")
        TakePartyItemNum("S!misc50",1)   DestroyItem("S!misc50")
        TakePartyItemNum("S!misc52",1)   DestroyItem("S!misc52")
        SetGlobal("Iabrewpotn33","AR0411",1)~ GOTO 28
END

IF ~Global("Iamoridinit","AR0411",1)~ THEN BEGIN 23
  SAY @4539
  IF ~~ THEN REPLY @4534 EXIT
  IF ~PartyGoldGT(4999)~
    THEN REPLY @4535
    DO ~TakePartyGold(5000)      DestroyGold(5000)
        SetGlobal("Iapotnbatch","AR0411",1)~ GOTO 28
END

IF ~Global("Iamoridinit","AR0411",1)~ THEN BEGIN 24
  SAY @4555
  IF ~~ THEN REPLY @4534 EXIT
  IF ~Dead("c6bodhi") Global("Iamisc49found","GLOBAL",1) PartyHasItem("S!misc49")~
      THEN REPLY @4535
      DO ~TakePartyItemNum("S!misc49",1)   DestroyItem("S!misc49")
          SetGlobal("Iawoodenkey","AR0411",1)~ GOTO 28
END

IF ~Global("Iamoridinit","AR0411",1)~ THEN BEGIN 25
  SAY @4556
  IF ~~ THEN REPLY @4534 EXIT
  IF ~PartyGoldGT(999)~
    THEN REPLY @4535
    DO ~TakePartyGold(1000)      DestroyGold(1000)
        SetGlobal("Iagoldenkey","AR0411",1)~ GOTO 28
END

IF ~Global("Iamoridinit","AR0411",1)~ THEN BEGIN 26
  SAY @4557
  IF ~~ THEN REPLY @4534 EXIT
  IF ~GlobalGT("Iasquirjob","GLOBAL",8) NumItemsPartyGT("misc20",2) PartyHasItem("S!helm06")~
    THEN REPLY @4535
    DO ~TakePartyItemNum("misc20",1)   DestroyItem("misc20")
        TakePartyItemNum("misc20",1)   DestroyItem("misc20")
        TakePartyItemNum("misc20",1)   DestroyItem("misc20")
        TakePartyItemNum("S!helm06",1)   DestroyItem("S!helm06")
        SetGlobal("Iarubykey","AR0411",1)~ GOTO 28
END

IF ~Global("Iamoridinit","AR0411",1)~ THEN BEGIN 27
  SAY @4558
  IF ~~ THEN REPLY @4534 EXIT
  IF ~PartyHasItem("S!misc27")~
    THEN REPLY @4535
    DO ~TakePartyItemNum("S!misc27",1)   DestroyItem("S!misc27")
        SetGlobal("Iaamberkey","AR0411",1)~ GOTO 28
END

IF ~Global("Iamoridinit","AR0411",1)~ THEN BEGIN 30
  SAY @4564
  IF ~~ THEN REPLY @4534 EXIT
  IF ~PartyHasItem("S!misc51")~
    THEN REPLY @4535
    DO ~TakePartyItemNum("S!misc51",1)   DestroyItem("S!misc51")
        SetGlobal("Iabonekey","AR0411",1)~ GOTO 28
END