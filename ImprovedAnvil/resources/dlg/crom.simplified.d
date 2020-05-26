// leat2
ALTER_TRANS WSMITH01
  BEGIN 64 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~PartyHasItem("leat17") PartyHasItem("leat14") PartyHasItem("leat08") PartyHasItem("scrl5k") PartyHasItem("potn39") PartyHasItem("S!misc02")~
  "ACTION" ~TakePartyGold(30000) DestroyGold(30000) TakePartyItemNum("leat17",1) DestroyItem("leat17") TakePartyItemNum("leat14",1) DestroyItem("leat14") TakePartyItemNum("leat08",1) DestroyItem("leat08") TakePartyItemNum("scrl5k",1) DestroyItem("scrl5k") TakePartyItemNum("potn39",1) DestroyItem("potn39") TakePartyItemNum("S!misc02",1) DestroyItem("S!misc02") GiveItemCreate("S!leat02",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 64 @50

// flail
ALTER_TRANS WSMITH01
  BEGIN 66 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~Class(Player1,RANGER_ALL) !Class(Player1,CLERIC_ALL) Global("Iaflailplace","GLOBAL",3) GlobalGT("Chapter","GLOBAL",5) NumItemsPartyGT("blun32",1) PartyHasItem("blun24") PartyHasItem("waflail") NumItemsPartyGT("miscal",9) PartyGoldGT(149999)~
  "ACTION" ~TakePartyGold(150000) DestroyGold(150000) TakePartyItemNum("blun32",2) DestroyItem("blun32") DestroyItem("blun32") TakePartyItemNum("blun24",1) DestroyItem("blun24") TakePartyItemNum("waflail",1) DestroyItem("waflail") TakePartyItemNum("miscal",10) DestroyItem("miscal")DestroyItem("miscal") DestroyItem("miscal") DestroyItem("miscal") DestroyItem("miscal") DestroyItem("miscal") DestroyItem("miscal") DestroyItem("miscal") DestroyItem("miscal") DestroyItem("miscal") GiveItemCreate("S!fla01",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 66 @52

// avenger
ALTER_TRANS WSMITH01
  BEGIN 72 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~Global("Iasw03forged","GLOBAL",0) Global("Iagemgained","GLOBAL",1) Dead("S!vipe1") PartyHasItem("sw2h10") PartyHasItem("S!misc11") PartyHasItem("S!misc21") PartyGoldGT(49999)~
  "ACTION" ~TakePartyGold(50000) DestroyGold(50000) TakePartyItemNum("sw2h10",1) DestroyItem("sw2h10") TakePartyItemNum("S!misc11",1) DestroyItem("S!misc11") TakePartyItemNum("S!misc21",1) DestroyItem("S!misc21") SetGlobal("Iasw03forged","GLOBAL",1) GiveItemCreate("S!sw03",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 72 @58

// r2
ALTER_TRANS WSMITH01
  BEGIN 88 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~NumItemsPartyGT("ring07",1) PartyGoldGT(59999)~
  "ACTION" ~TakePartyGold(60000) DestroyGold(60000) TakePartyItemNum("ring07",2) DestroyItem("ring07") DestroyItem("ring07") GiveItemCreate("ring41",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 88 @74

// r3
ALTER_TRANS WSMITH01
  BEGIN 89 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~NumItemsPartyGT("ring41",1) PartyGoldGT(89999)~
  "ACTION" ~TakePartyGold(90000) DestroyGold(90000) TakePartyItemNum("ring41",2) DestroyItem("ring41") DestroyItem("ring41") GiveItemCreate("S!ring01",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 89 @75

// dagg1
ALTER_TRANS WSMITH01
  BEGIN 95 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~NumItemsPartyGT("dagg02",1) PartyGoldGT(4999)~
  "ACTION" ~TakePartyGold(5000) DestroyGold(5000) TakePartyItemNum("dagg02",2) DestroyItem("dagg02") DestroyItem("dagg02") GiveItemCreate("dagg15",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 95 @83

// dagg3
ALTER_TRANS WSMITH01
  BEGIN 97 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~NumItemsPartyGT("dagg24",1) PartyHasItem("nebdag") PartyHasItem("S!misc06") PartyGoldGT(74999)~
  "ACTION" ~TakePartyGold(75000) DestroyGold(75000) TakePartyItemNum("dagg24",2) DestroyItem("dagg24") DestroyItem("dagg24") TakePartyItemNum("nebdag",1) DestroyItem("nebdag") TakePartyItemNum("S!misc06",1) DestroyItem("S!misc06") GiveItemCreate("S!dagg01",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 97 @87

// dagg4
ALTER_TRANS WSMITH01
  BEGIN 98 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~Global("Iakeepdagg21","GLOBAL",1) Global("Iadagg02forged","GLOBAL",0) PartyHasItem("S!dagg01") PartyHasItem("dagg21") PartyGoldGT(149999)~
  "ACTION" ~TakePartyGold(150000) DestroyGold(150000) TakePartyItemNum("S!dagg01",1) DestroyItem("S!dagg01") TakePartyItemNum("dagg21",1) DestroyItem("dagg21") SetGlobal("Iadagg02forged","GLOBAL",1) GiveItemCreate("S!dagg02",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 98 @89

// horn
ALTER_TRANS WSMITH01
  BEGIN 101 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~PartyHasItem("misc3k") PartyHasItem("dwdust") PartyGoldGT(9999)~
  "ACTION" ~TakePartyGold(10000) DestroyGold(10000) TakePartyItemNum("misc3k",1) DestroyItem("misc3k") TakePartyItemNum("dwdust",1) DestroyItem("dwdust") GiveItemCreate("S!misc10",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 101 @95

// fla1
ALTER_TRANS WSMITH01
  BEGIN 102 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~NumItemsPartyGT("blun03",1) PartyGoldGT(4999)~
  "ACTION" ~TakePartyGold(5000) DestroyGold(5000) TakePartyItemNum("blun03",2) DestroyItem("blun03") DestroyItem("blun03") GiveItemCreate("blun13",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 102 @97

// halb3
ALTER_TRANS WSMITH01
  BEGIN 108 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~Global("Iakpvipedead","GLOBAL",1) PartyHasItem("halb12") PartyHasItem("halb08") PartyHasItem("halb09") PartyHasItem("ax1h13") PartyHasItem("scrl04") PartyHasItem("S!misc02") PartyGoldGT(149999)~
  "ACTION" ~TakePartyGold(150000) DestroyGold(150000) TakePartyItemNum("halb12",1) DestroyItem("halb12") TakePartyItemNum("halb08",1) DestroyItem("halb08") TakePartyItemNum("halb09",1) DestroyItem("halb09") TakePartyItemNum("ax1h13",1) DestroyItem("ax1h13") TakePartyItemNum("scrl04",1) DestroyItem("scrl04") TakePartyItemNum("S!misc02",1) DestroyItem("S!misc02") GiveItemCreate("S!halb02",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 108 @509

// ioun
ALTER_TRANS WSMITH01
  BEGIN 109 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~PartyHasItem("helm18") PartyHasItem("helm19") PartyHasItem("helm20") PartyGoldGT(19999)~
  "ACTION" ~TakePartyGold(20000) DestroyGold(20000) TakePartyItemNum("helm18",1) DestroyItem("helm18") TakePartyItemNum("helm19",1) DestroyItem("helm19") TakePartyItemNum("helm20",1) DestroyItem("helm20") GiveItemCreate("S!helm01",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 109 @511

// helm
ALTER_TRANS WSMITH01
  BEGIN 110 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~Global("Iahelm04place","GLOBAL",4) PartyHasItem("helm21") PartyHasItem("helm04") PartyGoldGT(39999)~
  "ACTION" ~TakePartyGold(40000) DestroyGold(40000) TakePartyItemNum("helm21",1) DestroyItem("helm21") TakePartyItemNum("helm04",1) DestroyItem("helm04") GiveItemCreate("S!helm02",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 110 @513

// halb4
ALTER_TRANS WSMITH01
  BEGIN 113 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~NumItemsPartyGT("halb02",1) PartyGoldGT(9999)~
  "ACTION" ~TakePartyGold(10000) DestroyGold(10000) TakePartyItemNum("halb02",1) DestroyItem("halb02") TakePartyItemNum("halb02",1) DestroyItem("halb02") GiveItemCreate("halb03",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 113 @519

// cloud
ALTER_TRANS WSMITH01
  BEGIN 114 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~PartyHasItem("S!misc13") PartyHasItem("S!misc02") NumItemsPartyGT("potn06",2) PartyHasItem("belt01") PartyGoldGT(29999)~
  "ACTION" ~TakePartyGold(30000) DestroyGold(30000) TakePartyItemNum("S!misc13",1) DestroyItem("S!misc13") TakePartyItemNum("S!misc02",1) DestroyItem("S!misc02") TakePartyItemNum("potn06",3) DestroyItem("potn06") DestroyItem("potn06") DestroyItem("potn06") TakePartyItemNum("belt01",1) DestroyItem("belt01") GiveItemCreate("S!belt02",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 114 @521

// brac
ALTER_TRANS WSMITH01
  BEGIN 117 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~PartyHasItem("brac19") PartyHasItem("brac10") PartyHasItem("misc9a") PartyGoldGT(79999)~
  "ACTION" ~TakePartyGold(80000) DestroyGold(80000) TakePartyItemNum("brac19",1) DestroyItem("brac19") TakePartyItemNum("brac10",1) DestroyItem("brac10") TakePartyItemNum("misc9a",1) DestroyItem("misc9a") GiveItemCreate("S!brac01",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 117 @527

// vorpal
ALTER_TRANS WSMITH01
  BEGIN 118 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~PartyHasItem("sw2h15") PartyHasItem("sw2h16") PartyHasItem("S!misc06") NumItemsPartyGT("sw2h20",2) PartyGoldGT(99999)~
  "ACTION" ~TakePartyGold(100000) DestroyGold(100000) TakePartyItemNum("sw2h15",1) DestroyItem("sw2h15") TakePartyItemNum("sw2h16",1) DestroyItem("sw2h16") TakePartyItemNum("sw2h20",3) DestroyItem("sw2h20") DestroyItem("sw2h20") DestroyItem("sw2h20") TakePartyItemNum("S!misc06",1) DestroyItem("S!misc06") GiveItemCreate("S!sw14",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 118 @529

// ankheg
ALTER_TRANS WSMITH01
  BEGIN 121 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~PartyHasItem("plat06") PartyHasItem("S!misc12") PartyHasItem("plat13") PartyGoldGT(49999)~
  "ACTION" ~TakePartyGold(50000) DestroyGold(50000) TakePartyItemNum("plat06",1) DestroyItem("plat06") TakePartyItemNum("plat13",1) DestroyItem("plat13") TakePartyItemNum("S!misc12",1) DestroyItem("S!misc12") GiveItemCreate("S!plat03",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 121 @535

// buckler
ALTER_TRANS WSMITH01
  BEGIN 124 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~NumItemsPartyGT("shld17",2) PartyGoldGT(19999)~
  "ACTION" ~TakePartyGold(20000) DestroyGold(20000) TakePartyItemNum("shld17",3) DestroyItem("shld17") DestroyItem("shld17") DestroyItem("shld17") GiveItemCreate("S!shld03",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 124 @541

// cloak1
ALTER_TRANS WSMITH01
  BEGIN 127 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~NumItemsPartyGT("clck01",1) PartyGoldGT(29999)~
  "ACTION" ~TakePartyGold(30000) DestroyGold(30000) TakePartyItemNum("clck01",2) DestroyItem("clck01") DestroyItem("clck01") GiveItemCreate("clck02",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 127 @547

// cloak2
ALTER_TRANS WSMITH01
  BEGIN 128 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~NumItemsPartyGT("clck02",1) PartyGoldGT(59999)~
  "ACTION" ~TakePartyGold(60000) DestroyGold(60000) TakePartyItemNum("clck02",2) DestroyItem("clck02") DestroyItem("clck02") GiveItemCreate("S!clck02",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 128 @549

// elf
ALTER_TRANS WSMITH01
  BEGIN 131 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~GlobalGT("Ialegacybook","GLOBAL",0) GlobalLT("Ialegacybook","GLOBAL",4) PartyHasItem("S!misc16") PartyHasItem("S!misc06") PartyGoldGT(49999)~
  "ACTION" ~TakePartyGold(50000) DestroyGold(50000) TakePartyItemNum("S!misc16",1) DestroyItem("S!misc16") TakePartyItemNum("S!misc06",1) DestroyItem("S!misc06") GiveItemCreate("S!potn02",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 131 @555

// throat
ALTER_TRANS WSMITH01
  BEGIN 135 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~PartyHasItem("sw1h28") PartyHasItem("sw1h25") PartyHasItem("sw1h74") PartyHasItem("sw1h73") PartyGoldGT(74999)~
  "ACTION" ~TakePartyGold(75000) DestroyGold(75000) TakePartyItemNum("sw1h28",1) DestroyItem("sw1h28") TakePartyItemNum("sw1h25",1) DestroyItem("sw1h25") TakePartyItemNum("sw1h74",1) DestroyItem("sw1h74") TakePartyItemNum("sw1h73",1) DestroyItem("sw1h73") GiveItemCreate("S!sw15",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 135 @563

// keldorn
ALTER_TRANS WSMITH01
  BEGIN 141 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~Global("Iaplat04forged","GLOBAL",0) Reputation(Player1,20) PartyHasItem("npplat") PartyHasItem("belt10") PartyHasItem("plat17") PartyHasItem("S!misc06") NumItemsPartyGT("misc6z",2) PartyGoldGT(74999)~
  "ACTION" ~TakePartyGold(75000) DestroyGold(75000) TakePartyItemNum("npplat",1) DestroyItem("npplat") TakePartyItemNum("belt10",1) DestroyItem("belt10") TakePartyItemNum("plat17",1) DestroyItem("plat17") TakePartyItemNum("S!misc06",1) DestroyItem("S!misc06") TakePartyItemNum("misc6z",3) DestroyItem("misc6z") DestroyItem("misc6z") DestroyItem("misc6z") SetGlobal("Iaplat04forged","GLOBAL",1) GiveItemCreate("S!plat04",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 141 @575

// spear1
ALTER_TRANS WSMITH01
  BEGIN 155 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~NumItemsPartyGT("sper02",1) PartyGoldGT(9999)~
  "ACTION" ~TakePartyGold(10000) DestroyGold(10000) TakePartyItemNum("sper02",2) DestroyItem("sper02") DestroyItem("sper02") GiveItemCreate("sper05",Player1,1,1,1) CreateVisualEffect("spcrtwpn",[401.348])~
END

REPLACE_SAY WSMITH01 155 @603
