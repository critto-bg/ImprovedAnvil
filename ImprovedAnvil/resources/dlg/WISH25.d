// creator  : DLTCEP_enhanced_WeiDU (version 185)
// argument : WISH25.DLG
// game     : .
// source   : ./data/25Dialog.bif
// dialog   : ./dialog.tlk
// dialogF  : (none)

BEGIN ~WISH25~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY #72495 /* ~Standing before you is a djinn of immense power, the air thick with electricity around it.  It regards you coolly.  "Greetings to you, spellweaver.  Are you ready to begin negotiations?"~ */
  IF ~~ THEN REPLY #72498 /* ~I am ready.~ */ DO ~//SetupWishObject(LastTalkedToBy,1)~ GOTO 7
  IF ~~ THEN REPLY #72496 /* ~Negotiations?  What do you mean?~ */ DO ~//SetupWishObject(LastTalkedToBy,1)~ GOTO 3
  IF ~CombatCounterGT(0)~ THEN REPLY #72497 /* ~I don't have time to negotiate in the middle of combat!~ */ DO ~//SetupWishObject(LastTalkedToBy,1)~ GOTO 2
  IF ~~ THEN REPLY #72499 /* ~No, I have changed my mind.  Return to whence you came.~ */ DO ~//SetupWishObject(LastTalkedToBy,1)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 6.2 2.2 0.3
  SAY #72500 /* ~The djinn grins widely, winking at you.  "Perhaps the wisest of courses, spellweaver.  Very well...it shall be as you wish."~ */
  IF ~~ THEN DO ~ApplySpell(Myself,POOF_GONE)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 6.0 0.2
  SAY #72501 /* ~The being pauses a moment, surprised, before chuckling with amusement.  "We are between moments here, spellcaster.  Time has no bearing on you and I while we speak, have no worry."~ */
  IF ~~ THEN REPLY #72502 /* ~Then explain to me what you meant by negotiations.~ */ GOTO 3
  IF ~~ THEN REPLY #72503 /* ~Then let us begin.~ */ GOTO 7
  IF ~~ THEN REPLY #72504 /* ~Never mind.  Return to where you came from, djinn.~ */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 2.0 0.1
  SAY #72506 /* ~"The spell you have cast is an attempt to temporarily control vast cosmic power.  It is unstable, and therefore only truly useful in combat events...unless you have years to devote to the formulation of your wish, of course."~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #72507 /* ~"It is that formulation that requires negotiation."  The djinn pulls a quill and a paper scroll from the air, grinning.  "Since you do not have years to waste, you will attempt to describe to me what you desire from your wish."~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #72508 /* ~"And I," here the djinn looks pleased, "will use my vast intelligence to distort your purpose as I please.  Don't feel bad...the forces at work here are such that it is not often that one gets what one truly hopes for."~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #72509 /* ~"But you can certainly try.  The wise often do well...and you spellweaver are often quite wise, yes?"  It taps its quill thoughtfully on its head.  "Do you wish to begin, then?"~ */
  IF ~CombatCounterGT(0)~ THEN REPLY #72511 /* ~But we don't have time to do all this in the middle of combat!~ */ GOTO 2
  IF ~~ THEN REPLY #72512 /* ~Yes, let's begin.~ */ GOTO 7
  IF ~~ THEN REPLY #72513 /* ~No, I have changed my mind.  Return to whence you came.~ */ GOTO 1
END

IF ~~ THEN BEGIN 7 // from: 6.1 2.1 0.0
  SAY #72515 /* ~The djinn nods.  "As you say."  Quickly the two of you begin negotiating a complex contract.  The djinn is tricky, carefully attempting to twist your meaning with words, legal phrases and clauses that you can barely understand...~ */
  IF ~CheckStatGT(LastTalkedToBy,17,WIS)~ THEN DO ~SetupWish(4,1)~ GOTO 8
  IF ~CheckStatGT(LastTalkedToBy,14,WIS)
CheckStatLT(LastTalkedToBy,18,WIS)~ THEN DO ~SetupWish(3,1)~ GOTO 9
  IF ~CheckStatGT(LastTalkedToBy,9,WIS)
