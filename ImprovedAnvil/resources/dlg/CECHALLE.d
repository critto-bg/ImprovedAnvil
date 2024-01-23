BEGIN ~CECHALLE~

IF WEIGHT #0 ~NumTimesTalkedTo(0)
OR(3)
Dead("CERND")
Global("CerndWentHunting","GLOBAL",0)
Global("HelpCernd","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY #8680 /* ~This place is saved. I thank you. My name is Verthan, and since Faldorn cast her foul ritual I have been planning for her defeat. You are saviors of this place.~ */
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADFaldorn","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADcefaldor","GLOBAL",1)
SetNumTimesTalkedTo(1)~ GOTO 3
END

IF WEIGHT #2 /* Triggers after states #: 11 even though they appear after this state */
~Global("IADruidPlot","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #8690 /* ~I am the Challenge Master, and I ask of druids present if there are any that wish to make challenge? Our order is in disarray and in need of leadership.~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #8697 /* ~Do any here make claim to the challenge? Who is ready? Who shall be the figurehead for our grove, and assume the title of Great Druid?~ */
  IF ~OR(2) XPLT(Player1,2500000)
            !Class(Player1,DRUID_ALL)~
    THEN REPLY #55514 /* ~There is none who need to challenge at this time.~ */ EXIT
  IF ~XPGT(Player1,2499999) Global("GreatDruid","GLOBAL",0) Class(Player1,DRUID_ALL)
!Global("GaveTitle","LOCALS",1)
~ THEN REPLY #55515 /* ~Yes. <PLAYER1> will challenge and assume the title of Great Druid.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Cut63a")
~ EXIT
  IF ~Global("GreatDruid","GLOBAL",0) Class(Player1,DRUID_ALL) XPLT(Player1,2500000)
!Global("GaveTitle","LOCALS",1)
~ THEN REPLY #58673 /* ~I am not yet ready to make such a challenge. ~ */ EXIT
  IF ~Global("GaveTitle","LOCALS",1)
~ THEN REPLY #62151 /* ~There is no longer a need for the challenge. I am the Great Druid and the Grove is at rest.~ */ GOTO 16
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #9676 /* ~Faldorn bonded with the grove, so the land suffers. I will be a surrogate until the proper rituals are performed. It is distasteful, but vital until balance returns.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #11300 /* ~I stand as Challenge Master, and all that seek ascension in the druidic order can come to me. And for you, I must formalize our thanks. ~ */
  IF ~Global("CerndChallenge","GLOBAL",0)
Global("PlayerHasStronghold","GLOBAL",2)
~ THEN DO ~SetGlobal("SPRITE_IS_DEADFaldorn","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADcefaldor","GLOBAL",1)
SetNumTimesTalkedTo(1)
~ GOTO 5
  IF ~Global("CerndChallenge","GLOBAL",1)
Global("PlayerHasStronghold","GLOBAL",2)
~ THEN DO ~SetGlobal("SPRITE_IS_DEADFaldorn","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADcefaldor","GLOBAL",1)
SetNumTimesTalkedTo(1)
~ GOTO 6
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADFaldorn","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADcefaldor","GLOBAL",1)
SetNumTimesTalkedTo(1)
~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #46892 /* ~For your bravery I present you with the Staff of Thunder and Lightning.  Use it with wisdom and respect. Remember to pick up any equipment that was dropped before the challenge.~ */
  IF ~~ THEN DO ~SetGlobal("MasterTalked","AR1901",1)
GiveItemCreate("STAF13",LastTalkedToBy,0,25,25)
EraseJournalEntry(54895)
EraseJournalEntry(54924)
EraseJournalEntry(54925)
EraseJournalEntry(54926)
EraseJournalEntry(54927)
EraseJournalEntry(54928)
EraseJournalEntry(54929)
EraseJournalEntry(54930)
EraseJournalEntry(54946)
EraseJournalEntry(54947)
EraseJournalEntry(54948)
EraseJournalEntry(54949)
EraseJournalEntry(54951)
EraseJournalEntry(54950)
EraseJournalEntry(54952)
EraseJournalEntry(55128)
EraseJournalEntry(55203)
EraseJournalEntry(55232)
EraseJournalEntry(55265)
EraseJournalEntry(55291)
EraseJournalEntry(55497)
EraseJournalEntry(55499)
EraseJournalEntry(55503)
EraseJournalEntry(55504)
EraseJournalEntry(55505)
EraseJournalEntry(49258)
EraseJournalEntry(55506)
EraseJournalEntry(55507)
EraseJournalEntry(55508)
~ SOLVED_JOURNAL #55509 /* ~Animal Trouble in Trademeet: Balance is restored.

Faldorn is defeated, and I have received a fine reward for my part in it. The grove will eventually recover, as will Trademeet. Balance is restored.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #46893 /* ~Go now and worry no more about these woods and the druids who protect them. Remember to pick up any equipment that was dropped before the challenge.~ */
  IF ~~ THEN DO ~SetGlobal("MasterTalked","AR1901",1)
EraseJournalEntry(54895)
EraseJournalEntry(54924)
EraseJournalEntry(54925)
EraseJournalEntry(54926)
EraseJournalEntry(54927)
EraseJournalEntry(54928)
EraseJournalEntry(54929)
EraseJournalEntry(54930)
EraseJournalEntry(54946)
EraseJournalEntry(54947)
EraseJournalEntry(54948)
EraseJournalEntry(54949)
EraseJournalEntry(54951)
EraseJournalEntry(54950)
EraseJournalEntry(54952)
EraseJournalEntry(55128)
EraseJournalEntry(55203)
EraseJournalEntry(55232)
EraseJournalEntry(55265)
EraseJournalEntry(55291)
EraseJournalEntry(55497)
EraseJournalEntry(55499)
EraseJournalEntry(55503)
EraseJournalEntry(55504)
EraseJournalEntry(55505)
EraseJournalEntry(49258)
EraseJournalEntry(55506)
EraseJournalEntry(55507)
EraseJournalEntry(55508)
~ SOLVED_JOURNAL #55510 /* ~Animal Trouble in Trademeet: Balance is restored.

Cernd has defeated Faldorn and balance is restored. The town of Trademeet will be safe now that the druids are back in their proper role. Balance is restored.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY #48892 /* ~You, my <LADYLORD>, are a true druid and friend of the land. You have earned the blessing of the Grove, and I present to you the Staff of Thunder and Lightning.~ */
  IF ~~ THEN DO ~SetGlobal("MasterTalked","AR1901",1)
GiveItemCreate("STAF13",LastTalkedToBy,0,25,25)~ GOTO 9
END

IF ~~ THEN BEGIN 8 // from:
  SAY #48895 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #48898 /* ~Rest within the grove and the Spirit will come to offer blessing.  Do this when you are ready to accept the joyous burden the Spirit offers. Remember to pick up any equipment that was dropped before the challenge.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #48899 /* ~With Faldorn gone we shall require a guiding hand. I hope that you accept if the Grove deems you worthy.  Again, I thank you!~ */
  IF ~~ THEN DO ~SetGlobal("PlayerHasStronghold","GLOBAL",1)
SetGlobal("DruidStronghold","GLOBAL",1)
EraseJournalEntry(54895)
EraseJournalEntry(54924)
EraseJournalEntry(54925)
EraseJournalEntry(54926)
EraseJournalEntry(54927)
EraseJournalEntry(54928)
EraseJournalEntry(54929)
EraseJournalEntry(54930)
EraseJournalEntry(54946)
EraseJournalEntry(54947)
EraseJournalEntry(54948)
EraseJournalEntry(54949)
EraseJournalEntry(54951)
EraseJournalEntry(54950)
EraseJournalEntry(54952)
EraseJournalEntry(55128)
EraseJournalEntry(55203)
EraseJournalEntry(55232)
EraseJournalEntry(55265)
EraseJournalEntry(55291)
EraseJournalEntry(55497)
EraseJournalEntry(55499)
EraseJournalEntry(55503)
EraseJournalEntry(55504)
EraseJournalEntry(55505)
EraseJournalEntry(49258)
EraseJournalEntry(55506)
EraseJournalEntry(55507)
EraseJournalEntry(55508)
~ SOLVED_JOURNAL #55511 /* ~Animal Trouble in Trademeet: Balance is restored.

Faldorn is defeated. I have been rewarded, but I am to be afforded an even greater honor for my service to nature. When I rest in the grove I will be granted a blessing, one that will give additional responsibilities for me as a Druid.~ */ EXIT
END

IF WEIGHT #1 ~Global("GreatDruid","GLOBAL",1) Global("IADruidPlot","GLOBAL",0)
Global("GaveTitle","LOCALS",0)
~ THEN BEGIN 11 // from:
  SAY #58736 /* ~Let the word be spread by the wind and on wing of bird that a challenge has been completed, and a new Great Druid is appointed!~ */
  IF ~~ THEN DO ~SetGlobal("GaveTitle","LOCALS",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 15.0
  SAY #58737 /* ~<CHARNAME> is the Great Druid.  Stand tall, for nature will ask much in time.  Embody the balance in all that you do.~ */
  IF ~~ THEN DO ~AddexperienceParty(20000)
GiveItemCreate("staf19",LastTalkedToBy,0,0,0)
GiveItemCreate("ring07",LastTalkedToBy,0,0,0)
GiveGoldForce(10000)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0
  SAY #59463 /* ~<CHARNAME>, you have demonstrated the strength of your convictions through your actions and your will, and you stand before nature a transformed <PRO_MANWOMAN>.~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #59464 /* ~You are now of the few that are known as Great Druid, one of the few that walk as the line between ocean and shore, mountain and plain.~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #59465 /* ~May you stride where the balance has been lost, protecting those that have fallen away, ensuring that the cycle continues.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 16 // from: 2.8
  SAY #62152 /* ~All honor to the Great Druid! Nature has Her champion!~ */
  IF ~~ THEN EXIT
END