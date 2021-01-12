EXTEND_TOP ~SHOP03~ 0 #2
  IF ~~ THEN REPLY @5100 GOTO 21
END

EXTEND_TOP ~SHOP03~ 8 #2
  IF ~~ THEN REPLY @5102 GOTO 22
END

APPEND ~SHOP03~
  IF ~~ THEN BEGIN 21
    SAY @5101
    IF ~~ THEN REPLY @5102 GOTO 22
  END

  IF ~~ THEN BEGIN 22
    SAY @5103
    IF ~~ THEN REPLY @5104 GOTO 23
    IF ~PartyHasItem("s!misc61") Global("Iabrac02forged","GLOBAL",0)~ THEN REPLY @5106 GOTO misc61
    IF ~PartyHasItem("ohhcloak") Global("Iahexxat01forged","GLOBAL",0)~ THEN REPLY @5110 GOTO hexxat1
    IF ~PartyHasItem("s!clck08") Global("Iahexxat02orged","GLOBAL",0)~ THEN REPLY @5112 GOTO hexxat2
    IF ~PartyHasItem("s!chan01") Global("Iabloodforged","GLOBAL",0)~ THEN REPLY @5114 GOTO blood
    IF ~PartyHasItem("s!misc74") Global("Iahideforged","GLOBAL",0)~ THEN REPLY @5116 GOTO yetihide
  END

  IF ~~ THEN BEGIN 23
    SAY @5105
    COPY_TRANS SHOP03 8
  END

  IF ~~ THEN BEGIN misc61
    SAY @5107
    IF ~~ THEN REPLY @5108 GOTO 22
    IF ~PartyHasItem("s!misc61") PartyHasItem("s!misc12") PartyGoldGT(9999) Global("Iabrac02forged","GLOBAL",0)~ THEN
      REPLY @5109
      DO ~SetGlobal("Iabrac02forged","GLOBAL",1)
          TakePartyGold(10000) DestroyGold(10000)
          TakePartyItemNum("s!misc61",1)   DestroyItem("s!misc61")
          TakePartyItemNum("s!misc12",1)   DestroyItem("s!misc12")
          GiveItemCreate("S!BRAC02",Player1,1,1,1)
          CreateVisualEffectObject("spcrtwpn","maheer")~
      EXIT
  END

  IF ~~ THEN BEGIN hexxat1
    SAY @5111
    IF ~~ THEN REPLY @5108 GOTO 22
    IF ~PartyHasItem("ohhcloak") PartyGoldGT(29999) PartyHasItem("clck01") PartyHasItem("s!clck10")~
      THEN REPLY @5109
      DO ~SetGlobal("Iahexxat01forged","GLOBAL",1)
          TakePartyGold(30000)      DestroyGold(30000)
          TakePartyItemNum("ohhcloak",1)   DestroyItem("ohhcloak")
          TakePartyItemNum("clck01",1)   DestroyItem("clck01")
          TakePartyItemNum("s!clck10",1)   DestroyItem("s!clck10")
          GiveItemCreate("s!clck08",Player1,1,1,1)
          CreateVisualEffectObject("spcrtwpn","maheer")~
      EXIT
  END

  IF ~~ THEN BEGIN hexxat2
    SAY @5113
    IF ~~ THEN REPLY @5108 GOTO 22
    IF ~PartyHasItem("s!clck08") PartyGoldGT(59999) PartyHasItem("clck01") PartyHasItem("dwdust") PartyHasItem("s!misc06") ~
      THEN REPLY @5109
      DO ~SetGlobal("Iahexxat02forged","GLOBAL",1)
          TakePartyGold(60000)      DestroyGold(60000)
          TakePartyItemNum("s!clck08",1)   DestroyItem("s!clck08")
          TakePartyItemNum("clck01",1)   DestroyItem("clck01")
          TakePartyItemNum("dwdust",1)   DestroyItem("dwdust")
          TakePartyItemNum("s!misc06",1)   DestroyItem("s!misc06")
          GiveItemCreate("s!clck09",Player1,1,1,1)
          CreateVisualEffectObject("spcrtwpn","maheer")~
      EXIT
  END

  IF ~~ THEN BEGIN blood
    SAY @5115
    IF ~~ THEN REPLY @5108 GOTO 22
    IF ~PartyHasItem("s!chan01") PartyGoldGT(59999) PartyHasItem("s!misc66") PartyHasItem("S!misc68") PartyHasItem("S!misc69") PartyHasItem("s!misc06")~
      THEN REPLY @5109
      DO ~SetGlobal("Iabloodforged","GLOBAL",1)
          TakePartyGold(60000)      DestroyGold(60000)
          TakePartyItemNum("s!chan01",1)   DestroyItem("s!chan01")
          TakePartyItemNum("s!misc66",1)   DestroyItem("s!misc66")
          TakePartyItemNum("S!misc68",1)   DestroyItem("S!misc68")
          TakePartyItemNum("S!misc69",1)   DestroyItem("S!misc69")
          TakePartyItemNum("s!misc06",1)   DestroyItem("s!misc06")
          GiveItemCreate("s!chan03",Player1,1,1,1)
          CreateVisualEffectObject("spcrtwpn","maheer")~
      EXIT
  END

  IF ~~ THEN BEGIN yetihide
    SAY @5117
    IF ~~ THEN REPLY @5108 GOTO 22

    IF ~PartyHasItem("s!misc74") PartyGoldGT(9999) PartyHasItem("clck01")~
      THEN REPLY @5118
      DO ~SetGlobal("Iahideforged","GLOBAL",1)
          TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("s!misc74",1)   DestroyItem("s!misc74")
          TakePartyItemNum("clck01",1)   DestroyItem("clck01")
          GiveItemCreate("s!clck11",Player1,1,1,1)
          CreateVisualEffectObject("spcrtwpn","maheer")~
      EXIT

    IF ~PartyHasItem("s!misc74") PartyGoldGT(9999) PartyHasItem("leat05")~
      THEN REPLY @5119
      DO ~SetGlobal("Iahideforged","GLOBAL",1)
          TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("s!misc74",1)   DestroyItem("s!misc74")
          TakePartyItemNum("leat05",1)   DestroyItem("leat05")
          GiveItemCreate("s!leat07",Player1,1,1,1)
          CreateVisualEffectObject("spcrtwpn","maheer")~
      EXIT
  END

END
