BEGIN ~CEFALDOR~

IF ~~ THEN BEGIN 0 // from: 6.0
  SAY #8214 /* ~A fine speech, but not practical. The Shadow Druid enclave I have begun offers solutions, and will purge enemies of nature.  You look defiant but you can do nothing.~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 1 // from:
  SAY #9615 /* ~You are not the only one with access to resurrection magic. Best you watch your back; there is no telling whom you might meet that you may have fought before.~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 20.0 8.0 7.0 1.0 0.0
  SAY #9616 /* ~I am stronger than ever with the aid of this grove. No harm can come to me here. Such bonding is frowned upon as it drains from the earth, but the mother feeds me that I might fight for her!~ [CEFALD07] */
  IF ~Global("PlayerHasStronghold","GLOBAL",2)
InParty("Cernd")
!Dead("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
~ THEN REPLY #9619 /* ~The rituals of ascension still rule here. Cernd will challenge you for leadership. ~ */ EXTERN ~CERNDJ~ 69
  IF ~Global("PlayerHasStronghold","GLOBAL",2)
InParty("Jaheira")
!Dead("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
~ THEN REPLY #9620 /* ~The rituals still govern this place! As a druid it is Jaheira's right to challenge you!~ */ EXTERN ~JAHEIRAJ~ 94
  IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN REPLY #9621 /* ~The rituals of ascension still stand! I challenge you for leadership! Such is my right!~ */ GOTO 13
  IF ~Global("PlayerHasStronghold","GLOBAL",2)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
~ THEN REPLY #9622 /* ~I will fight you, I will fight all of you!~ */ GOTO 3
  IF ~Global("CerndFightObserve","GLOBAL",0)
~ THEN REPLY #9623 /* ~Perhaps we could make a deal? A bargain for the lives of those in Trademeet?~ */ GOTO 5
  IF ~False()
Class(Player2,DRUID_ALL)
!Name("Jaheira",Player2)
!Name("Cernd",Player2)
See(Player2)
!StateCheck(Player2,STATE_SLEEPING)
~ THEN REPLY #9948 /* ~There is another with us that could challenge you according to the old rituals. A druid called <PLAYER2>.~ */ GOTO 22
  IF ~False()
Class(Player3,DRUID_ALL)
!Name("Jaheira",Player3)
!Name("Cernd",Player3)
See(Player3)
!StateCheck(Player3,STATE_SLEEPING)
~ THEN REPLY #9952 /* ~There is another with us that could challenge you according to the old rituals. A druid called <PLAYER3>.~ */ GOTO 23
  IF ~False()
Class(Player4,DRUID_ALL)
!Name("Jaheira",Player4)
!Name("Cernd",Player4)
See(Player4)
!StateCheck(Player4,STATE_SLEEPING)
~ THEN REPLY #9953 /* ~There is another with us that could challenge you according to the old rituals. A druid called <PLAYER4>.~ */ GOTO 24
  IF ~False() Class(Player5,DRUID_ALL)
!Name("Jaheira",Player5)
!Name("Cernd",Player5)
See(Player5)
!StateCheck(Player5,STATE_SLEEPING)
~ THEN REPLY #9954 /* ~There is another with us that could challenge you according to the old rituals. A druid called <PLAYER5>.~ */ GOTO 25
  IF ~False() Class(Player6,DRUID_ALL)
!Name("Jaheira",Player6)
!Name("Cernd",Player6)
See(Player6)
!StateCheck(Player6,STATE_SLEEPING)
~ THEN REPLY #9955 /* ~There is another with us that could challenge you according to the old rituals. A druid called <PLAYER6>.~ */ GOTO 26
  IF ~!Class(Player1,DRUID_ALL)
!Class(Player1,RANGER_ALL)
!Class(Player1,MAGE_ALL)
!Class(Player1,CLERIC_ALL)
!InParty("Cernd")
!Dead("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
See("Cernd")
~ THEN REPLY #38457 /* ~The rituals of ascension still rule here. Cernd will challenge you for leadership.~ */ EXTERN ~CERND~ 60
END

IF ~~ THEN BEGIN 3 // from: 2.3
  SAY #9714 /* ~Oh, you will fight, and you will run. I cannot be harmed outside a ritual of ascension, and only another druid can enter such a contest. Trademeet will fall!~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 5.0 3.0
  SAY #9715 /* ~Return if you wish to try again. I welcome your ramblings with great amusement.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #55506 /* ~Animal Trouble in Trademeet: The Shadow Druid.

I have met with Faldorn, the Shadow Druid in control of the grove. She has bonded with the land, and the only way to unseat her from power is for another druid to challenge her in one on one combat. ~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.4
  SAY #9840 /* ~I make no bargains. Flee; you can do nothing. Only another druid might disrupt my plans, and even then they would have to defeat me in personal combat.~ */
  IF ~~ THEN GOTO 4
END

IF ~NumberOfTimesTalkedTo(0)
Global("DruidFight","AR1901",0)
~ THEN BEGIN 6 // from:
  SAY #9850 /* ~Well, what have we here? Some fool come to stop the righteous force of nature? Laughable. Say what you must and then we shall purge the earth of your filth.~ [CEFALD02] */
  IF ~~ THEN REPLY #9865 /* ~Why are druids attacking all who enter the wood? This is not our role! Where is the balance in this? ~ */ DO ~SetGlobal("TalkedFaldor1","GLOBAL",1)
~ GOTO 0
  IF ~Global("PlayerHasStronghold","GLOBAL",2)
~ THEN REPLY #9866 /* ~Why are druids attacking all who enter the wood? This is not the role of the druid! ~ */ DO ~SetGlobal("TalkedFaldor1","GLOBAL",1)
~ GOTO 7
  IF ~Global("TalkedToCernd","GLOBAL",1)
OR(4)
!InParty("Cernd")
Dead("Cernd")
StateCheck("Cernd",STATE_SLEEPING)
!See("Cernd")
~ THEN REPLY #9867 /* ~Cernd would know what has changed here, and why you rule as you do.~ */ DO ~SetGlobal("TalkedFaldor1","GLOBAL",1)
~ GOTO 8
  IF ~InParty("Cernd")
!Dead("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
See("Cernd")
~ THEN REPLY #9868 /* ~Cernd would know what has changed here, and why you rule as you do. ~ */ DO ~SetGlobal("TalkedFaldor1","GLOBAL",1)
~ GOTO 9
  IF ~InParty("Jaheira")
!Dead("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
See("Jaheira")
~ THEN REPLY #10096 /* ~We have questions about the druids. This is close to the heart of Jaheira, and she demands an answer.~ */ DO ~SetGlobal("TalkedFaldor1","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #10550 /* ~Who are you to say? Only another druid should have business here. You can do nothing. In the past I might have feared such as you, but no longer.~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY #10887 /* ~Cernd is no concern. I am a Druid of Shadow and the hierarchy is in shambles. If he thinks he can change this then he is wrong!~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 6.3
  SAY #11068 /* ~Ahh, Cernd. Come to investigate for the Grand Druid, have you? You may tell him that his way is dead. We are the Druids of Shadow and he can do nothing. ~ */
  IF ~~ THEN EXTERN ~CERNDJ~ 68
END

IF ~~ THEN BEGIN 10 // from: 6.4
  SAY #11071 /* ~A name I remember for some reason, though not one I fear. Do you make claim to know better than Faldorn what should be done here? ~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 93
END

IF ~~ THEN BEGIN 11 // from:
  SAY #11141 /* ~What makes you think I would wish to refuse? I took this grove by force and I shall keep it in the same manner. Did you think I would retreat? Oh no, Cernd, this is your end. Prepare!~ [CEFALD13] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Cut35a")
~ UNSOLVED_JOURNAL #55507 /* ~Animal Trouble in Trademeet: Cernd has challenged.

Cernd has challenged Faldorn in a duel to the death. The outcome of this battle will determine the fate of the druids and of Trademeet as well.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #11173 /* ~You are mistaken, of course. I revel in the combat of the rituals, and I welcome the chance to end your miserable existence. Come, to your death!~ [CEFALD12] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Cut35b")
~ UNSOLVED_JOURNAL #55508 /* ~Animal Trouble in Trademeet: Jaheira has challenged.

Jaheira has entered into battle with Faldorn. The outcome of the fight will determine the fate of Trademeet and the druids alike.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY #11184 /* ~You dare to quote the rules of our rituals to me? You who are barely a natural creature yourself? Oh yes, I can sense that about you. It will be a pleasure to wipe your scourge from the land!~ [CEFALD10] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Cut35c")
~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #11187 /* ~Who? Is this worthy of my time? I doubt it is so. I will face this fool under the old rules, and when they are dead I will be secure. Come; let us seal your fate...and your mouth.~ [CEFALD11] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Cut35d")
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #11189 /* ~Who? Is this worthy of my time? I doubt it is so. I will face this fool under the old rules, and when they are dead I will be secure. Come; let us seal your fate...and your mouth.~ [CEFALD11] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Cut35e")
~ EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #11190 /* ~Who? Is this worthy of my time? I doubt it is so.  I will face this fool under the old rules, and when they are dead I will be secure. Come; let us seal your fate...and your mouth.~ [CEFALD11] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Cut35f")
~ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #11191 /* ~Who? Is this worthy of my time? I doubt it is so. I will face this fool under the old rules, and when they are dead I will be secure. Come; let us seal your fate...and your mouth.~ [CEFALD11] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Cut35g")
~ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #11192 /* ~Who? Is this worthy of my time? I doubt it is so. I will face this fool under the old rules, and when they are dead I will be secure. Come; let us seal your fate...and your mouth.~ [CEFALD11] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Cut35h")
~ EXIT
END

IF ~Global("DruidFight","AR1901",11)
~ THEN BEGIN 19 // from:
  SAY #11199 /* ~Dead and dead as they should be! The rest of you will leave and return at your peril! Speak of this to your kind! All shall bow before the Druids of Shadow!~ [CEFALD08] */
  IF ~~ THEN DO ~SetGlobal("CerndChallenge","GLOBAL",0)
SetGlobal("DruidFight","AR1901",12)
~ UNSOLVED_JOURNAL #49258 /* ~Animal Trouble in Trademeet: A setback.

Faldorn remains in control of the grove. Another druid will have to attempt to challenge her or Trademeet is doomed.~ */ EXIT
END

IF ~True()
~ THEN BEGIN 20 // from:
  SAY #11203 /* ~You have come back! Such insolence matched only by stupidity! Even the smallest-brained of nature's creatures learn from pain, but you insist on provoking me!~ [CEFALD09] */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 21 // from:
  SAY #38463 /* ~Why would I refuse? I took this grove by force and I shall keep it. Did you think I would retreat? Oh no, Cernd, this is your end. Prepare!~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Cut35i")
~ JOURNAL #55507 /* ~Animal Trouble in Trademeet: Cernd has challenged.

Cernd has challenged Faldorn in a duel to the death. The outcome of this battle will determine the fate of the druids and of Trademeet as well.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 2.5
  SAY #50855 /* ~<PLAYER2>? So be it, I shall face this worm in combat. The outcome shall determine the fate of this place!~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Cut35d")~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.6
  SAY #50856 /* ~<PLAYER3>? So be it, I shall face this worm in combat. The outcome shall determine the fate of this place!~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Cut35e")~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.7
  SAY #50857 /* ~<PLAYER4>? So be it, I shall face this worm in combat. The outcome shall determine the fate of this place!~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Cut35f")~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 2.8
  SAY #50858 /* ~<PLAYER5>? So be it, I shall face this worm in combat. The outcome shall determine the fate of this place!~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Cut35g")~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 2.9
  SAY #50859 /* ~<PLAYER6>? So be it, I shall face this worm in combat. The outcome shall determine the fate of this place!~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Cut35h")~ EXIT
END