BEGIN ~IATIMEMA~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @4600
  IF ~~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @4601
  IF ~!PartyHasItem("S!keyw") Global("Iakeywused","AR0411",0)~ THEN REPLY @4602 GOTO 2
  IF ~PartyHasItem("S!keyw") Global("Iakeywused","AR0411",0)~ THEN REPLY @4602 GOTO 4
  IF ~!PartyHasItem("S!keyg") Global("Iakeygused","AR0411",0)~ THEN REPLY @4603 GOTO 2
  IF ~PartyHasItem("S!keyg") Global("Iakeygused","AR0411",0)~ THEN REPLY @4603 GOTO 5
  IF ~!PartyHasItem("S!keyr") Global("Iakeyrused","AR0411",0)~ THEN REPLY @4604 GOTO 2
  IF ~PartyHasItem("S!keyr") Global("Iakeyrused","AR0411",0)~ THEN REPLY @4604 GOTO 6
  IF ~!PartyHasItem("S!keya") Global("Iakeyaused","AR0411",0)~ THEN REPLY @4605 GOTO 2
  IF ~PartyHasItem("S!keya") Global("Iakeyaused","AR0411",0) Global("Iakeyrused","AR0411",1)~ THEN REPLY @4605 GOTO 7
  IF ~PartyHasItem("S!keya") Global("Iakeyaused","AR0411",0) Global("Iakeyrused","AR0411",0)~ THEN REPLY @4605 GOTO 8
  IF ~!PartyHasItem("S!keyb") Global("Iakeybused","AR0411",0)~ THEN REPLY @4614 GOTO 2
  IF ~PartyHasItem("S!keyb") Global("Iakeybused","AR0411",0) Global("Iakeyaused","AR0411",1)~ THEN REPLY @4614 GOTO 9
  IF ~PartyHasItem("S!keyb") Global("Iakeybused","AR0411",0) Global("Iakeyaused","AR0411",0)~ THEN REPLY @4614 GOTO 10
  IF ~~ THEN REPLY @4606 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @4607
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 3
  SAY @4608
  IF ~~ THEN DO ~SetGlobal("Iatimemaspawn","AR0411",0) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @4609
  IF ~~ THEN DO ~SetGlobal("Iakeywused","AR0411",1) TakePartyItemNum("S!keyw",1) DestroyItem("S!keyw") SetGlobal("Iatimemaspawn","AR0411",0) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @4610
  IF ~~ THEN DO ~SetGlobal("Iakeygused","AR0411",1) TakePartyItemNum("S!keyg",1) DestroyItem("S!keyg") ActionOverride(LastTalkedToBy,JumpToPoint([1466.445])) SetGlobal("Iatimemaspawn","AR0411",0) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @4611
  IF ~~ THEN DO ~SetGlobal("Iakeyrused","AR0411",1) TakePartyItemNum("S!keyr",1) DestroyItem("S!keyr") SetGlobal("Iatimemaspawn","AR0411",0) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @4612
  IF ~~ THEN DO ~SetGlobal("Iakeyaused","AR0411",1) TakePartyItemNum("S!keya",1) DestroyItem("S!keya") SetGlobal("Iatimemaspawn","AR0411",0) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @4613
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 9
  SAY @4615
  IF ~~ THEN DO ~SetGlobal("Iakeybused","AR0411",1) TakePartyItemNum("S!keyb",1) DestroyItem("S!keyb") SetGlobal("Iatimemaspawn","AR0411",0) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @4616
  IF ~~ THEN GOTO 1
END