CheckStatLT(LastTalkedToBy,15,WIS)~ THEN DO ~SetupWish(2,1)~ GOTO 10
  IF ~CheckStatLT(LastTalkedToBy,10,WIS)~ THEN DO ~SetupWish(1,1)~ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #72517 /* ~Fortunately, you are quick to catch on.  Before long, you begin tricking the djinn's phrasings yourself, leaving it quite frustrated.  You still doubt you'll get what you want, but chances are the djinn won't be able to trick you. ~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #72520 /* ~You are wise enough to keep pace with the djinn, preventing the being from taking total advantage of you.  Still...the contract is hard to understand and you wonder at the end result.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #72522 /* ~Throughout the process, the djinn continues to baffle you...and you are not even sure if your desired wish will be similar to your original premise.  At best, you stall the worst of the clauses.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #72524 /* ~Your lack of wisdom leaves you at a complete disadvantage.  Throughout the writing of the contract, the djinn all but bullies you mentally into a position of watching him all but write the complex document on his own...there are few objections you can make.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0 10.0 9.0 8.0
  SAY #72525 /* ~The contract complete, the djinn dons a pair of spectacles and looks it over with an arched brow.  "Very well, spellcaster.  I can interpret the items listed here in the following ways.  Choose carefully which you would prefer."~ */
  IF ~Global("WishPower01","GLOBAL",1)~ THEN REPLY #72526 /* ~'Breach' on everyone in the area, including the party.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish26",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower02","GLOBAL",1)~ THEN REPLY #72527 /* ~Blow all people, including party members, away from the caster.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish27",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower03","GLOBAL",1)~ THEN REPLY #72528 /* ~Heal everyone, party members and enemies included.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish28",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower04","GLOBAL",1)~ THEN REPLY #72529 /* ~Temporarily set Strength to 18 for everyone in the area, including enemies.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish29",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower05","GLOBAL",1)~ THEN REPLY #72530 /* ~'Miscast Magic' on everyone in the area, including party members.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish30",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower06","GLOBAL",1)~ THEN REPLY #72531 /* ~'Magic Resistance' on everyone in the area, including enemies.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish31",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower07","GLOBAL",1)~ THEN REPLY #72532 /* ~'Abi-Dalzim's Horrid Wilting' on everyone in the area, including the party.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish32",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower08","GLOBAL",1)~ THEN REPLY #72533 /* ~Everyone in the area, both party members and enemies, become intoxicated.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish33",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower09","GLOBAL",1)~ THEN REPLY #72534 /* ~Incur bad luck on everyone in the area, including party members.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish34",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower10","GLOBAL",1)~ THEN REPLY #72535 /* ~'Silence' on everyone in the area, including party members.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish35",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower11","GLOBAL",1)~ THEN REPLY #72536 /* ~'Haste' everyone in the area, including enemies.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish36",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower12","GLOBAL",1)~ THEN REPLY #72537 /* ~'Improved Haste' on all party members.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish37",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower13","GLOBAL",1)~ THEN REPLY #72538 /* ~'Breach' on all enemies in the area.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish38",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower14","GLOBAL",1)~ THEN REPLY #72539 /* ~'Restoration' on all party members.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish46",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower15","GLOBAL",1)~ THEN REPLY #72541 /* ~Raise all party members' characteristics to 25 for 4 rounds.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish08",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower16","GLOBAL",1)~ THEN REPLY #72542 /* ~'Resurrection' on all dead party members.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish10",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower17","GLOBAL",1)~ THEN REPLY #72543 /* ~All party members gain the temporary ability 'Greater Deathblow'.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish11",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower18","GLOBAL",1)~ THEN REPLY #72545 /* ~All party members gain the temporary ability 'Hardiness'.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish12",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower19","GLOBAL",1)~ THEN REPLY #72546 /* ~Create a random wand in caster's inventory.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish14",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower20","GLOBAL",1)~ THEN REPLY #72547 /* ~Create a random potion in the caster's inventory.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish13",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower21","GLOBAL",1) Global("Iawishp21","GLOBAL",0) Class(LastTalkedToBy,MAGE_ALL) !Class(LastTalkedToBy,FIGHTER_ALL) !Class(LastTalkedToBy,THIEF_ALL) !Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY #72548 /* ~Make it as if the entire party has just rested a full night and re-memorized all their spells.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("SpWish16",Myself))
