BEGIN ~IAAMARI2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2750
  IF ~~ THEN GOTO 1
END

IF ~GlobalLT("Iaamarieljob","GLOBAL",6)~ THEN BEGIN 1
  SAY @2751
  IF ~~ THEN GOTO 2
END

IF ~GlobalLT("Iaamarieljob","GLOBAL",6)~ THEN BEGIN 2
  SAY @2752
  IF ~~ THEN DO ~SetGlobal("Iaamarieljob","GLOBAL",6) ReputationInc(1) GiveItemCreate("S!misc02",[PC],1,0,0) GiveItemCreate("scrl7q",[PC],1,0,0) GiveItemCreate("S!scrl05",[PC],1,0,0) GiveItemCreate("S!scrl28",[PC],1,0,0) AddXPObject(Player1,25500) AddXPObject(Player2,25500) AddXPObject(Player3,25500) AddXPObject(Player4,25500) AddXPObject(Player5,25500) AddXPObject(Player6,25500) GivePartyGold(5000) ActionOverride("S!ammar2",ForceSpell(Myself,DRYAD_TELEPORT) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END