REPLACE_TRIGGER_TEXT ~botsmith~ ~PartyHasItem("clck02")~ ~PartyHasItem("clck02") Global("Iaclck31made","AR4500",0)~
REPLACE_TRIGGER_TEXT ~botsmith~ ~PartyHasItem("scrl6t")~ ~PartyHasItem("scrl9p")~
REPLACE_ACTION_TEXT ~botsmith~ ~SetGlobal("ItemMaker","GLOBAL",28)~ ~SetGlobal("Iaclck31made","AR4500",1) SetGlobal("ItemMaker","GLOBAL",28)~
REPLACE_ACTION_TEXT ~botsmith~ ~TakePartyItemNum("scrl6t",1)~ ~TakePartyItemNum("scrl9p",1)~
REPLACE_ACTION_TEXT ~botsmith~ ~DestroyItem("scrl6t")~ ~DestroyItem("scrl9p")~