IncrementGlobal("Iawishp21","GLOBAL",1) SetGlobalTimer("Iawishpenalty","GLOBAL",2350) ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower21","GLOBAL",1) Global("Iawishp21","GLOBAL",1) Class(LastTalkedToBy,MAGE_ALL) !Class(LastTalkedToBy,FIGHTER_ALL) !Class(LastTalkedToBy,THIEF_ALL) !Class(LastTalkedToBy,CLERIC_ALL) RandomNumGT(100,25)~ THEN REPLY #72548 /* ~Make it as if the entire party has just rested a full night and re-memorized all their spells.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("SpWish16",Myself))
IncrementGlobal("Iawishp21","GLOBAL",1) ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower21","GLOBAL",1) Global("Iawishp21","GLOBAL",1) Class(LastTalkedToBy,MAGE_ALL) !Class(LastTalkedToBy,FIGHTER_ALL) !Class(LastTalkedToBy,THIEF_ALL) !Class(LastTalkedToBy,CLERIC_ALL) RandomNumGT(100,0) RandomNumLT(100,26)~ THEN REPLY #72548 /* ~Make it as if the entire party has just rested a full night and re-memorized all their spells.~ */ GOTO 13
  IF ~Global("WishPower21","GLOBAL",1) Global("Iawishp21","GLOBAL",2) Class(LastTalkedToBy,MAGE_ALL) !Class(LastTalkedToBy,FIGHTER_ALL) !Class(LastTalkedToBy,THIEF_ALL) !Class(LastTalkedToBy,CLERIC_ALL) RandomNumGT(100,75)~ THEN REPLY #72548 /* ~Make it as if the entire party has just rested a full night and re-memorized all their spells.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("SpWish16",Myself))
IncrementGlobal("Iawishp21","GLOBAL",1) ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower21","GLOBAL",1) Global("Iawishp21","GLOBAL",2) Class(LastTalkedToBy,MAGE_ALL) !Class(LastTalkedToBy,FIGHTER_ALL) !Class(LastTalkedToBy,THIEF_ALL) !Class(LastTalkedToBy,CLERIC_ALL) RandomNumGT(100,0) RandomNumLT(100,76)~ THEN REPLY #72548 /* ~Make it as if the entire party has just rested a full night and re-memorized all their spells.~ */ GOTO 13
  IF ~Global("WishPower21","GLOBAL",1) GlobalGT("Iawishp21","GLOBAL",2) Class(LastTalkedToBy,MAGE_ALL) !Class(LastTalkedToBy,FIGHTER_ALL) !Class(LastTalkedToBy,THIEF_ALL) !Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY #72548 /* ~Make it as if the entire party has just rested a full night and re-memorized all their spells.~ */ GOTO 13
  IF ~Global("WishPower22","GLOBAL",1) Class(LastTalkedToBy,MAGE_ALL) !Class(LastTalkedToBy,FIGHTER_ALL) !Class(LastTalkedToBy,THIEF_ALL) !Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY #72549 /* ~Cast a double-length 'Time Stop' and 'Improved Alacrity' on the caster.~ */ DO ~SetGlobal("Iapcastts","GLOBAL",1) SetGlobalTimer("Iatstimer","GLOBAL",36) ActionOverride(LastTalkedToBy,ForceSpellRES("spwish17",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower23","GLOBAL",1)~ THEN REPLY #72550 /* ~Heal all enemies in the area.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish39",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower24","GLOBAL",1)~ THEN REPLY #72551 /* ~'Improved Haste' on all enemies in the area.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish40",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower25","GLOBAL",1)~ THEN REPLY #72552 /* ~Summon an extra hostile monster into the area.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish18",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower26","GLOBAL",1)~ THEN REPLY #72553 /* ~Level Drain two levels from each party member.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish19",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower27","GLOBAL",1)~ THEN REPLY #72554 /* ~Temporarily remove half of the caster's HP.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish20",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower28","GLOBAL",1)~ THEN REPLY #72555 /* ~Temporarily remove 15% of all party members' HPs.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish21",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower29","GLOBAL",1)~ THEN REPLY #72556 /* ~Caster loses all memorized spells.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish22",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower30","GLOBAL",1)~ THEN REPLY #72557 /* ~Party loses 10,000 gp.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish23",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower31","GLOBAL",1)~ THEN REPLY #72558 /* ~Bring a 'Meteor Swarm' down upon the caster.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish24",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower32","GLOBAL",1)~ THEN REPLY #72559 /* ~Temporarily reduce the Strength of all party members to 3.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish41",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower33","GLOBAL",1)~ THEN REPLY #72560 /* ~Temporarily reduce the Wisdom of all party members to 3.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish42",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower34","GLOBAL",1)~ THEN REPLY #72561 /* ~Temporarily reduce the Constitution of all party members to 3.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish43",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower35","GLOBAL",1)~ THEN REPLY #72562 /* ~Temporarily reduce the Dexterity of all party members to 3.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish44",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower36","GLOBAL",1)~ THEN REPLY #72563 /* ~Temporarily reduce the Intelligence of all party members to 3.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish45",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("WishPower37","GLOBAL",1)~ THEN REPLY #72564 /* ~'Slow' the entire party.~ */ DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish25",Myself))
