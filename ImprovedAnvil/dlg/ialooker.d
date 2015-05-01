BEGIN ~IALOOKER~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @3750
  IF ~~ THEN GOTO 1
END

IF ~Global("Lookertalk","AR0511",0)~ THEN BEGIN 1
  SAY @3751
  IF ~~ THEN REPLY @3752 GOTO 2
END

IF ~Global("Lookertalk","AR0511",0)~ THEN BEGIN 2
  SAY @3753
  IF ~~ THEN REPLY @3754 GOTO 3
END

IF ~Global("Lookertalk","AR0511",0)~ THEN BEGIN 3
  SAY @3755
  IF ~~ THEN REPLY @3756 GOTO 4
END

IF ~Global("Lookertalk","AR0511",0)~ THEN BEGIN 4
  SAY @3757
  IF ~~ THEN DO ~SetGlobal("Lookertalk","AR0511",1) GiveItemCreate("S!misc37",Player1,1,1,1)~ EXIT
END

IF ~Global("Lookertalk","AR0511",1)~ THEN BEGIN 5
  SAY @3758
  IF ~PartyHasItem("S!ring02") Global("Iakeepdagg21","GLOBAL",1)~ THEN REPLY @3760 DO ~TakePartyItemNum("S!ring02",1) DestroyItem("S!ring02") SetGlobal("Iadivinertake","GLOBAL",1)~ GOTO 7
  IF ~PartyHasItem("S!plat05") Global("Iagrplatforged","GLOBAL",1)~ THEN REPLY @3761 DO ~TakePartyItemNum("S!plat05",1) DestroyItem("S!plat05") SetGlobal("Iadivinertake","GLOBAL",2)~ GOTO 7
  IF ~PartyHasItem("S!plat06") Global("Iaplat06forged","GLOBAL",1)~ THEN REPLY @3762 DO ~TakePartyItemNum("S!plat06",1) DestroyItem("S!plat06") SetGlobal("Iadivinertake","GLOBAL",3)~ GOTO 7
  IF ~PartyHasItem("S!sw03") Global("Iasw03forged","GLOBAL",1)~ THEN REPLY @3763 DO ~TakePartyItemNum("S!sw03",1) DestroyItem("S!sw03") SetGlobal("Iadivinertake","GLOBAL",4)~ GOTO 7
  IF ~PartyHasItem("S!sw06") Global("Iahespforged","GLOBAL",1)~ THEN REPLY @3764 DO ~TakePartyItemNum("S!sw06",1) DestroyItem("S!sw06") SetGlobal("Iadivinertake","GLOBAL",5)~ GOTO 7
  IF ~PartyHasItem("S!hamm01") GlobalGT("Iaspidehdead","GLOBAL",0)~ THEN REPLY @3765 DO ~TakePartyItemNum("S!hamm01",1) DestroyItem("S!hamm01") SetGlobal("Iadivinertake","GLOBAL",6)~ GOTO 7
  IF ~PartyHasItem("S!ring04") Global("Iaring04forged","GLOBAL",1) Global("Ianoefbottle","GLOBAL",0) Global("Iaefree2dead","GLOBAL",1)~ THEN REPLY @3766 DO ~TakePartyItemNum("S!ring04",1) DestroyItem("S!ring04") SetGlobal("Iadivinertake","GLOBAL",7)~ GOTO 7
  IF ~PartyHasItem("S!shld02") Global("Iasheltforged","GLOBAL",1)~ THEN REPLY @3767 DO ~TakePartyItemNum("S!shld02",1) DestroyItem("S!shld02") SetGlobal("Iadivinertake","GLOBAL",8)~ GOTO 7
  IF ~PartyHasItem("S!sw16") Global("Iattforged","GLOBAL",1)~ THEN REPLY @3768 DO ~TakePartyItemNum("S!sw16",1) DestroyItem("S!sw16") SetGlobal("Iadivinertake","GLOBAL",9)~ GOTO 7
  IF ~~ THEN REPLY @3759 GOTO 6
END

IF ~Global("Lookertalk","AR0511",1)~ THEN BEGIN 6
  SAY @3769
  IF ~~ THEN EXIT
END

IF ~Global("Lookertalk","AR0511",1)~ THEN BEGIN 7
  SAY @3770
  IF ~~ THEN DO ~SetGlobal("Iaswanmejob","GLOBAL",2) DestroySelf()~ EXIT
END