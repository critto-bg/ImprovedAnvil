EXTEND_TOP ~SHOP03~ 0 #2
  IF ~~ THEN REPLY @5100 GOTO 21
END

EXTEND_TOP ~SHOP03~ 8 #18
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
    IF ~PartyHasItem("ohhcloak") PartyGoldGT(24999) PartyHasItem("clck01") PartyHasItem("s!clck10")~
      THEN REPLY @5109
      DO ~SetGlobal("Iahexxat01forged","GLOBAL",1)
          TakePartyGold(25000)      DestroyGold(25000)
          TakePartyItemNum("ohhcloak",1)   DestroyItem("ohhcloak")
          TakePartyItemNum("clck01",1)   DestroyItem("clck01")
          TakePartyItemNum("s!clck10",1)   DestroyItem("s!clck10")
          GiveItemCreate("s!clck08",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn","maheer")~
      EXIT
  END
  
  IF ~~ THEN BEGIN hexxat2
    SAY @5113 
    IF ~~ THEN REPLY @5108 GOTO 22
    IF ~PartyHasItem("s!clck08") PartyGoldGT(49999) PartyHasItem("clck01") PartyHasItem("dwdust") PartyHasItem("s!misc06") ~
      THEN REPLY @5109
      DO ~SetGlobal("Iahexxat02forged","GLOBAL",1)
          TakePartyGold(50000)      DestroyGold(50000)
          TakePartyItemNum("s!clck08",1)   DestroyItem("s!clck08")
          TakePartyItemNum("clck01",1)   DestroyItem("clck01")
          TakePartyItemNum("dwdust",1)   DestroyItem("dwdust")
          TakePartyItemNum("s!misc06",1)   DestroyItem("s!cmisc06")	
          GiveItemCreate("s!clck09",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn","maheer")~
      EXIT
  END
  
END