ApplySpell(Myself,POOF_GONE)~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY #17348
  IF ~~ THEN REPLY #17361 GOTO 14
  IF ~~ THEN REPLY #72513 DO ~IncrementGlobal("Iawishp21","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 14
  SAY #9749
  IF ~Global("Iawishp21","GLOBAL",1) RandomNumGT(100,0) RandomNumLT(100,51)~ THEN DO ~SetInterrupt(FALSE) SetGlobal("Iap1nr","GLOBAL",0) SetGlobal("Iap2nr","GLOBAL",0) SetGlobal("Iap3nr","GLOBAL",0) SetGlobal("Iap4nr","GLOBAL",0) SetGlobal("Iap5nr","GLOBAL",0) SetGlobal("Iap6nr","GLOBAL",0) SetGlobal("Iap1nb","GLOBAL",0) SetGlobal("Iap2nb","GLOBAL",0) SetGlobal("Iap3nb","GLOBAL",0) SetGlobal("Iap4nb","GLOBAL",0) SetGlobal("Iap5nb","GLOBAL",0) SetGlobal("Iap6nb","GLOBAL",0) ActionOverride(LastTalkedToBy,ReallyForceSpellRES("SPINI22",Myself)) ActionOverride(LastTalkedToBy,ForceSpellRES("SpWish16",Myself))
IncrementGlobal("Iawishp21","GLOBAL",1) CreateCreatureObject("planwish",LastTalkedToBy,0,0,0) CreateCreatureObject("S!elegwi",LastTalkedToBy,0,0,0) SetInterrupt(TRUE) ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~Global("Iawishp21","GLOBAL",1) RandomNumGT(100,50)~ THEN DO ~SetInterrupt(FALSE) SetGlobal("Iap1nr","GLOBAL",0) SetGlobal("Iap2nr","GLOBAL",0) SetGlobal("Iap3nr","GLOBAL",0) SetGlobal("Iap4nr","GLOBAL",0) SetGlobal("Iap5nr","GLOBAL",0) SetGlobal("Iap6nr","GLOBAL",0) SetGlobal("Iap1nb","GLOBAL",0) SetGlobal("Iap2nb","GLOBAL",0) SetGlobal("Iap3nb","GLOBAL",0) SetGlobal("Iap4nb","GLOBAL",0) SetGlobal("Iap5nb","GLOBAL",0) SetGlobal("Iap6nb","GLOBAL",0) ActionOverride(LastTalkedToBy,ReallyForceSpellRES("SPINI22",Myself)) ActionOverride(LastTalkedToBy,ForceSpellRES("SpWish16",Myself))
IncrementGlobal("Iawishp21","GLOBAL",1) SetInterrupt(TRUE) ApplySpell(Myself,POOF_GONE)~ EXIT
  IF ~GlobalGT("Iawishp21","GLOBAL",1)~ THEN DO ~SetInterrupt(FALSE) SetGlobal("Iap1nr","GLOBAL",0) SetGlobal("Iap2nr","GLOBAL",0) SetGlobal("Iap3nr","GLOBAL",0) SetGlobal("Iap4nr","GLOBAL",0) SetGlobal("Iap5nr","GLOBAL",0) SetGlobal("Iap6nr","GLOBAL",0) SetGlobal("Iap1nb","GLOBAL",0) SetGlobal("Iap2nb","GLOBAL",0) SetGlobal("Iap3nb","GLOBAL",0) SetGlobal("Iap4nb","GLOBAL",0) SetGlobal("Iap5nb","GLOBAL",0) SetGlobal("Iap6nb","GLOBAL",0) ActionOverride(LastTalkedToBy,ReallyForceSpellRES("SPINI22",Myself)) ActionOverride(LastTalkedToBy,ForceSpellRES("SpWish16",Myself))
IncrementGlobal("Iawishp21","GLOBAL",1) CreateCreatureObject("planwish",LastTalkedToBy,0,0,0) CreateCreatureObject("S!elegwi",LastTalkedToBy,0,0,0) SetInterrupt(TRUE) ApplySpell(Myself,POOF_GONE)~ EXIT
END