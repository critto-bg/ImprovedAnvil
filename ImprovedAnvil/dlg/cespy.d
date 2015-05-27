REPLACE BOTSMITH

  IF ~~ THEN BEGIN 4
    SAY @701
    IF ~~ THEN REPLY @700 GOTO regular
    IF ~PartyHasItem("leat21")~ THEN REPLY @10 GOTO flesh
    IF ~PartyHasItem("nparm")~ THEN REPLY @11 GOTO jan
    IF ~OR(3) PartyHasItem("leat17")
              PartyHasItem("leat14")
              PartyHasItem("leat08")~
      THEN REPLY @12 GOTO leat2
    IF ~PartyHasItem("npchan")~ THEN REPLY @13 GOTO valyc
    IF ~PartyHasItem("waflail") Class(Player1,RANGER_ALL) !Class(Player1,CLERIC_ALL)~ THEN REPLY @14 GOTO flail
    IF ~PartyHasItem("npclck")~ THEN REPLY @15 GOTO cernd
    IF ~PartyHasItem("npsw04")~ THEN REPLY @16 GOTO valyk
    IF ~PartyHasItem("npsw01")~ THEN REPLY @17 GOTO mazzy
    IF ~PartyHasItem("npring01")~ THEN REPLY @18 GOTO nalia
    IF ~PartyHasItem("npshld")~ THEN REPLY @19 GOTO anomen
    IF ~OR(2) PartyHasItem("S!misc07")
              PartyHasItem("S!misc08")~
      THEN REPLY @21 GOTO judge
    IF ~PartyHasItem("staf17")~ THEN REPLY @22 GOTO fire
    IF ~PartyHasItem("staf15")~ THEN REPLY @23 GOTO air
    IF ~OR(2) PartyHasItem("S!staf01")
              PartyHasItem("S!staf02")~
      THEN REPLY @24 GOTO royal
    IF ~PartyHasItem("halb04")~ THEN REPLY @25 GOTO halb1
    IF ~PartyHasItem("npsw05")~ THEN REPLY @26 GOTO haerd
    IF ~PartyHasItem("sw1h31")~ THEN REPLY @27 GOTO hesper
    IF ~PartyHasItem("miscai")~ THEN REPLY @28 GOTO speed
    IF ~PartyHasItem("S!boot03") Global("Iabootsforged","GLOBAL",0)~ THEN REPLY @29 GOTO haste
    IF ~PartyHasItem("hamm09")~ THEN REPLY @30 GOTO thor
    IF ~PartyHasItem("ax1h12")~ THEN REPLY @31 GOTO volcano
    IF ~OR(5) PartyHasItem("belt06")
              PartyHasItem("belt03")
              PartyHasItem("belt04")
              PartyHasItem("belt09")
              PartyHasItem("belt02")~
      THEN REPLY @32 GOTO girdle
    IF ~OR(2) PartyHasItem("chan15")
              PartyHasItem("chan10")~
      THEN REPLY @33 GOTO bard
    IF ~OR(4) PartyHasItem("amul20")
              PartyHasItem("amul22")
              PartyHasItem("amul19")
              PartyHasItem("amul14")~
      THEN REPLY @34 GOTO amul1
    IF ~PartyHasItem("ring06")~ THEN REPLY @35 GOTO r1
    IF ~PartyHasItem("ring07")~ THEN REPLY @36 GOTO r2
    IF ~PartyHasItem("ring41")~ THEN REPLY @37 GOTO r3
    IF ~PartyHasItem("ring39")~ THEN REPLY @38 GOTO r4
    IF ~PartyHasItem("sw2h09")~ THEN REPLY @39 GOTO war
    IF ~Class(Player1,MAGE_ALL) !Class(Player1,CLERIC_ALL) !Class(Player1,FIGHTER_ALL) !Class(Player1,BARD_ALL) !Class(Player1,THIEF_ALL) PartyHasItem("clck29")~ THEN REPLY @40 GOTO robe
    IF ~PartyHasItem("plat15")~ THEN REPLY @41 GOTO pride
    IF ~OR(4) PartyHasItem("chan03")
              PartyHasItem("chan09")
              PartyHasItem("chan11")
              PartyHasItem("chan17")~
      THEN REPLY @42 GOTO chain1
    IF ~PartyHasItem("plat16")~ THEN REPLY @43 GOTO huskar
    IF ~PartyHasItem("npstaf")~ THEN REPLY @44 GOTO oak
    IF ~PartyHasItem("S!boot01")~ THEN REPLY @80 GOTO agile
    IF ~PartyHasItem("dagg02")~ THEN REPLY @82 GOTO dagg1
    IF ~PartyHasItem("dagg15")~ THEN REPLY @84 GOTO dagg2
    IF ~PartyHasItem("dagg24")~ THEN REPLY @86 GOTO dagg3
    IF ~PartyHasItem("S!dagg01") Global("Iadagg02forged","GLOBAL",0)~ THEN REPLY @88 GOTO dagg4
    IF ~PartyHasItem("ring18")~ THEN REPLY @90 GOTO r5
    IF ~OR(2) PartyHasItem("ring26")
              PartyHasItem("misc3c")~
      THEN REPLY @92 GOTO r6
    IF ~PartyHasItem("misc3k")~ THEN REPLY @94 GOTO horn
    IF ~PartyHasItem("blun03")~ THEN REPLY @96 GOTO fla1
    IF ~PartyHasItem("blun13")~ THEN REPLY @98 GOTO fla2
    IF ~PartyHasItem("blun10")~ THEN REPLY @500 GOTO tree
    IF ~OR(4) PartyHasItem("shld21")
              PartyHasItem("shld23")
              PartyHasItem("shld27")
              PartyHasItem("shld31")~
      THEN REPLY @502 GOTO shield
    IF ~OR(3) PartyHasItem("clck09")
              PartyHasItem("clck10")
              PartyHasItem("clck11")~
      THEN REPLY @504 GOTO robele
    IF ~PartyHasItem("halb03")~ THEN REPLY @506 GOTO halb2
    IF ~PartyHasItem("halb09")~ THEN REPLY @508 GOTO halb3
    IF ~OR(3) PartyHasItem("helm18")
              PartyHasItem("helm20")
              PartyHasItem("helm19")~
      THEN REPLY @510 GOTO ioun
    IF ~PartyHasItem("helm21")~ THEN REPLY @512 GOTO helm
    IF ~PartyHasItem("sw1h42")~ THEN REPLY @514 GOTO bastard
    IF ~PartyHasItem("sw1h38")~ THEN REPLY @516 GOTO cuts
    IF ~PartyHasItem("halb02")~ THEN REPLY @518 GOTO halb4
    IF ~PartyHasItem("S!misc13")~ THEN REPLY @520 GOTO cloud
    IF ~PartyHasItem("S!amul01")~ THEN REPLY @522 GOTO lei
    IF ~PartyHasItem("S!helm03")~ THEN REPLY @524 GOTO circlet
    IF ~OR(3) PartyHasItem("brac19")
              PartyHasItem("brac10")
              PartyHasItem("misc9a")~
      THEN REPLY @526 GOTO brac
    IF ~PartyHasItem("sw2h15")~ THEN REPLY @528 GOTO vorpal
    IF ~PartyHasItem("blun31")~ THEN REPLY @530 GOTO rimed
    IF ~PartyHasItem("sw2h11")~ THEN REPLY @532 GOTO thsword
    IF ~PartyHasItem("plat06")~ THEN REPLY @534 GOTO ankheg
    IF ~PartyHasItem("S!misc15")~ THEN REPLY @536 GOTO potion
    IF ~OR(3) PartyHasItem("ring35")
              PartyHasItem("ring36")
              PartyHasItem("brac17")~
      THEN REPLY @538 GOTO r7
    IF ~PartyHasItem("shld17")~ THEN REPLY @540 GOTO buckler
    IF ~PartyHasItem("blun15")~ THEN REPLY @542 GOTO ms1
    IF ~PartyHasItem("blun34") Global("Iablun03forged","GLOBAL",0)~ THEN REPLY @544 GOTO ms2
    IF ~PartyHasItem("clck01")~ THEN REPLY @546 GOTO cloak1
    IF ~PartyHasItem("rods04")~ THEN REPLY @550 GOTO rod
    IF ~PartyHasItem("staf18")~ THEN REPLY @552 GOTO quarter
    IF ~PartyHasItem("S!misc16")~ THEN REPLY @554 GOTO elf
    IF ~PartyHasItem("sw1h41")~ THEN REPLY @556 GOTO long
    IF ~PartyHasItem("S!misc36") Global("Iahelm05forged","GLOBAL",0)~ THEN REPLY @558 GOTO charm
    IF ~PartyHasItem("xbow12")~ THEN REPLY @560 GOTO janc
    IF ~PartyHasItem("sw1h28")~ THEN REPLY @562 GOTO throat
    IF ~PartyHasItem("misc3e")~ THEN REPLY @564 GOTO spider
    IF ~PartyHasItem("S!catfig")~ THEN REPLY @566 GOTO cat
    IF ~OR(2) PartyHasItem("S!misc30")
              PartyHasItem("S!misc31")~
      THEN REPLY @570 GOTO ttruth
    IF ~PartyHasItem("S!leat04") Class(Player1,RANGER_ALL) CheckStat(Player1,7,SCRIPTINGSTATE1) Global("Iamvagrant","GLOBAL",1)~ THEN REPLY @572 GOTO vagran
    IF ~PartyHasItem("npplat") Reputation(Player1,20)~ THEN REPLY @574 GOTO keldorn
    IF ~PartyHasItem("S!scaleg") !Alignment(Player1,MASK_EVIL) !GlobalGT("Iap1notgood","GLOBAL",0)~ THEN REPLY @576 GOTO wyrm
    IF ~PartyHasItem("S!scaler")~ THEN REPLY @578 GOTO ancient
    IF ~PartyHasItem("sw1h73") Global("Ialongfforged","GLOBAL",0)~ THEN REPLY @580 GOTO longf
    IF ~PartyHasItem("S!amul04")~ THEN REPLY @582 GOTO necro
    IF ~PartyHasItem("staf24")~ THEN REPLY @586 GOTO staff1
    IF ~PartyHasItem("S!staf06") Global("Iastaf07forged","GLOBAL",0)~ THEN REPLY @588 GOTO staff2
    IF ~PartyHasItem("S!clck04") Class(Player1,MAGE_ALL) CheckStat(Player1,6,SCRIPTINGSTATE1)~ THEN REPLY @590 GOTO arcane
    IF ~PartyHasItem("S!helm07") GlobalGT("Iaoldsquijob","GLOBAL",3) GlobalGT("Iasquirjob","GLOBAL",8) Class(Player1,MAGE_ALL)~ THEN REPLY @592 GOTO scarlet
    IF ~PartyHasItem("S!amul05") Class(Player1,MAGE_ALL) CheckStat(Player1,6,SCRIPTINGSTATE1) !Class(Player1,THIEF_ALL) !Class(Player1,FIGHTER_ALL) !Class(Player1,CLERIC_ALL) !Class(Player1,SORCERER)~ THEN REPLY @594 GOTO necro2
    IF ~PartyHasItem("leat09")~ THEN REPLY @596 GOTO swash
    IF ~PartyHasItem("S!staf04")~ THEN REPLY @598 GOTO oak2
    IF ~PartyHasItem("S!sw17") Global("Ialongfforged","GLOBAL",1)~ THEN REPLY @702 GOTO swash2
    IF ~PartyHasItem("ohnmbird") PartyHasItem("ohnrobe2")~ THEN REPLY @752 GOTO neera
    IF ~PartyHasItem("rsboot")~ THEN REPLY @754 GOTO rasaad
    IF ~PartyHasItem("sper02")~ THEN REPLY @756 GOTO spear1
    IF ~~ THEN REPLY #992 EXIT
  END
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN pride
    SAY @2000 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("plat15") PartyHasItem("plat18") PartyHasItem("plat19")
        PartyGoldGT(39999)~
      THEN REPLY @3
      DO ~TakePartyGold(40000)      DestroyGold(40000)
          TakePartyItemNum("plat15",1)   DestroyItem("plat15")
          TakePartyItemNum("plat18",1)   DestroyItem("plat18")
          TakePartyItemNum("plat19",1)   DestroyItem("plat19")
          GiveItemCreate("S!PLAT01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN chain1
    SAY @2001 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("chan03") PartyHasItem("chan09") PartyHasItem("chan11") PartyHasItem("chan17")
        PartyGoldGT(29999)~
      THEN REPLY @3
      DO ~TakePartyGold(30000)      DestroyGold(30000)
          TakePartyItemNum("chan03",1)   DestroyItem("chan03")
          TakePartyItemNum("chan09",1)   DestroyItem("chan09")
          TakePartyItemNum("chan11",1)   DestroyItem("chan11")
          TakePartyItemNum("chan17",1)   DestroyItem("chan17")
          GiveItemCreate("S!chan01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN huskar
    SAY @2002 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("plat16") PartyHasItem("plat12") PartyHasItem("scrl1n") NumItemsPartyGT("plat04",1) NumItemsPartyGT("dwdust",1) PartyHasItem("scrl9c") PartyHasItem("S!misc02")
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("plat16",1)   DestroyItem("plat16")
          TakePartyItemNum("plat12",1)   DestroyItem("plat12")
          TakePartyItemNum("scrl1n",1)   DestroyItem("scrl1n")
          TakePartyItemNum("plat04",1)   DestroyItem("plat04")
          TakePartyItemNum("plat04",1)   DestroyItem("plat04")
          TakePartyItemNum("scrl9c",1)   DestroyItem("scrl9c")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("dwdust",1)   DestroyItem("dwdust")
          TakePartyItemNum("dwdust",1)   DestroyItem("dwdust")
          GiveItemCreate("S!plat02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN flesh
    SAY @2003 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iafleshforged","GLOBAL",0) Global("Iadracoldead","GLOBAL",1) Dead("S!dracol") PartyHasItem("leat21") PartyHasItem("misc9t") NumItemsPartyGT("potn24",4) NumItemsPartyGT("potn42",4) PartyHasItem("S!misc02") PartyHasItem("S!misc32")
        PartyGoldGT(39999)~
      THEN REPLY @3
      DO ~TakePartyGold(40000)      DestroyGold(40000)
          TakePartyItemNum("leat21",1)   DestroyItem("leat21")
          TakePartyItemNum("misc9t",1)   DestroyItem("misc9t")
          TakePartyItemNum("potn24",1)   DestroyItem("potn24")
          TakePartyItemNum("potn24",1)   DestroyItem("potn24")
          TakePartyItemNum("potn24",1)   DestroyItem("potn24")
          TakePartyItemNum("potn24",1)   DestroyItem("potn24")
          TakePartyItemNum("potn24",1)   DestroyItem("potn24")
          TakePartyItemNum("potn42",1)   DestroyItem("potn42")
          TakePartyItemNum("potn42",1)   DestroyItem("potn42")
          TakePartyItemNum("potn42",1)   DestroyItem("potn42")
          TakePartyItemNum("potn42",1)   DestroyItem("potn42")
          TakePartyItemNum("potn42",1)   DestroyItem("potn42")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("S!misc32",1)   DestroyItem("S!misc32")
          SetGlobal("Iafleshforged","GLOBAL",1)
          GiveItemCreate("S!leat01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN jan
    SAY @2004 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("nparm") PartyHasItem("clck16") NumItemsPartyGT("potn24",4) PartyHasItem("S!misc02") PartyHasItem("S!misc01") PartyHasItem("potn34")
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("nparm",1)   DestroyItem("nparm")
          TakePartyItemNum("clck16",1)   DestroyItem("clck16")
          TakePartyItemNum("S!misc01",1)   DestroyItem("S!misc01")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("potn24",1)   DestroyItem("potn24")
          TakePartyItemNum("potn24",1)   DestroyItem("potn24")
          TakePartyItemNum("potn24",1)   DestroyItem("potn24")
          TakePartyItemNum("potn24",1)   DestroyItem("potn24")
          TakePartyItemNum("potn24",1)   DestroyItem("potn24")
          TakePartyItemNum("potn34",1)   DestroyItem("potn34")
          GiveItemCreate("S!jan01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN leat2
    SAY @2005 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("leat17") PartyHasItem("leat14") PartyHasItem("leat08") PartyHasItem("scrl5k") PartyHasItem("potn39") NumItemsPartyGT("misc35",2) PartyHasItem("S!misc02")
        PartyGoldGT(29999)~
      THEN REPLY @3
      DO ~TakePartyGold(30000)      DestroyGold(30000)
          TakePartyItemNum("leat17",1)   DestroyItem("leat17")
          TakePartyItemNum("leat14",1)   DestroyItem("leat14")
          TakePartyItemNum("leat08",1)   DestroyItem("leat08")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          TakePartyItemNum("potn39",1)   DestroyItem("potn39")
          TakePartyItemNum("misc35",1)   DestroyItem("misc35")
          TakePartyItemNum("misc35",1)   DestroyItem("misc35")
          TakePartyItemNum("misc35",1)   DestroyItem("misc35")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          GiveItemCreate("S!leat02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN valyc
    SAY @2006 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iavalycforged","GLOBAL",0) Global("Iaaegerplace","GLOBAL",3) PartyHasItem("npchan") PartyHasItem("leat19") PartyHasItem("scrl6h") PartyHasItem("leat20") PartyHasItem("leat03") PartyHasItem("S!misc02") PartyHasItem("scrl7j")
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("npchan",1)   DestroyItem("npchan")
          TakePartyItemNum("leat19",1)   DestroyItem("leat19")
          TakePartyItemNum("scrl6h",1)   DestroyItem("scrl6h")
          TakePartyItemNum("scrl7j",1)   DestroyItem("scrl7j")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("leat20",1)   DestroyItem("leat20")
          TakePartyItemNum("leat03",1)   DestroyItem("leat03")
          SetGlobal("Iavalycforged","GLOBAL",1)
          GiveItemCreate("S!leat03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

    IF ~~ THEN BEGIN flail
    SAY @2007 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Class(Player1,RANGER_ALL) !Class(Player1,CLERIC_ALL) Global("Iaflailplace","GLOBAL",3) GlobalGT("Chapter","GLOBAL",5) NumItemsPartyGT("blun32",1) PartyHasItem("blun24") PartyHasItem("waflail") NumItemsPartyGT("misc42",5) NumItemsPartyGT("miscal",9)
        PartyGoldGT(149999)~
      THEN REPLY @3
      DO ~TakePartyGold(150000)      DestroyGold(150000)
          TakePartyItemNum("blun32",1)   DestroyItem("blun32")
          TakePartyItemNum("blun32",1)   DestroyItem("blun32")
          TakePartyItemNum("blun24",1)   DestroyItem("blun24")
          TakePartyItemNum("waflail",1)   DestroyItem("waflail")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("miscal",1)   DestroyItem("miscal")
          TakePartyItemNum("miscal",1)   DestroyItem("miscal")
          TakePartyItemNum("miscal",1)   DestroyItem("miscal")
          TakePartyItemNum("miscal",1)   DestroyItem("miscal")
          TakePartyItemNum("miscal",1)   DestroyItem("miscal")
          TakePartyItemNum("miscal",1)   DestroyItem("miscal")
          TakePartyItemNum("miscal",1)   DestroyItem("miscal")
          TakePartyItemNum("miscal",1)   DestroyItem("miscal")
          TakePartyItemNum("miscal",1)   DestroyItem("miscal")
          TakePartyItemNum("miscal",1)   DestroyItem("miscal")
          GiveItemCreate("S!fla01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN cernd
    SAY @2008 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("npclck") PartyHasItem("clck05") NumItemsPartyGT("clck01",1) PartyHasItem("S!misc01")
        PartyGoldGT(49999)~
      THEN REPLY @3
      DO ~TakePartyGold(50000)      DestroyGold(50000)
          TakePartyItemNum("npclck",1)   DestroyItem("npclck")
          TakePartyItemNum("clck05",1)   DestroyItem("clck05")
          TakePartyItemNum("clck01",1)   DestroyItem("clck01")
          TakePartyItemNum("clck01",1)   DestroyItem("clck01")
          TakePartyItemNum("S!misc01",1)   DestroyItem("S!misc01")
          GiveItemCreate("S!clck01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN valyk
    SAY @2009 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iavalykforged","GLOBAL",0) GlobalGT("Iadracoldead","GLOBAL",0) Dead("S!dracol") Global("Iamalakplace","GLOBAL",5) PartyHasItem("npsw04") PartyHasItem("sw1h45") PartyHasItem("sw1h35") NumItemsPartyGT("S!misc35",2) PartyHasItem("sw1h75") PartyHasItem("S!misc05") NumItemsPartyGT("misc6m",1)
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("npsw04",1)   DestroyItem("npsw04")
          TakePartyItemNum("sw1h35",1)   DestroyItem("sw1h35")
          TakePartyItemNum("sw1h45",1)   DestroyItem("sw1h45")
          TakePartyItemNum("S!misc35",1)   DestroyItem("S!misc35")
          TakePartyItemNum("S!misc35",1)   DestroyItem("S!misc35")
          TakePartyItemNum("S!misc35",1)   DestroyItem("S!misc35")
          TakePartyItemNum("S!misc05",1)   DestroyItem("S!misc05")
          TakePartyItemNum("sw1h75",1)   DestroyItem("sw1h75")
          TakePartyItemNum("misc6m",1)   DestroyItem("misc6m")
          TakePartyItemNum("misc6m",1)   DestroyItem("misc6m")
          SetGlobal("Iavalykforged","GLOBAL",1)
          GiveItemCreate("S!sw01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN mazzy
    SAY @2010 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iadracoldead","GLOBAL",1) Dead("S!dracol") PartyHasItem("npsw01") NumItemsPartyGT("scrl58",2) PartyHasItem("sw1h27") PartyHasItem("sw1h74") PartyHasItem("scrl5i") NumItemsPartyGT("scrl6m",1) PartyHasItem("S!misc02") PartyHasItem("S!misc33")
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("npsw01",1)   DestroyItem("npsw01")
          TakePartyItemNum("scrl58",1)   DestroyItem("scrl58")
          TakePartyItemNum("scrl58",1)   DestroyItem("scrl58")
          TakePartyItemNum("scrl58",1)   DestroyItem("scrl58")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("S!misc33",1)   DestroyItem("S!misc33")
          TakePartyItemNum("sw1h27",1)   DestroyItem("sw1h27")
          TakePartyItemNum("sw1h74",1)   DestroyItem("sw1h74")
          TakePartyItemNum("scrl5i",1)   DestroyItem("scrl5i")
          TakePartyItemNum("scrl6m",1)   DestroyItem("scrl6m")
          TakePartyItemNum("scrl6m",1)   DestroyItem("scrl6m")
          GiveItemCreate("S!sw02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN nalia
    SAY @2011 IF ~~ THEN REPLY @2 GOTO 4
    IF ~InParty("Nalia") Global("Ianaliaring","GLOBAL",0) PartyHasItem("npring01") PartyHasItem("ring02") PartyHasItem("ring41") NumItemsPartyGT("S!misc01",1) PartyHasItem("ring40")
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("ring02",1)   DestroyItem("ring02")
          TakePartyItemNum("ring41",1)   DestroyItem("ring41")
          TakePartyItemNum("ring40",1)   DestroyItem("ring40")
          TakePartyItemNum("S!misc01",1)   DestroyItem("S!misc01")
          TakePartyItemNum("S!misc01",1)   DestroyItem("S!misc01")
          SetGlobal("Ianaliaring","GLOBAL",1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN anomen
    SAY @2012 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iaanomforged","GLOBAL",0) Global("Iadracoldead","GLOBAL",1) Dead("S!dracol") PartyHasItem("npshld") PartyHasItem("shld26") PartyHasItem("shld25") PartyHasItem("S!misc32")
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("npshld",1)   DestroyItem("npshld")
          TakePartyItemNum("shld25",1)   DestroyItem("shld25")
          TakePartyItemNum("shld26",1)   DestroyItem("shld26")
          TakePartyItemNum("S!misc32",1)   DestroyItem("S!misc32")
          SetGlobal("Iaanomforged","GLOBAL",1)
          GiveItemCreate("S!shld01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN judge
    SAY @2013 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Alignment(Player1,MASK_GOOD) Global("Iajdplot","GLOBAL",1) Dead("gorgit") Dead("S!dlord") PartyHasItem("S!misc07") PartyHasItem("S!misc17") PartyHasItem("S!misc06") PartyHasItem("S!misc08") PartyHasItem("S!misc02") PartyHasItem("sw1h60") PartyHasItem("scrl9x") PartyHasItem("scrl9d") PartyHasItem("scrlb4") !Class(Player1,THIEF_ALL) !Class(Player1,BARD_ALL) !Class(Player1,CLERIC_ALL) !Class(Player1,MAGE_ALL) !Class(Player1,DRUID_ALL) !Class(Player1,MONK) Dead("fsdragon")
        PartyGoldGT(249999)~
      THEN REPLY @3
      DO ~TakePartyGold(250000)      DestroyGold(250000)
          TakePartyItemNum("S!misc07",1)   DestroyItem("S!misc07")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          TakePartyItemNum("S!misc08",1)   DestroyItem("S!misc08")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("S!misc17",1)   DestroyItem("S!misc17")
          TakePartyItemNum("sw1h60",1)   DestroyItem("sw1h60")
          TakePartyItemNum("scrl9x",1)   DestroyItem("scrl9x")
          TakePartyItemNum("scrl9d",1)   DestroyItem("scrl9d")
          TakePartyItemNum("scrlb4",1)   DestroyItem("scrlb4")
          SetGlobal("Iajdplot","GLOBAL",2)
          GiveItemCreate("S!sw04",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN fire
    SAY @2014 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("S!misc02") PartyHasItem("scrl7g") PartyHasItem("scrl6h") PartyHasItem("scrl06") PartyHasItem("blun26") PartyHasItem("staf17") PartyHasItem("staf08")
        PartyGoldGT(59999)~
      THEN REPLY @3
      DO ~TakePartyGold(60000)      DestroyGold(60000)
          TakePartyItemNum("scrl7g",1)   DestroyItem("scrl7g")
          TakePartyItemNum("scrl6h",1)   DestroyItem("scrl6h")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("scrl06",1)   DestroyItem("scrl06")
          TakePartyItemNum("blun26",1)   DestroyItem("blun26")
          TakePartyItemNum("staf17",1)   DestroyItem("staf17")
          TakePartyItemNum("staf08",1)   DestroyItem("staf08")
          GiveItemCreate("S!staf01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN air
    SAY @2015 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("S!misc02") PartyHasItem("scrl7g") PartyHasItem("scrl5t") PartyHasItem("scrl05") PartyHasItem("scrl7s") PartyHasItem("blun28") PartyHasItem("staf15") PartyHasItem("staf20")
        PartyGoldGT(59999)~
      THEN REPLY @3
      DO ~TakePartyGold(60000)      DestroyGold(60000)
          TakePartyItemNum("scrl7g",1)   DestroyItem("scrl7g")
          TakePartyItemNum("scrl5t",1)   DestroyItem("scrl5t")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("scrl05",1)   DestroyItem("scrl05")
          TakePartyItemNum("scrl7s",1)   DestroyItem("scrl7s")
          TakePartyItemNum("blun28",1)   DestroyItem("blun28")
          TakePartyItemNum("staf15",1)   DestroyItem("staf15")
          TakePartyItemNum("staf20",1)   DestroyItem("staf20")
          GiveItemCreate("S!staf02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN royal
    SAY @2016 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("S!staf01") PartyHasItem("S!staf02") PartyHasItem("S!misc06")
        PartyGoldGT(99999)~
      THEN REPLY @3
      DO ~TakePartyGold(100000)      DestroyGold(100000)
          TakePartyItemNum("S!staf01",1)   DestroyItem("S!staf01")
          TakePartyItemNum("S!staf02",1)   DestroyItem("S!staf02")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          GiveItemCreate("S!staf03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN halb1
    SAY @2017 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iahalbforged","GLOBAL",0) Global("Iaancientdead","GLOBAL",1) Dead("fsdragon") PartyHasItem("halb04") PartyHasItem("halb05") PartyHasItem("sw1h32") PartyHasItem("S!misc06") PartyHasItem("S!misc03") PartyHasItem("S!misc04")
        PartyGoldGT(199999)~
      THEN REPLY @3
      DO ~TakePartyGold(200000)      DestroyGold(200000)
          TakePartyItemNum("halb04",1)   DestroyItem("halb04")
          TakePartyItemNum("halb05",1)   DestroyItem("halb05")
          TakePartyItemNum("sw1h32",1)   DestroyItem("sw1h32")
          TakePartyItemNum("S!misc03",1)   DestroyItem("S!misc03")
          TakePartyItemNum("S!misc04",1)   DestroyItem("S!misc04")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          SetGlobal("Iahalbforged","GLOBAL",1)
          GiveItemCreate("S!halb01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN haerd
    SAY @2018 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iadracoldead","GLOBAL",1) Dead("S!dracol") PartyHasItem("npsw05") PartyHasItem("S!misc33") PartyHasItem("npsw06") PartyHasItem("misc6m") PartyHasItem("S!misc06")
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("npsw05",1)   DestroyItem("npsw05")
          TakePartyItemNum("npsw06",1)   DestroyItem("npsw06")
          TakePartyItemNum("misc6m",1)   DestroyItem("misc6m")
          TakePartyItemNum("S!misc33",1)   DestroyItem("S!misc33")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          GiveItemCreate("S!sw05",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN hesper
    SAY @2019 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iahespforged","GLOBAL",0) Global("Iaamul06forged","GLOBAL",0) Dead("S!orcus") GlobalGT("Iaorcusdead","GLOBAL",0) Global("Iadracoldead","GLOBAL",1) Dead("S!dracol") PartyHasItem("sw1h31") NumItemsPartyGT("S!scrl09",4) PartyHasItem("key23") PartyHasItem("S!misc06") PartyHasItem("S!misc29") PartyHasItem("S!misc32") PartyHasItem("S!scrl05") PartyHasItem("S!misc02")
        PartyGoldGT(99999)~
      THEN REPLY @3
      DO ~TakePartyGold(100000)      DestroyGold(100000)
          TakePartyItemNum("sw1h31",1)   DestroyItem("sw1h31")
          TakePartyItemNum("key23",1)   DestroyItem("key23")
          TakePartyItemNum("S!scrl09",1)   DestroyItem("S!scrl09")
          TakePartyItemNum("S!scrl09",1)   DestroyItem("S!scrl09")
          TakePartyItemNum("S!scrl09",1)   DestroyItem("S!scrl09")
          TakePartyItemNum("S!scrl09",1)   DestroyItem("S!scrl09")
          TakePartyItemNum("S!scrl09",1)   DestroyItem("S!scrl09")
          TakePartyItemNum("S!scrl05",1)   DestroyItem("S!scrl05")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("S!misc29",1)   DestroyItem("S!misc29")
          TakePartyItemNum("S!misc32",1)   DestroyItem("S!misc32")
          SetGlobal("Iahespforged","GLOBAL",1)
          GiveItemCreate("S!sw06",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN speed
    SAY @2020 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("miscai") PartyHasItem("scrl1h") PartyHasItem("S!misc02")
        PartyGoldGT(49999)~
      THEN REPLY @3
      DO ~TakePartyGold(50000)      DestroyGold(50000)
          TakePartyItemNum("miscai",1)   DestroyItem("miscai")
          TakePartyItemNum("scrl1h",1)   DestroyItem("scrl1h")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          GiveItemCreate("boot01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN haste
    SAY @2021 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iabootsforged","GLOBAL",0) Dead("S!draggr") !Alignment(Player1,MASK_EVIL) !GlobalGT("Iap1notgood","GLOBAL",0) XPGT(Player1,4249999) GlobalGT("Iadraggrdead","GLOBAL",0) NumItemsPartyGT("boot01",1) NumItemsPartyGT("scrl7q",2) PartyHasItem("S!misc02") PartyHasItem("S!boot03")
        PartyGoldGT(124999)~
      THEN REPLY @3
      DO ~TakePartyGold(125000)      DestroyGold(125000)
          TakePartyItemNum("boot01",1)   DestroyItem("boot01")
          TakePartyItemNum("boot01",1)   DestroyItem("boot01")
          TakePartyItemNum("S!boot03",1)   DestroyItem("S!boot03")
          TakePartyItemNum("scrl7q",1)   DestroyItem("scrl7q")
          TakePartyItemNum("scrl7q",1)   DestroyItem("scrl7q")
          TakePartyItemNum("scrl7q",1)   DestroyItem("scrl7q")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          SetGlobal("Iabootsforged","GLOBAL",1)
          GiveItemCreate("S!boot01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN thor
    SAY @2022 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iaspidehdead","GLOBAL",1) Global("Iausunoplace","GLOBAL",3) PartyHasItem("hamm09") PartyHasItem("sw1h67") PartyHasItem("hamm05") PartyHasItem("hamm03") PartyHasItem("sw1h51") NumItemsPartyGT("scrl05",1) PartyHasItem("S!misc02") NumItemsPartyGT("S!misc27",7)
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("hamm09",1)   DestroyItem("hamm09")
          TakePartyItemNum("hamm05",1)   DestroyItem("hamm05")
          TakePartyItemNum("hamm03",1)   DestroyItem("hamm03")
          TakePartyItemNum("sw1h51",1)   DestroyItem("sw1h51")
          TakePartyItemNum("scrl05",1)   DestroyItem("scrl05")
          TakePartyItemNum("scrl05",1)   DestroyItem("scrl05")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("S!misc27",1)   DestroyItem("S!misc27")
          TakePartyItemNum("S!misc27",1)   DestroyItem("S!misc27")
          TakePartyItemNum("S!misc27",1)   DestroyItem("S!misc27")
          TakePartyItemNum("S!misc27",1)   DestroyItem("S!misc27")
          TakePartyItemNum("S!misc27",1)   DestroyItem("S!misc27")
          TakePartyItemNum("S!misc27",1)   DestroyItem("S!misc27")
          TakePartyItemNum("S!misc27",1)   DestroyItem("S!misc27")
          TakePartyItemNum("S!misc27",1)   DestroyItem("S!misc27")
          TakePartyItemNum("sw1h67",1)   DestroyItem("sw1h67")
          GiveItemCreate("S!hamm01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN volcano
    SAY @2023 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("ax1h12") PartyHasItem("S!misc09")
        PartyGoldGT(59999)~
      THEN REPLY @3
      DO ~TakePartyGold(60000)      DestroyGold(60000)
          TakePartyItemNum("ax1h12",1)   DestroyItem("ax1h12")
          TakePartyItemNum("S!misc09",1)   DestroyItem("S!misc09")
          GiveItemCreate("S!axe01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN girdle
    SAY @2024 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("belt02") PartyHasItem("belt03") PartyHasItem("belt04") PartyHasItem("belt06") PartyHasItem("belt09")
        PartyGoldGT(59999)~
      THEN REPLY @3
      DO ~TakePartyGold(60000)      DestroyGold(60000)
          TakePartyItemNum("belt02",1)   DestroyItem("belt02")
          TakePartyItemNum("belt03",1)   DestroyItem("belt03")
          TakePartyItemNum("belt04",1)   DestroyItem("belt04")
          TakePartyItemNum("belt06",1)   DestroyItem("belt06")
          TakePartyItemNum("belt09",1)   DestroyItem("belt09")
          GiveItemCreate("S!belt01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN bard
    SAY @2025 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("chan10") PartyHasItem("chan15") PartyHasItem("chan16") Dead("dragblac") GlobalGT("Chapter","GLOBAL",5) PartyHasItem("S!misc06") NumItemsPartyGT("S!misc01",1) PartyHasItem("S!misc02")
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("chan15",1)   DestroyItem("chan15")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          TakePartyItemNum("S!misc01",1)   DestroyItem("S!misc01")
          TakePartyItemNum("S!misc01",1)   DestroyItem("S!misc01")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("chan10",1)   DestroyItem("chan10")
          TakePartyItemNum("chan16",1)   DestroyItem("chan16")
          GiveItemCreate("S!chan02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN amul1
    SAY @2026 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("amul20") NumItemsPartyGT("amul14",1) PartyHasItem("amul22") PartyHasItem("amul19")
        PartyGoldGT(59999)~
      THEN REPLY @3
      DO ~TakePartyGold(60000)      DestroyGold(60000)
          TakePartyItemNum("amul20",1)   DestroyItem("amul20")
          TakePartyItemNum("amul14",1)   DestroyItem("amul14")
          TakePartyItemNum("amul14",1)   DestroyItem("amul14")
          TakePartyItemNum("amul22",1)   DestroyItem("amul22")
          TakePartyItemNum("amul19",1)   DestroyItem("amul19")
          GiveItemCreate("S!amul02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN r1
    SAY @2027 IF ~~ THEN REPLY @2 GOTO 4
    IF ~NumItemsPartyGT("ring06",2) PartyGoldGT(29999)~
      THEN REPLY @3
      DO ~TakePartyGold(30000)	    DestroyGold(30000)
          TakePartyItemNum("ring06",1)   DestroyItem("ring06")
          TakePartyItemNum("ring06",1)   DestroyItem("ring06")
          TakePartyItemNum("ring06",1)   DestroyItem("ring06")
          GiveItemCreate("ring07",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN r2
    SAY @2028 IF ~~ THEN REPLY @2 GOTO 4
    IF ~NumItemsPartyGT("ring07",1) PartyHasItem("misc45")
        PartyGoldGT(59999)~
      THEN REPLY @3
      DO ~TakePartyGold(60000)      DestroyGold(60000)
          TakePartyItemNum("ring07",1)   DestroyItem("ring07")
          TakePartyItemNum("ring07",1)   DestroyItem("ring07")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          GiveItemCreate("ring41",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN r3
    SAY @2029 IF ~~ THEN REPLY @2 GOTO 4
    IF ~NumItemsPartyGT("ring41",1) NumItemsPartyGT("misc45",1)
        PartyGoldGT(89999)~
      THEN REPLY @3
      DO ~TakePartyGold(90000)      DestroyGold(90000)
          TakePartyItemNum("ring41",1)   DestroyItem("ring41")
          TakePartyItemNum("ring41",1)   DestroyItem("ring41")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          GiveItemCreate("S!ring01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN r4
    SAY @2030 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iakeepdagg21","GLOBAL",1) PartyHasItem("ring39") PartyHasItem("S!ring01") PartyHasItem("ring31") PartyHasItem("scrl07")
        PartyGoldGT(119999)~
      THEN REPLY @3
      DO ~TakePartyGold(120000)      DestroyGold(120000)
          TakePartyItemNum("ring39",1)   DestroyItem("ring39")
          TakePartyItemNum("S!ring01",1)   DestroyItem("S!ring01")
          TakePartyItemNum("ring31",1)   DestroyItem("ring31")
          TakePartyItemNum("scrl07",1)   DestroyItem("scrl07")
          GiveItemCreate("S!ring02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN war
    SAY @2031 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("sw2h09") PartyHasItem("sw2h14") PartyHasItem("S!misc06") NumItemsPartyGT("sw2h20",1)
        PartyGoldGT(49999)~
      THEN REPLY @4
      DO ~TakePartyGold(50000)      DestroyGold(50000)
          TakePartyItemNum("sw2h09",1)   DestroyItem("sw2h09")
          TakePartyItemNum("sw2h14",1)   DestroyItem("sw2h14")
          TakePartyItemNum("sw2h20",1)   DestroyItem("sw2h20")
          TakePartyItemNum("sw2h20",1)   DestroyItem("sw2h20")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          GiveItemCreate("S!sw07",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("sw2h09") PartyHasItem("sw2h14") PartyHasItem("S!misc06") NumItemsPartyGT("sw2h20",1)
        PartyGoldGT(49999)~
      THEN REPLY @5
      DO ~TakePartyGold(50000)      DestroyGold(50000)
          TakePartyItemNum("sw2h09",1)   DestroyItem("sw2h09")
          TakePartyItemNum("sw2h14",1)   DestroyItem("sw2h14")
          TakePartyItemNum("sw2h20",1)   DestroyItem("sw2h20")
          TakePartyItemNum("sw2h20",1)   DestroyItem("sw2h20")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          GiveItemCreate("S!sw08",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("sw2h09") PartyHasItem("sw2h14") PartyHasItem("S!misc06") NumItemsPartyGT("sw2h20",1)
        PartyGoldGT(49999)~
      THEN REPLY @6
      DO ~TakePartyGold(50000)      DestroyGold(50000)
          TakePartyItemNum("sw2h09",1)   DestroyItem("sw2h09")
          TakePartyItemNum("sw2h14",1)   DestroyItem("sw2h14")
          TakePartyItemNum("sw2h20",1)   DestroyItem("sw2h20")
          TakePartyItemNum("sw2h20",1)   DestroyItem("sw2h20")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          GiveItemCreate("S!sw09",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("sw2h09") PartyHasItem("sw2h14") PartyHasItem("S!misc06") NumItemsPartyGT("sw2h20",1)
        PartyGoldGT(49999)~
      THEN REPLY @7
      DO ~TakePartyGold(50000)      DestroyGold(50000)
          TakePartyItemNum("sw2h09",1)   DestroyItem("sw2h09")
          TakePartyItemNum("sw2h14",1)   DestroyItem("sw2h14")
          TakePartyItemNum("sw2h20",1)   DestroyItem("sw2h20")
          TakePartyItemNum("sw2h20",1)   DestroyItem("sw2h20")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          GiveItemCreate("S!sw10",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("sw2h09") PartyHasItem("sw2h14") PartyHasItem("S!misc06") NumItemsPartyGT("sw2h20",1)
        PartyGoldGT(49999)~
      THEN REPLY @8
      DO ~TakePartyGold(50000)      DestroyGold(50000)
          TakePartyItemNum("sw2h09",1)   DestroyItem("sw2h09")
          TakePartyItemNum("sw2h14",1)   DestroyItem("sw2h14")
          TakePartyItemNum("sw2h20",1)   DestroyItem("sw2h20")
          TakePartyItemNum("sw2h20",1)   DestroyItem("sw2h20")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          GiveItemCreate("S!sw11",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
    IF ~PartyHasItem("sw2h09") PartyHasItem("sw2h14") PartyHasItem("S!misc06") NumItemsPartyGT("sw2h20",1)
        PartyGoldGT(49999)~
      THEN REPLY @9
      DO ~TakePartyGold(50000)      DestroyGold(50000)
          TakePartyItemNum("sw2h09",1)   DestroyItem("sw2h09")
          TakePartyItemNum("sw2h14",1)   DestroyItem("sw2h14")
          TakePartyItemNum("sw2h20",1)   DestroyItem("sw2h20")
          TakePartyItemNum("sw2h20",1)   DestroyItem("sw2h20")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          GiveItemCreate("S!sw12",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN robe
    SAY @2032 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iaclck29made","GLOBAL",1) Global("Iarobeforged","GLOBAL",0) PartyHasItem("wa2robe") NumItemsPartyGT("clck01",1) PartyHasItem("clck29") NumItemsPartyGT("S!misc01",2) PartyHasItem("scrl5k") PartyHasItem("S!misc02")
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("wa2robe",1)   DestroyItem("wa2robe")
          TakePartyItemNum("clck29",1)   DestroyItem("clck29")
          TakePartyItemNum("clck01",1)   DestroyItem("clck01")
          TakePartyItemNum("clck01",1)   DestroyItem("clck01")
          TakePartyItemNum("S!misc01",1)   DestroyItem("S!misc01")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("scrl5k",1)   DestroyItem("scrl5k")
          TakePartyItemNum("S!misc01",1)   DestroyItem("S!misc01")
          TakePartyItemNum("S!misc01",1)   DestroyItem("S!misc01")
          SetGlobal("Iarobeforged","GLOBAL",1)
          GiveItemCreate("S!robe01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN oak
    SAY @2033 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iadracoldead","GLOBAL",1) Dead("S!dracol") PartyHasItem("npstaf") PartyHasItem("potn28") PartyHasItem("S!misc02") PartyHasItem("S!misc06") PartyHasItem("S!misc33")
        PartyGoldGT(39999)~
      THEN REPLY @3
      DO ~TakePartyGold(40000)      DestroyGold(40000)
          TakePartyItemNum("npstaf",1)   DestroyItem("npstaf")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          TakePartyItemNum("S!misc33",1)   DestroyItem("S!misc33")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("potn28",1)   DestroyItem("potn28")
          GiveItemCreate("S!staf04",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN agile
    SAY @2034 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iabootsforged","GLOBAL",1) Dead("S!draggr") !Alignment(Player1,MASK_EVIL) !GlobalGT("Iap1notgood","GLOBAL",0) XPGT(Player1,4249999) GlobalGT("Iadraggrdead","GLOBAL",0) PartyHasItem("brac18") PartyHasItem("S!boot01") PartyHasItem("brac07") PartyHasItem("boot04")
        PartyGoldGT(49999)~
      THEN REPLY @3
      DO ~TakePartyGold(50000)      DestroyGold(50000)
          TakePartyItemNum("brac18",1)   DestroyItem("brac18")
          TakePartyItemNum("brac07",1)   DestroyItem("brac07")
          TakePartyItemNum("boot04",1)   DestroyItem("boot04")
          TakePartyItemNum("S!boot01",1)   DestroyItem("S!boot01")
          SetGlobal("Iabootsforged","GLOBAL",2)
          GiveItemCreate("S!boot02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN dagg1
    SAY @2035 IF ~~ THEN REPLY @2 GOTO 4
    IF ~NumItemsPartyGT("dagg02",1) PartyHasItem("misc42")
        PartyGoldGT(4999)~
      THEN REPLY @3
      DO ~TakePartyGold(5000)      DestroyGold(5000)
          TakePartyItemNum("dagg02",1)   DestroyItem("dagg02")
          TakePartyItemNum("dagg02",1)   DestroyItem("dagg02")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          GiveItemCreate("dagg15",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN dagg2
    SAY @2036 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("dagg15") PartyHasItem("scrl6m") PartyHasItem("S!misc02")
        PartyGoldGT(14999)~
      THEN REPLY @3
      DO ~TakePartyGold(15000)      DestroyGold(15000)
          TakePartyItemNum("dagg15",1)   DestroyItem("dagg15")
          TakePartyItemNum("scrl6m",1)   DestroyItem("scrl6m")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          GiveItemCreate("dagg24",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN dagg3
    SAY @2037 IF ~~ THEN REPLY @2 GOTO 4
    IF ~NumItemsPartyGT("dagg24",1) PartyHasItem("nebdag") PartyHasItem("S!misc06") NumItemsPartyGT("misc42",2)
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("dagg24",1)   DestroyItem("dagg24")
          TakePartyItemNum("dagg24",1)   DestroyItem("dagg24")
          TakePartyItemNum("nebdag",1)   DestroyItem("nebdag")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          GiveItemCreate("S!dagg01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN dagg4
    SAY @2038 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iakeepdagg21","GLOBAL",1) Global("Iadagg02forged","GLOBAL",0) PartyHasItem("S!dagg01") PartyHasItem("dagg21") NumItemsPartyGT("misc42",3)
        PartyGoldGT(149999)~
      THEN REPLY @3
      DO ~TakePartyGold(150000)      DestroyGold(150000)
          TakePartyItemNum("S!dagg01",1)   DestroyItem("S!dagg01")
          TakePartyItemNum("dagg21",1)   DestroyItem("dagg21")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          SetGlobal("Iadagg02forged","GLOBAL",1)
          GiveItemCreate("S!dagg02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN r5
    SAY @2039 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("ring18") PartyHasItem("scrl8t") PartyHasItem("S!misc02")
        PartyGoldGT(14999)~
      THEN REPLY @3
      DO ~TakePartyGold(15000)      DestroyGold(15000)
          TakePartyItemNum("ring18",1)   DestroyItem("ring18")
          TakePartyItemNum("scrl8t",1)   DestroyItem("scrl8t")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          GiveItemCreate("ring26",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN r6
    SAY @2040 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iaring04forged","GLOBAL",0) PartyHasItem("misc3c") PartyHasItem("plot03f") PartyHasItem("ring26") PartyHasItem("S!misc06") PartyHasItem("ring28")
        PartyGoldGT(59999)~
      THEN REPLY @3
      DO ~TakePartyGold(60000)      DestroyGold(60000)
          TakePartyItemNum("misc3c",1)   DestroyItem("misc3c")
          TakePartyItemNum("ring26",1)   DestroyItem("ring26")
          TakePartyItemNum("ring28",1)   DestroyItem("ring28")
          TakePartyItemNum("plot03f",1)   DestroyItem("plot03f")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          SetGlobal("Iaring04forged","GLOBAL",1)
          GiveItemCreate("S!ring04",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN horn
    SAY @2041 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("misc3k") NumItemsPartyGT("misc44",1) NumItemsPartyGT("misc42",1) PartyHasItem("dwdust")
        PartyGoldGT(9999)~
      THEN REPLY @3
      DO ~TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("misc3k",1)   DestroyItem("misc3k")
          TakePartyItemNum("misc44",1)   DestroyItem("misc44")
          TakePartyItemNum("misc44",1)   DestroyItem("misc44")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("dwdust",1)   DestroyItem("dwdust")
          GiveItemCreate("S!misc10",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN fla1
    SAY @2042 IF ~~ THEN REPLY @2 GOTO 4
    IF ~NumItemsPartyGT("misc43",1) NumItemsPartyGT("blun03",1)
        PartyGoldGT(4999)~
      THEN REPLY @3
      DO ~TakePartyGold(5000)      DestroyGold(5000)
          TakePartyItemNum("misc43",1)   DestroyItem("misc43")
          TakePartyItemNum("misc43",1)   DestroyItem("misc43")
          TakePartyItemNum("blun03",1)   DestroyItem("blun03")
          TakePartyItemNum("blun03",1)   DestroyItem("blun03")
          GiveItemCreate("blun13",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN fla2
    SAY @2043 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("scrl6m") PartyHasItem("blun13") PartyHasItem("S!misc02")
        PartyGoldGT(14999)~
      THEN REPLY @3
      DO ~TakePartyGold(15000)      DestroyGold(15000)
          TakePartyItemNum("scrl6m",1)   DestroyItem("scrl6m")
          TakePartyItemNum("blun13",1)   DestroyItem("blun13")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          GiveItemCreate("blun32",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN tree
    SAY @601 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("scrl98") PartyHasItem("blun10") PartyHasItem("S!misc02") PartyHasItem("blun22")
        PartyGoldGT(49999)~
      THEN REPLY @3
      DO ~TakePartyGold(50000)      DestroyGold(50000)
          TakePartyItemNum("scrl98",1)   DestroyItem("scrl98")
          TakePartyItemNum("blun10",1)   DestroyItem("blun10")
          TakePartyItemNum("blun22",1)   DestroyItem("blun22")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          GiveItemCreate("S!blun01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN shield
    SAY @603 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iasheltforged","GLOBAL",0) PartyHasItem("shld31") PartyHasItem("shld21") PartyHasItem("shld23") PartyHasItem("shld27")
        PartyGoldGT(89999)~
      THEN REPLY @3
      DO ~TakePartyGold(90000)      DestroyGold(90000)
          TakePartyItemNum("shld31",1)   DestroyItem("shld31")
          TakePartyItemNum("shld21",1)   DestroyItem("shld21")
          TakePartyItemNum("shld23",1)   DestroyItem("shld23")
          TakePartyItemNum("shld27",1)   DestroyItem("shld27")
          SetGlobal("Iasheltforged","GLOBAL",1)
          GiveItemCreate("S!shld02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN robele
    SAY @605 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("clck09") PartyHasItem("clck10") PartyHasItem("clck11") PartyHasItem("S!misc02") PartyHasItem("boot03") PartyHasItem("boot05") PartyHasItem("scrl6h")
        PartyGoldGT(79999)~
      THEN REPLY @3
      DO ~TakePartyGold(80000)      DestroyGold(80000)
          TakePartyItemNum("clck09",1)   DestroyItem("clck09")
          TakePartyItemNum("clck10",1)   DestroyItem("clck10")
          TakePartyItemNum("clck11",1)   DestroyItem("clck11")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("scrl6h",1)   DestroyItem("scrl6h")
          TakePartyItemNum("boot03",1)   DestroyItem("boot03")
          TakePartyItemNum("boot05",1)   DestroyItem("boot05")
          GiveItemCreate("S!robe02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN halb2
    SAY @607 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("halb03") PartyHasItem("scrl6m") PartyHasItem("S!misc02")
        PartyGoldGT(14999)~
      THEN REPLY @3
      DO ~TakePartyGold(15000)      DestroyGold(15000)
          TakePartyItemNum("halb03",1)   DestroyItem("halb03")
          TakePartyItemNum("scrl6m",1)   DestroyItem("scrl6m")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          GiveItemCreate("halb12",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN halb3
    SAY @609 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iakpvipedead","GLOBAL",1) PartyHasItem("halb12") PartyHasItem("halb08") PartyHasItem("halb09") PartyHasItem("ax1h13") PartyHasItem("scrl04") PartyHasItem("S!misc02") PartyHasItem("misc33") PartyHasItem("misc36") PartyHasItem("misc39")
        PartyGoldGT(149999)~
      THEN REPLY @3
      DO ~TakePartyGold(150000)      DestroyGold(150000)
          TakePartyItemNum("halb12",1)   DestroyItem("halb12")
          TakePartyItemNum("halb08",1)   DestroyItem("halb08")
          TakePartyItemNum("halb09",1)   DestroyItem("halb09")
          TakePartyItemNum("ax1h13",1)   DestroyItem("ax1h13")
          TakePartyItemNum("scrl04",1)   DestroyItem("scrl04")
          TakePartyItemNum("misc33",1)   DestroyItem("misc33")
          TakePartyItemNum("misc36",1)   DestroyItem("misc36")
          TakePartyItemNum("misc39",1)   DestroyItem("misc39")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          GiveItemCreate("S!halb02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN ioun
    SAY @611 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("helm18") PartyHasItem("helm19") PartyHasItem("helm20") NumItemsPartyGT("misc29",2) NumItemsPartyGT("misc26",2)
        PartyGoldGT(19999)~
      THEN REPLY @3
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("helm18",1)   DestroyItem("helm18")
          TakePartyItemNum("helm19",1)   DestroyItem("helm19")
          TakePartyItemNum("helm20",1)   DestroyItem("helm20")
          TakePartyItemNum("misc29",1)   DestroyItem("misc29")
          TakePartyItemNum("misc29",1)   DestroyItem("misc29")
          TakePartyItemNum("misc29",1)   DestroyItem("misc29")
          TakePartyItemNum("misc26",1)   DestroyItem("misc26")
          TakePartyItemNum("misc26",1)   DestroyItem("misc26")
          TakePartyItemNum("misc26",1)   DestroyItem("misc26")
          GiveItemCreate("S!helm01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN helm
    SAY @613 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iahelm04place","GLOBAL",4) PartyHasItem("helm21") PartyHasItem("helm04") NumItemsPartyGT("misc16",2)
        PartyGoldGT(39999)~
      THEN REPLY @3
      DO ~TakePartyGold(40000)      DestroyGold(40000)
          TakePartyItemNum("helm21",1)   DestroyItem("helm21")
          TakePartyItemNum("helm04",1)   DestroyItem("helm04")
          TakePartyItemNum("misc16",1)   DestroyItem("misc16")
          TakePartyItemNum("misc16",1)   DestroyItem("misc16")
          TakePartyItemNum("misc16",1)   DestroyItem("misc16")
          GiveItemCreate("S!helm02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN bastard
    SAY @615 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("sw1h42") PartyHasItem("scrl6m") PartyHasItem("S!misc02")
        PartyGoldGT(14999)~
      THEN REPLY @3
      DO ~TakePartyGold(15000)      DestroyGold(15000)
          TakePartyItemNum("sw1h42",1)   DestroyItem("sw1h42")
          TakePartyItemNum("scrl6m",1)   DestroyItem("scrl6m")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          GiveItemCreate("sw1h72",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN cuts
    SAY @617 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iasw13forged","GLOBAL",0) Global("Iagemgained","GLOBAL",1) Dead("S!vipe1") PartyHasItem("sw1h38") PartyHasItem("sw1h72") PartyHasItem("S!misc21")
        PartyGoldGT(49999)~
      THEN REPLY @3
      DO ~TakePartyGold(50000)      DestroyGold(50000)
          TakePartyItemNum("sw1h38",1)   DestroyItem("sw1h38")
          TakePartyItemNum("sw1h72",1)   DestroyItem("sw1h72")
          TakePartyItemNum("S!misc21",1)   DestroyItem("S!misc21")
          SetGlobal("Iasw13forged","GLOBAL",1)
          GiveItemCreate("S!sw13",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN halb4
    SAY @619 IF ~~ THEN REPLY @2 GOTO 4
    IF ~NumItemsPartyGT("halb02",1) PartyHasItem("misc43")
        PartyGoldGT(9999)~
      THEN REPLY @3
      DO ~TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("halb02",1)   DestroyItem("halb02")
          TakePartyItemNum("halb02",1)   DestroyItem("halb02")
          TakePartyItemNum("misc43",1)   DestroyItem("misc43")
          GiveItemCreate("halb03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN cloud
    SAY @621 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("S!misc13") PartyHasItem("S!misc02") NumItemsPartyGT("potn06",2) NumItemsPartyGT("misc21",2) PartyHasItem("belt01")
        PartyGoldGT(29999)~
      THEN REPLY @3
      DO ~TakePartyGold(30000)      DestroyGold(30000)
          TakePartyItemNum("S!misc13",1)   DestroyItem("S!misc13")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("potn06",1)   DestroyItem("potn06")
          TakePartyItemNum("potn06",1)   DestroyItem("potn06")
          TakePartyItemNum("potn06",1)   DestroyItem("potn06")
          TakePartyItemNum("misc21",1)   DestroyItem("misc21")
          TakePartyItemNum("misc21",1)   DestroyItem("misc21")
          TakePartyItemNum("misc21",1)   DestroyItem("misc21")
          TakePartyItemNum("belt01",1)   DestroyItem("belt01")
          GiveItemCreate("S!belt02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN lei
    SAY @623 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("S!amul01")
        PartyHasItem("S!misc14")
        NumItemsPartyGT("amul14",2)
        NumItemsPartyGT("amul05",2)
        NumItemsPartyGT("potn37",2)
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("S!misc14",1)   DestroyItem("S!misc14")
          TakePartyItemNum("S!amul01",1)   DestroyItem("S!amul01")
          TakePartyItemNum("amul14",1)   DestroyItem("amul14")
          TakePartyItemNum("amul14",1)   DestroyItem("amul14")
          TakePartyItemNum("amul14",1)   DestroyItem("amul14")
          TakePartyItemNum("amul05",1)   DestroyItem("amul05")
          TakePartyItemNum("amul05",1)   DestroyItem("amul05")
          TakePartyItemNum("amul05",1)   DestroyItem("amul05")
          TakePartyItemNum("potn37",1)   DestroyItem("potn37")
          TakePartyItemNum("potn37",1)   DestroyItem("potn37")
          TakePartyItemNum("potn37",1)   DestroyItem("potn37")
          GiveItemCreate("S!amul03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN circlet
    SAY @625 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("S!helm03") PartyHasItem("S!misc01") PartyHasItem("S!misc14")
        PartyGoldGT(99999)~
      THEN REPLY @3
      DO ~TakePartyGold(100000)      DestroyGold(100000)
          TakePartyItemNum("S!misc14",1)   DestroyItem("S!misc14")
          TakePartyItemNum("S!misc01",1)   DestroyItem("S!misc01")
          TakePartyItemNum("S!helm03",1)   DestroyItem("S!helm03")
          GiveItemCreate("S!helm04",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN brac
    SAY @627 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("brac19") PartyHasItem("brac10") PartyHasItem("misc9a") NumItemsPartyGT("misc30",7)
        PartyGoldGT(79999)~
      THEN REPLY @3
      DO ~TakePartyGold(80000)      DestroyGold(80000)
          TakePartyItemNum("brac19",1)   DestroyItem("brac19")
          TakePartyItemNum("brac10",1)   DestroyItem("brac10")
          TakePartyItemNum("misc9a",1)   DestroyItem("misc9a")
          TakePartyItemNum("misc30",1)   DestroyItem("misc30")
          TakePartyItemNum("misc30",1)   DestroyItem("misc30")
          TakePartyItemNum("misc30",1)   DestroyItem("misc30")
          TakePartyItemNum("misc30",1)   DestroyItem("misc30")
          TakePartyItemNum("misc30",1)   DestroyItem("misc30")
          TakePartyItemNum("misc30",1)   DestroyItem("misc30")
          TakePartyItemNum("misc30",1)   DestroyItem("misc30")
          TakePartyItemNum("misc30",1)   DestroyItem("misc30")
          GiveItemCreate("S!brac01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN vorpal
    SAY @629 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("sw2h15") PartyHasItem("sw2h16") PartyHasItem("S!misc06") NumItemsPartyGT("sw2h20",2) NumItemsPartyGT("misc42",3)
        PartyGoldGT(99999)~
      THEN REPLY @3
      DO ~TakePartyGold(100000)      DestroyGold(100000)
          TakePartyItemNum("sw2h15",1)   DestroyItem("sw2h15")
          TakePartyItemNum("sw2h16",1)   DestroyItem("sw2h16")
          TakePartyItemNum("sw2h20",1)   DestroyItem("sw2h20")
          TakePartyItemNum("sw2h20",1)   DestroyItem("sw2h20")
          TakePartyItemNum("sw2h20",1)   DestroyItem("sw2h20")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          GiveItemCreate("S!sw14",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN rimed
    SAY @631 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("blun31") PartyHasItem("plot03i") PartyHasItem("compon18") PartyHasItem("wand06") PartyHasItem("misc33")
        PartyGoldGT(49999)~
      THEN REPLY @3
      DO ~TakePartyGold(50000)      DestroyGold(50000)
          TakePartyItemNum("blun31",1)   DestroyItem("blun31")
          TakePartyItemNum("plot03i",1)   DestroyItem("plot03i")
          TakePartyItemNum("compon18",1)   DestroyItem("compon18")
          TakePartyItemNum("misc33",1)   DestroyItem("misc33")
          TakePartyItemNum("wand06",1)   DestroyItem("wand06")
          GiveItemCreate("S!blun02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN thsword
    SAY @633 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("sw2h11") PartyHasItem("scrl6m") PartyHasItem("S!misc02")
        PartyGoldGT(14999)~
      THEN REPLY @3
      DO ~TakePartyGold(15000)      DestroyGold(15000)
          TakePartyItemNum("sw2h11",1)   DestroyItem("sw2h11")
          TakePartyItemNum("scrl6m",1)   DestroyItem("scrl6m")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          GiveItemCreate("sw2h20",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN ankheg
    SAY @635 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("plat06") PartyHasItem("S!misc12") PartyHasItem("plat13") NumItemsPartyGT("misc20",2) NumItemsPartyGT("misc16",2)
        PartyGoldGT(49999)~
      THEN REPLY @3
      DO ~TakePartyGold(50000)      DestroyGold(50000)
          TakePartyItemNum("plat06",1)   DestroyItem("plat06")
          TakePartyItemNum("plat13",1)   DestroyItem("plat13")
          TakePartyItemNum("S!misc12",1)   DestroyItem("S!misc12")
          TakePartyItemNum("misc20",1)   DestroyItem("misc20")
          TakePartyItemNum("misc20",1)   DestroyItem("misc20")
          TakePartyItemNum("misc20",1)   DestroyItem("misc20")
          TakePartyItemNum("misc16",1)   DestroyItem("misc16")
          TakePartyItemNum("misc16",1)   DestroyItem("misc16")
          TakePartyItemNum("misc16",1)   DestroyItem("misc16")
          GiveItemCreate("S!plat03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN potion
    SAY @637 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("S!misc15") PartyHasItem("S!misc06")
        PartyGoldGT(49999)~
      THEN REPLY @3
      DO ~TakePartyGold(50000)      DestroyGold(50000)
          TakePartyItemNum("S!misc15",1)   DestroyItem("S!misc15")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          GiveItemCreate("S!potn01",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN r7
    SAY @639 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("ring35") PartyHasItem("brac17") PartyHasItem("ring36") PartyHasItem("ring06") NumItemsPartyGT("misc45",1)
        PartyGoldGT(29999)~
      THEN REPLY @3
      DO ~TakePartyGold(30000)      DestroyGold(30000)
          TakePartyItemNum("ring35",1)   DestroyItem("ring35")
          TakePartyItemNum("ring36",1)   DestroyItem("ring36")
          TakePartyItemNum("ring06",1)   DestroyItem("ring06")
          TakePartyItemNum("brac17",1)   DestroyItem("brac17")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          GiveItemCreate("S!ring05",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN buckler
    SAY @641 IF ~~ THEN REPLY @2 GOTO 4
    IF ~NumItemsPartyGT("shld17",2) NumItemsPartyGT("misc45",2) NumItemsPartyGT("misc43",2) NumItemsPartyGT("misc33",2)
        PartyGoldGT(19999)~
      THEN REPLY @3
      DO ~TakePartyGold(20000)      DestroyGold(20000)
          TakePartyItemNum("shld17",1)   DestroyItem("shld17")
          TakePartyItemNum("shld17",1)   DestroyItem("shld17")
          TakePartyItemNum("shld17",1)   DestroyItem("shld17")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          TakePartyItemNum("misc45",1)   DestroyItem("misc45")
          TakePartyItemNum("misc43",1)   DestroyItem("misc43")
          TakePartyItemNum("misc43",1)   DestroyItem("misc43")
          TakePartyItemNum("misc43",1)   DestroyItem("misc43")
          TakePartyItemNum("misc33",1)   DestroyItem("misc33")
          TakePartyItemNum("misc33",1)   DestroyItem("misc33")
          TakePartyItemNum("misc33",1)   DestroyItem("misc33")
          GiveItemCreate("S!shld03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN ms1
    SAY @643 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("blun15") PartyHasItem("scrl6m") PartyHasItem("S!misc02")
        PartyGoldGT(14999)~
      THEN REPLY @3
      DO ~TakePartyGold(15000)      DestroyGold(15000)
          TakePartyItemNum("blun15",1)   DestroyItem("blun15")
          TakePartyItemNum("scrl6m",1)   DestroyItem("scrl6m")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          GiveItemCreate("blun34",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN ms2
    SAY @645 IF ~~ THEN REPLY @2 GOTO 4
    IF ~NumItemsPartyGT("blun34",1) NumItemsPartyGT("potn07",2) PartyHasItem("S!misc02") PartyHasItem("blun19")
        PartyGoldGT(59999)~
      THEN REPLY @3
      DO ~TakePartyGold(60000)      DestroyGold(60000)
          TakePartyItemNum("blun34",1)   DestroyItem("blun34")
          TakePartyItemNum("blun34",1)   DestroyItem("blun34")
          TakePartyItemNum("potn07",1)   DestroyItem("potn07")
          TakePartyItemNum("potn07",1)   DestroyItem("potn07")
          TakePartyItemNum("potn07",1)   DestroyItem("potn07")
          TakePartyItemNum("blun19",1)   DestroyItem("blun19")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          SetGlobal("Iablun03forged","GLOBAL",1)
          GiveItemCreate("S!blun03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN cloak1
    SAY @647 IF ~~ THEN REPLY @2 GOTO 4
    IF ~NumItemsPartyGT("clck01",1) PartyHasItem("amul12")
        PartyGoldGT(29999)~
      THEN REPLY @3
      DO ~TakePartyGold(30000)      DestroyGold(30000)
          TakePartyItemNum("clck01",1)   DestroyItem("clck01")
          TakePartyItemNum("clck01",1)   DestroyItem("clck01")
          TakePartyItemNum("amul12",1)   DestroyItem("amul12")
          GiveItemCreate("clck02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN rod
    SAY @651 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("rods04") PartyHasItem("scrl5i") PartyHasItem("S!misc02") PartyHasItem("staf24") PartyHasItem("staf19") PartyHasItem("S!misc06") NumItemsPartyGT("S!scrl01",2)
        PartyGoldGT(149999)~
      THEN REPLY @3
      DO ~TakePartyGold(150000)      DestroyGold(150000)
          TakePartyItemNum("rods04",1)   DestroyItem("rods04")
          TakePartyItemNum("staf24",1)   DestroyItem("staf24")
          TakePartyItemNum("staf19",1)   DestroyItem("staf19")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("scrl5i",1)   DestroyItem("scrl5i")
          TakePartyItemNum("S!scrl01",1)   DestroyItem("S!scrl01")
          TakePartyItemNum("S!scrl01",1)   DestroyItem("S!scrl01")
          TakePartyItemNum("S!scrl01",1)   DestroyItem("S!scrl01")
          GiveItemCreate("S!staf05",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN quarter
    SAY @653 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("staf18") PartyHasItem("scrl6m") PartyHasItem("S!misc02")
        PartyGoldGT(14999)~
      THEN REPLY @3
      DO ~TakePartyGold(15000)      DestroyGold(15000)
          TakePartyItemNum("staf18",1)   DestroyItem("staf18")
          TakePartyItemNum("scrl6m",1)   DestroyItem("scrl6m")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          GiveItemCreate("staf24",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN elf
    SAY @655 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Ialegacybook","GLOBAL",1) PartyHasItem("S!misc16") PartyHasItem("S!misc06") NumItemsPartyGT("misc44",1)
        PartyGoldGT(49999)~
      THEN REPLY @3
      DO ~TakePartyGold(50000)      DestroyGold(50000)
          TakePartyItemNum("S!misc16",1)   DestroyItem("S!misc16")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          TakePartyItemNum("misc44",1)   DestroyItem("misc44")
          TakePartyItemNum("misc44",1)   DestroyItem("misc44")
          GiveItemCreate("S!potn02",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN long
    SAY @657 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("sw1h41") PartyHasItem("S!misc02") PartyHasItem("scrl6m")
        PartyGoldGT(14999)~
      THEN REPLY @3
      DO ~TakePartyGold(15000)      DestroyGold(15000)
          TakePartyItemNum("sw1h41",1)   DestroyItem("sw1h41")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("scrl6m",1)   DestroyItem("scrl6m")
          GiveItemCreate("sw1h73",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN charm
    SAY @659 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iahelm05forged","GLOBAL",0) Global("EnteredAR0907","GLOBAL",1) PartyHasItem("helm06") PartyHasItem("S!misc02")  PartyHasItem("S!misc36") PartyHasItem("potn33") PartyHasItem("S!helm06") NumItemsPartyGT("scrl5f",5)
        PartyGoldGT(59999)~
      THEN REPLY @3
      DO ~TakePartyGold(60000)      DestroyGold(60000)
          TakePartyItemNum("helm06",1)   DestroyItem("helm06")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("S!misc36",1)   DestroyItem("S!misc36")
          TakePartyItemNum("potn33",1)   DestroyItem("potn33")
          TakePartyItemNum("S!helm06",1)   DestroyItem("S!helm06")
          TakePartyItemNum("scrl5f",1)   DestroyItem("scrl5f")
          TakePartyItemNum("scrl5f",1)   DestroyItem("scrl5f")
          TakePartyItemNum("scrl5f",1)   DestroyItem("scrl5f")
          TakePartyItemNum("scrl5f",1)   DestroyItem("scrl5f")
          TakePartyItemNum("scrl5f",1)   DestroyItem("scrl5f")
          TakePartyItemNum("scrl5f",1)   DestroyItem("scrl5f")
          SetGlobal("Iahelm05forged","GLOBAL",1)
          GiveItemCreate("S!helm05",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN janc
    SAY @661 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("xbow12") PartyHasItem("xbow06") PartyHasItem("scrl7r") PartyHasItem("S!misc02") NumItemsPartyGT("scrl95",1)
        PartyGoldGT(39999)~
      THEN REPLY @3
      DO ~TakePartyGold(40000)      DestroyGold(40000)
          TakePartyItemNum("xbow12",1)   DestroyItem("xbow12")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("xbow06",1)   DestroyItem("xbow06")
          TakePartyItemNum("scrl7r",1)   DestroyItem("scrl7r")
          TakePartyItemNum("scrl95",1)   DestroyItem("scrl95")
          TakePartyItemNum("scrl95",1)   DestroyItem("scrl95")
          GiveItemCreate("S!janbow",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN throat
    SAY @663 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("sw1h28") PartyHasItem("sw1h25") PartyHasItem("sw1h74") PartyHasItem("sw1h73") NumItemsPartyGT("misc42",3) NumItemsPartyGT("misc20",3)
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("sw1h28",1)   DestroyItem("sw1h28")
          TakePartyItemNum("sw1h25",1)   DestroyItem("sw1h25")
          TakePartyItemNum("sw1h74",1)   DestroyItem("sw1h74")
          TakePartyItemNum("sw1h73",1)   DestroyItem("sw1h73")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("misc42",1)   DestroyItem("misc42")
          TakePartyItemNum("misc20",1)   DestroyItem("misc20")
          TakePartyItemNum("misc20",1)   DestroyItem("misc20")
          TakePartyItemNum("misc20",1)   DestroyItem("misc20")
          TakePartyItemNum("misc20",1)   DestroyItem("misc20")
          GiveItemCreate("S!sw15",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN spider
    SAY @665 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iaspideqdead","GLOBAL",1) PartyHasItem("misc3e") PartyHasItem("S!misc18") PartyHasItem("S!misc06")
        PartyGoldGT(59999)~
      THEN REPLY @3
      DO ~TakePartyGold(60000)      DestroyGold(60000)
          TakePartyItemNum("misc3e",1)   DestroyItem("misc3e")
          TakePartyItemNum("S!misc18",1)   DestroyItem("S!misc18")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          GiveItemCreate("S!spifig",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN cat
    SAY @667 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("S!catfig") PartyHasItem("scrlb4") PartyHasItem("S!misc02") NumItemsPartyGT("scrl58",5)
        PartyGoldGT(79999)~
      THEN REPLY @3
      DO ~TakePartyGold(80000)      DestroyGold(80000)
          TakePartyItemNum("S!catfig",1)   DestroyItem("S!catfig")
          TakePartyItemNum("scrlb4",1)   DestroyItem("scrlb4")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("scrl58",1)   DestroyItem("scrl58")
          TakePartyItemNum("scrl58",1)   DestroyItem("scrl58")
          TakePartyItemNum("scrl58",1)   DestroyItem("scrl58")
          TakePartyItemNum("scrl58",1)   DestroyItem("scrl58")
          TakePartyItemNum("scrl58",1)   DestroyItem("scrl58")
          TakePartyItemNum("scrl58",1)   DestroyItem("scrl58")
          GiveItemCreate("S!catfi2",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN ttruth
    SAY @669 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iattforged","GLOBAL",0) PartyHasItem("S!misc30") PartyHasItem("S!misc31") PartyHasItem("S!misc06") PartyHasItem("misc6m")
        PartyGoldGT(99999)~
      THEN REPLY @3
      DO ~TakePartyGold(100000)      DestroyGold(100000)
          TakePartyItemNum("S!misc30",1)   DestroyItem("S!misc30")
          TakePartyItemNum("S!misc31",1)   DestroyItem("S!misc31")
          TakePartyItemNum("misc6m",1)   DestroyItem("misc6m")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          SetGlobal("Iattforged","GLOBAL",1)
          GiveItemCreate("S!sw16",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN vagran
    SAY @671 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iacoralforged","GLOBAL",0) Class(Player1,RANGER_ALL) Global("Iamvagrant","GLOBAL",1) PartyHasItem("S!leat04") PartyHasItem("S!misc34") PartyHasItem("S!clck03")
        PartyGoldGT(59999)~
      THEN REPLY @3
      DO ~TakePartyGold(60000)      DestroyGold(60000)
          TakePartyItemNum("S!leat04",1)   DestroyItem("S!leat04")
          TakePartyItemNum("S!misc34",1)   DestroyItem("S!misc34")
          TakePartyItemNum("S!clck03",1)   DestroyItem("S!clck03")
          SetGlobal("Iacoralforged","GLOBAL",1)
          GiveItemCreate("S!leat05",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN keldorn
    SAY @673 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iaplat04forged","GLOBAL",0) Reputation(Player1,20) PartyHasItem("npplat") PartyHasItem("belt10") PartyHasItem("plat17") PartyHasItem("S!misc06") NumItemsPartyGT("misc6z",2) NumItemsPartyGT("misc41",4)
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("npplat",1)   DestroyItem("npplat")
          TakePartyItemNum("belt10",1)   DestroyItem("belt10")
          TakePartyItemNum("plat17",1)   DestroyItem("plat17")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          TakePartyItemNum("misc6z",1)   DestroyItem("misc6z")
          TakePartyItemNum("misc6z",1)   DestroyItem("misc6z")
          TakePartyItemNum("misc6z",1)   DestroyItem("misc6z")
          TakePartyItemNum("misc41",1)   DestroyItem("misc41")
          TakePartyItemNum("misc41",1)   DestroyItem("misc41")
          TakePartyItemNum("misc41",1)   DestroyItem("misc41")
          TakePartyItemNum("misc41",1)   DestroyItem("misc41")
          TakePartyItemNum("misc41",1)   DestroyItem("misc41")
          SetGlobal("Iaplat04forged","GLOBAL",1)
          GiveItemCreate("S!plat04",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN wyrm
    SAY @675 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iagrplatforged","GLOBAL",0) PartyHasItem("S!scaleg") Dead("S!draggr") !Alignment(Player1,MASK_EVIL) !GlobalGT("Iap1notgood","GLOBAL",0) XPGT(Player1,4249999) GlobalGT("Iadraggrdead","GLOBAL",0)
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("S!scaleg",1)   DestroyItem("S!scaleg")
          SetGlobal("Iagrplatforged","GLOBAL",1)
          GiveItemCreate("S!plat05",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN ancient
    SAY @677 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iaplat06forged","GLOBAL",0) PartyHasItem("S!scaler") Dead("fsdragon") Global("Iaancientdead","GLOBAL",1)
        PartyGoldGT(124999)~
      THEN REPLY @3
      DO ~TakePartyGold(125000)      DestroyGold(125000)
          TakePartyItemNum("S!scaler",1)   DestroyItem("S!scaler")
          SetGlobal("Iaplat06forged","GLOBAL",1)
          GiveItemCreate("S!plat06",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN longf
    SAY @679 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Ialongfforged","GLOBAL",0) Global("Iaspideqdead","GLOBAL",1) Dead("S!spideq") GlobalGT("VanyaJob","GLOBAL",1) NumItemsPartyGT("sw1h73",2) PartyHasItem("scrla4") PartyHasItem("S!misc02") NumItemsPartyGT("S!scrl03",2)
        PartyGoldGT(44999)~
      THEN REPLY @3
      DO ~TakePartyGold(45000)      DestroyGold(45000)
          TakePartyItemNum("sw1h73",1)   DestroyItem("sw1h73")
          TakePartyItemNum("sw1h73",1)   DestroyItem("sw1h73")
          TakePartyItemNum("sw1h73",1)   DestroyItem("sw1h73")
          TakePartyItemNum("scrla4",1)   DestroyItem("scrla4")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("S!scrl03",1)   DestroyItem("S!scrl03")
          TakePartyItemNum("S!scrl03",1)   DestroyItem("S!scrl03")
          TakePartyItemNum("S!scrl03",1)   DestroyItem("S!scrl03")
          SetGlobal("Ialongfforged","GLOBAL",1)
          GiveItemCreate("S!sw17",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN necro
    SAY @681 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("S!amul04") PartyHasItem("S!misc06") PartyHasItem("amul21") PartyHasItem("amul16") PartyHasItem("S!scrl21") PartyHasItem("S!misc02")
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("S!amul04",1)   DestroyItem("S!amul04")
          TakePartyItemNum("amul21",1)   DestroyItem("amul21")
          TakePartyItemNum("amul16",1)   DestroyItem("amul16")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          TakePartyItemNum("S!scrl21",1)   DestroyItem("S!scrl21")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          GiveItemCreate("S!amul05",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN staff1
    SAY @687 IF ~~ THEN REPLY @2 GOTO 4
    IF ~PartyHasItem("staf24") PartyHasItem("staf05") NumItemsPartyGT("potn12",2) PartyHasItem("S!misc02")
        PartyGoldGT(59999)~
      THEN REPLY @3
      DO ~TakePartyGold(60000)      DestroyGold(60000)
          TakePartyItemNum("staf24",1)   DestroyItem("staf24")
          TakePartyItemNum("staf05",1)   DestroyItem("staf05")
          TakePartyItemNum("potn12",1)   DestroyItem("potn12")
          TakePartyItemNum("potn12",1)   DestroyItem("potn12")
          TakePartyItemNum("potn12",1)   DestroyItem("potn12")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          GiveItemCreate("S!staf06",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN staff2
    SAY @689 IF ~~ THEN REPLY @2 GOTO 4
    IF ~GlobalGT("Chapter","GLOBAL",5) Global("Iarynnplace","GLOBAL",5) Global("Iastaf07forged","GLOBAL",0) PartyHasItem("S!staf06") PartyHasItem("staf20") NumItemsPartyGT("dwdust",1) PartyHasItem("S!misc02") PartyHasItem("S!scrl07") PartyHasItem("scrlb2")
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("S!staf06",1)   DestroyItem("S!staf06")
          TakePartyItemNum("staf20",1)   DestroyItem("staf20")
          TakePartyItemNum("dwdust",1)   DestroyItem("dwdust")
          TakePartyItemNum("dwdust",1)   DestroyItem("dwdust")
          TakePartyItemNum("scrlb2",1)   DestroyItem("scrlb2")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("S!scrl07",1)   DestroyItem("S!scrl07")
          SetGlobal("Iastaf07forged","GLOBAL",1)
          GiveItemCreate("S!staf07",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN arcane
    SAY @691 IF ~~ THEN REPLY @2 GOTO 4
    IF ~GlobalGT("Chapter","GLOBAL",5) GlobalGT("Iaoldonejob","GLOBAL",3) Class(Player1,MAGE_ALL) CheckStat(Player1,6,SCRIPTINGSTATE1) Dead("S!BOLICH") PartyHasItem("S!clck04") PartyHasItem("S!clck06") PartyHasItem("S!clck02")
        PartyGoldGT(59999)~
      THEN REPLY @3
      DO ~TakePartyGold(60000)      DestroyGold(60000)
          TakePartyItemNum("S!clck04",1)   DestroyItem("S!clck04")
          TakePartyItemNum("S!clck06",1)   DestroyItem("S!clck06")
          TakePartyItemNum("S!clck02",1)   DestroyItem("S!clck02")
          GiveItemCreate("S!clck07",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN scarlet
    SAY @693 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iahelm08forged","GLOBAL",0) GlobalGT("Chapter","GLOBAL",5) GlobalGT("Ialavokjob","GLOBAL",4) GlobalGT("Iaoldsquijob","GLOBAL",3) GlobalGT("Iasquirjob","GLOBAL",8) PartyHasItem("S!helm06") PartyHasItem("S!helm07") PartyHasItem("S!misc45")
        PartyGoldGT(39999)~
      THEN REPLY @3
      DO ~TakePartyGold(40000)      DestroyGold(40000)
          TakePartyItemNum("S!misc45",1)   DestroyItem("S!misc45")
          TakePartyItemNum("S!helm06",1)   DestroyItem("S!helm06")
          TakePartyItemNum("S!helm07",1)   DestroyItem("S!helm07")
          SetGlobal("Iahelm08forged","GLOBAL",1)
          GiveItemCreate("S!helm08",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN necro2
    SAY @695 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iaamul06forged","GLOBAL",0) Class(Player1,MAGE_ALL) CheckStat(Player1,6,SCRIPTINGSTATE1) !Class(Player1,THIEF_ALL) !Class(Player1,FIGHTER_ALL) !Class(Player1,CLERIC_ALL) !Class(Player1,SORCERER) PartyHasItem("S!amul05") Global("Iahespforged","GLOBAL",0) Dead("S!orcus") GlobalGT("Iaorcusdead","GLOBAL",0) PartyHasItem("S!misc06") PartyHasItem("S!misc29")
        PartyGoldGT(89999)~
      THEN REPLY @3
      DO ~TakePartyGold(90000)      DestroyGold(90000)
          TakePartyItemNum("S!amul05",1)   DestroyItem("S!amul05")
          TakePartyItemNum("S!misc29",1)   DestroyItem("S!misc29")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          SetGlobal("Iaamul06forged","GLOBAL",1)
          GiveItemCreate("S!amul06",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN swash
    SAY @697 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Ialeat06forged","GLOBAL",0) Global("Iamisc60found","GLOBAL",1) Dead("TELWRAI") PartyHasItem("S!misc60") PartyHasItem("leat09") PartyHasItem("potn37") PartyHasItem("S!misc02")
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("leat09",1)   DestroyItem("leat09")
          TakePartyItemNum("S!misc60",1)   DestroyItem("S!misc60")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("potn37",1)   DestroyItem("potn37")
          SetGlobal("Ialeat06forged","GLOBAL",1)
          GiveItemCreate("S!leat06",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN oak2
    SAY @699 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iadracoldead","GLOBAL",1) Global("Iastaf08forged","GLOBAL",0) Dead("S!dracol") PartyHasItem("S!staf04") PartyHasItem("S!misc02") PartyHasItem("miscbq") PartyHasItem("potn33")
        PartyGoldGT(79999)~
      THEN REPLY @3
      DO ~TakePartyGold(80000)      DestroyGold(80000)
          TakePartyItemNum("S!staf04",1)   DestroyItem("S!staf04")
          TakePartyItemNum("S!misc02",1)   DestroyItem("S!misc02")
          TakePartyItemNum("potn33",1)   DestroyItem("potn33")
          TakePartyItemNum("miscbq",1)   DestroyItem("miscbq")
          SetGlobal("Iastaf08forged","GLOBAL",1)
          GiveItemCreate("S!staf08",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN swash2
    SAY @751 IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iasw18forged","GLOBAL",0) Global("Ialongfforged","GLOBAL",1) Dead("S!spideq") PartyHasItem("S!sw17") PartyHasItem("S!sw15") PartyHasItem("S!misc06")
        PartyGoldGT(79999)~
      THEN REPLY @3
      DO ~TakePartyGold(80000)      DestroyGold(80000)
          TakePartyItemNum("S!sw17",1)   DestroyItem("S!sw17")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          TakePartyItemNum("S!sw15",1)   DestroyItem("S!sw15")
          SetGlobal("Iasw18forged","GLOBAL",1)
          GiveItemCreate("S!sw18",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN neera
    SAY @753
    IF ~~ THEN REPLY @2 GOTO 4
    IF ~Global("Iarobe03forged","GLOBAL",0)
        PartyHasItem("ohnrobe2")
        PartyHasItem("ohnrobe3")
        PartyHasItem("ohnmbird")
        PartyHasItem("S!misc33")
        NumItemsPartyGT("S!misc01",1)
        PartyHasItem("scrl8e")
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("ohnrobe2",1)   DestroyItem("ohnrobe2")
          TakePartyItemNum("ohnrobe3",1)   DestroyItem("ohnrobe3")
          TakePartyItemNum("ohnmbird",1)   DestroyItem("ohnmbird")
          TakePartyItemNum("S!misc01",1)   DestroyItem("S!misc01")
          TakePartyItemNum("S!misc01",1)   DestroyItem("S!misc01")
          TakePartyItemNum("S!misc33",1)   DestroyItem("S!misc33")
          TakePartyItemNum("scrl8e",1)   DestroyItem("scrl8e")
          SetGlobal("Iarobe03forged","GLOBAL",1)
          GiveItemCreate("S!robe03",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN rasaad
    SAY @755
    IF ~~ THEN REPLY @2 GOTO 13
    IF ~Global("Iaboot04forged","GLOBAL",0)
        PartyHasItem("rsboot")
        PartyHasItem("key23")
        PartyHasItem("ohramul1")
        PartyHasItem("ohrclck3")
        PartyHasItem("ohreyeb")
        PartyHasItem("S!misc06")
        NumItemsPartyGT("S!scrl03",2)
        PartyGoldGT(74999)~
      THEN REPLY @3
      DO ~TakePartyGold(75000)      DestroyGold(75000)
          TakePartyItemNum("rsboot",1)   DestroyItem("rsboot")
          TakePartyItemNum("key23",1)   DestroyItem("key23")
          TakePartyItemNum("ohramul1",1)   DestroyItem("ohramul1")
          TakePartyItemNum("ohrclck3",1)   DestroyItem("ohrclck3")
          TakePartyItemNum("ohreyeb",1)   DestroyItem("ohreyeb")
          TakePartyItemNum("S!misc06",1)   DestroyItem("S!misc06")
          TakePartyItemNum("S!scrl03",1)   DestroyItem("S!scrl03")
          TakePartyItemNum("S!scrl03",1)   DestroyItem("S!scrl03")
          TakePartyItemNum("S!scrl03",1)   DestroyItem("S!scrl03")
          SetGlobal("Iaboot04forged","GLOBAL",1)
          GiveItemCreate("S!boot04",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN spear1
    SAY @757 IF ~~ THEN REPLY @2 GOTO 13
    IF ~NumItemsPartyGT("sper02",1) PartyHasItem("misc43")
        PartyGoldGT(9999)~
      THEN REPLY @3
      DO ~TakePartyGold(10000)      DestroyGold(10000)
          TakePartyItemNum("sper02",1)   DestroyItem("sper02")
          TakePartyItemNum("sper02",1)   DestroyItem("sper02")
          TakePartyItemNum("misc43",1)   DestroyItem("misc43")
          GiveItemCreate("sper05",Player1,1,1,1)
          CreateVisualEffect("spcrtwpn",[401.348])~ EXIT
  END

  IF ~~ THEN BEGIN regular
    SAY #66558 /* ~Ooo!  Needs must I to look through your belongings!  Match them to recipes, must I!  Let me see...~ [BOTSM19] */
    COPY_TRANS BOTSMITH 4
  END
END