BEGIN ~DRSHSP01~

IF ~Global("DruidStronghold","GLOBAL",1)
Global("DruidQuest1","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY #48923 /* ~Child of the Woods, I welcome you. The land and the grove both have suffered and have been soothed by your actions.~ */
  IF ~~ THEN REPLY #48931 /* ~Who are you? What are you?~ */ GOTO 1
  IF ~~ THEN REPLY #48932 /* ~I am happy to be of service. You would be the Spirit of the Grove?~ */ GOTO 1
  IF ~~ THEN REPLY #48933 /* ~I seek to bring balance to all that I find.~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY #48934 /* ~I am the Spirit of the Grove, child.  I am the water, the earth, the trees and the sun.  I am life and death: the eternal cycle.~ */
  IF ~~ THEN REPLY #48935 /* ~How is it that you can speak?~ */ GOTO 4
  IF ~~ THEN REPLY #48936 /* ~What would you have of me?~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 4.0 1.1 0.2
  SAY #48940 /* ~The call of the Druid is never easy and your tasks are but beginning. The Grove will extend its blessing to you if you will take up the mantle of leadership. ~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #48941 /* ~A <PRO_MANWOMAN> who serves the cause of balance is needed.  The Grove requires leadership, a gentle hand.  Will you serve the Grove as such?~ */
  IF ~~ THEN REPLY #48943 /* ~I am honored to be chosen, spirit. How is it that I can serve Nature?~ */ GOTO 5
  IF ~~ THEN REPLY #48945 /* ~There is much that I need to accomplish outside of the Grove. I am not sure that I can spare the time to be effective for you.~ */ GOTO 7
  IF ~~ THEN REPLY #48948 /* ~My thanks for the offer but I cannot accept it.~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #48989 /* ~Always do I speak.  But I do not always allow myself to be heard.  Listen to my words, then, child of nature.~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 7.0 3.0
  SAY #48990 /* ~Bless you, child! Nature does truly smile upon you. There is much work to be done. Listen and learn the path of balance, the path of the Eternal Cycle.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 38.0 27.1 26.1 17.0 7.1 3.2
  SAY #48991 /* ~If such is your wish, the Grove shall not hold you. Return to the road and follow what paths you must. You are always welcome here, even if it is not to be your home. Farewell.~ */
  IF ~~ THEN DO ~EraseJournalEntry(5697)
EraseJournalEntry(5698)
EraseJournalEntry(5699)
SetGlobal("DruidStronghold","GLOBAL",0)
CreateVisualEffectObject("SPENTAXI",Myself)
DestroySelf()~ SOLVED_JOURNAL #5696 /* ~Heeding the Spirit of the Grove

I have decided that the leadership of the grove is not my place, despite what the spirit of the grove describes as my 'destiny'.  I will seek my balance elsewhere and the spirit does not oppose my decision.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY #48992 /* ~The cycles of Nature move slowly, child. You shall have what time you need to fulfill your purpose outside of the Grove.~ */
  IF ~~ THEN REPLY #48993 /* ~In that case I am honored that the Grove finds me worthy.~ */ GOTO 5
  IF ~~ THEN REPLY #48994 /* ~Still, I haven't the time to spare.~ */ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 5.0
  SAY #49007 /* ~Life is sacred and this sacredness is rooted in balance: predator and prey, rain and sun, birth and death. A time of unbalance has gone with the passing of Faldorn but a new break in the cycle arises.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #49008 /* ~Long have the Trolls of the mound lived beneath the protection of the Grove. But a new leader has arisen.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #49018 /* ~Nilthiri the Shamaness leads the trolls to chaos. She urges them to expand their territory and she brings more trolls to the mound without thought to the consequences.~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #49019 /* ~If this continues, the trolls will overrun the Grove and Nature will suffer. A servant of Nature must bring the life cycle of Nilthiri to a close for the good of all.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49020 /* ~Will you do this for the Grove, child <CHARNAME>?~ */
  IF ~~ THEN REPLY #49029 /* ~I am honored to be chosen, Sprit. I shall bring about Nilthiri's death and balance will be restored.~ */ GOTO 13
  IF ~~ THEN REPLY #49031 /* ~Trolls are evil creatures! Why should they all not die?~ */ GOTO 16
  IF ~~ THEN REPLY #49032 /* ~I cannot do this.~ */ GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 17.1 16.0 12.0
  SAY #49025 /* ~It is well. This club was left by Marek the founder of the Grove when his life ended, as all must. It may help you in the battle.~ */
  IF ~~ THEN DO ~GiveItemCreate("Blun10",LastTalkedToBy,0,0,0)~ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #49026 /* ~Nilthiri even now performs ceremonies of summoning. She must be stopped. You will find her along the path to the east of the Troll Mound. ~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #49027 /* ~When the deed is done, I shall come to you. Until then, the blessing of the Grove is with you. Go and do what you must.~ */
  IF ~~ THEN DO ~SetGlobal("DruidQuest1","GLOBAL",1)
CreateVisualEffectObject("SPENTAXI",Myself)
DestroySelf()~ UNSOLVED_JOURNAL #5697 /* ~Heeding the Spirit of the Grove

There is a troll mound within the boundaries of the grove, and the spirit informs me that a shamaness amongst them, Nilthiri, has begun to call great numbers of the creatures to the mound and threatens to disrupt the balance of nature.  I am to go to the mound nearby and end the shamaness' life before too much damage is done.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1
  SAY #49033 /* ~Trolls, too, are the sons and daughters of Nature. They have their place within this realm as long as balance remains.~ */
  IF ~~ THEN REPLY #49034 /* ~Very well. I shall bring about Nilthiri's death and balance will be restored.~ */ GOTO 13
  IF ~~ THEN REPLY #49036 /* ~I refuse to perform this task.~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.1 12.2
  SAY #49037 /* ~The Grove has need of you, druid. Do you truly wish to let such a problem fester?~ */
  IF ~~ THEN REPLY #49038 /* ~That may be but still I haven't the time to help.~ */ GOTO 6
  IF ~~ THEN REPLY #49039 /* ~If it is as urgent as you say I will help.~ */ GOTO 13
END

IF ~Dead("Drshnl02")
Global("DruidQuest1","GLOBAL",1)~ THEN BEGIN 18 // from:
  SAY #49042 /* ~The deed is done and the delicate scales of Balance have shifted for the time being. You have done well, child of Nature.~ */
  IF ~~ THEN DO ~AddXPObject(Player1,18500)
AddXPObject(Player2,18500)
AddXPObject(Player3,18500)
AddXPObject(Player4,18500)
AddXPObject(Player5,18500)
AddXPObject(Player6,18500)~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #49044 /* ~You are needed beyond the confines of the Grove and should go for a time. But let not too many weeks pass before you return to the Grove. You may be needed here again soon. ~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #49045 /* ~When you do return, sleep within the Grove itself and the Spirit will come to you if you are needed. Farewell.~ */
  IF ~~ THEN DO ~EraseJournalEntry(5697)
SetGlobal("DruidQuest1","GLOBAL",2)
SetGlobalTimer("DruidQuest2Begin","GLOBAL",TEN_DAYS)
CreateVisualEffectObject("SPENTAXI",Myself)
DestroySelf()
~ SOLVED_JOURNAL #5698 /* ~Heeding the Spirit of the Grove

Nilthiri is dead and the spirit of the grove has commended me.  I am free to go my own way for a while, although the spirit bade me to return before long, perhaps no more than a couple of weeks, lest I am needed again.  When I do return, I should rest within the grove and the spirit will approach me.~ */ EXIT
END

IF ~GlobalTimerExpired("DruidQuest2Begin","GLOBAL")
Global("DruidQuest2","GLOBAL",0)
Global("DruidQuest1","GLOBAL",2)~ THEN BEGIN 21 // from:
  SAY #49050 /* ~Child of Nature you are again needed. Balance is threatened and Chaos is at the periphery. Will you serve the Grove?~ */
  IF ~~ THEN REPLY #49054 /* ~What do you require of me?~ */ GOTO 22
  IF ~~ THEN REPLY #49055 /* ~I cannot help the Grove.~ */ GOTO 26
END

IF ~~ THEN BEGIN 22 // from: 26.0 21.0
  SAY #49056 /* ~There is much that you know not about the Grove. The story will help you understand the path that must be taken. Listen, child, and learn.~ */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #49057 /* ~The Grove is young in the terms of Nature and ancient in the years of man. Centuries ago Marek of Halruaa established a protectorate of nature in these woods.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #49058 /* ~He brought druids from across the lands to stop the encroachment of 'progress' from the 'civilized' races. ~ */
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #49059 /* ~Marek awakened the soul of the Grove, and I am its voice. But since its establishment, the Grove has been threatened by forces seeking to bring ruin to the natural order of things.~ */
  IF ~~ THEN REPLY #49095 /* ~Go on.~ */ GOTO 28
  IF ~~ THEN REPLY #49096 /* ~I wish to hear no more of this tale.~ */ GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 21.1
  SAY #49092 /* ~If a leader of the druids you truly wish to be, you must help Nature fight her enemies.~ */
  IF ~~ THEN REPLY #49093 /* ~What can I do to help?~ */ GOTO 22
  IF ~~ THEN REPLY #49094 /* ~Still, I must refuse the honor.~ */ GOTO 6
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY #49097 /* ~If one has no knowledge of history then one will never learn from the experience of the past. A druid should know the importance of this.~ */
  IF ~~ THEN REPLY #49098 /* ~In that case, please go on.~ */ GOTO 28
  IF ~~ THEN REPLY #49099 /* ~Still, I do not wish to listen to any more of this.~ */ GOTO 6
END

IF ~~ THEN BEGIN 28 // from: 27.0 25.0
  SAY #49100 /* ~Marek and the Grove drew many good men and women to these parts to serve as protectors. But it also drew forth the evil that lies in Amn in some measure.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #49101 /* ~Marek knew that he had been identified as our leader... and he set in motion the events that have led to you being here today.~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #49102 /* ~Marek established a hierarchy that would assume leadership after his passing. Then he established wards of enormous strength to protect the Grove from harm.~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #49105 /* ~Marek's strength and spirit came from a perfect understanding of the earth. This spirit could not be destroyed and has always been here in the Grove as a silent partner to Nature.~ */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #49106 /* ~Before his passing, Marek had a wife and child.  When he knew that he must die for the Grove, he had them taken far away for their own protection.~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #49107 /* ~Now, as Marek knew would someday happen, his descendants have returned and old enemies marshall their forces. A child called Loren has recently arrived in Trademeet. ~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #49108 /* ~This child is the inheritor of Marek's spirit but does not yet have the knowledge to use his power. Surely he shall be slain by the forces of chaos if you do not rescue him. ~ */
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #49110 /* ~Even now he is alone and in danger, his parents slain by an evil that haunts him. You must find the child Loren in Trademeet and fight Marek's old enemies to save the child's life.~ */
  IF ~~ THEN REPLY #49112 /* ~I will do so at once.~ */ GOTO 36
  IF ~~ THEN REPLY #49113 /* ~Why can the Spirit of the Grove do nothing to protect him?~ */ GOTO 37
  IF ~~ THEN REPLY #49114 /* ~I cannot help this boy. I do not have the time.~ */ GOTO 38
END

IF ~~ THEN BEGIN 36 // from: 38.1 37.0 35.0
  SAY #49115 /* ~The boy is destined to lead this grove once you have moved on, as your own destiny wills.  I will come to you when the boy is safe... go now, and quickly!~ */
  IF ~~ THEN DO ~SetGlobal("DruidQuest2","GLOBAL",1)
CreateVisualEffectObject("SPENTAXI",Myself)
DestroySelf()~ UNSOLVED_JOURNAL #5699 /* ~Heeding the Spirit of the Grove

The spirit has asked me to perform another service for the good of the grove... I am to find the descendant of Marek, a boy named Loren, and protect him from Marek's old enemies which threaten his life.  Loren can be found in Trademeet, perhaps somewhere outside of the city's walls amongst the many tents.~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1
  SAY #49117 /* ~The spirit that once was Marek has gone forth to aid the child... but the spirit is not the power that the man once was and cannot hope to hold out for long.  Aid him, lest all be lost.~ */
  IF ~~ THEN REPLY #49118 /* ~I will go to the child now.~ */ GOTO 36
  IF ~~ THEN REPLY #49119 /* ~I cannot help this boy. I do not have the time.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.1 35.2
  SAY #49120 /* ~The Grove believes you to be a leader and a true protector of nature. Do you disregard what is right now and prove this judgement wrong?~ */
  IF ~~ THEN REPLY #49121 /* ~I'm sorry but I cannot help.~ */ GOTO 6
  IF ~~ THEN REPLY #49122 /* ~I will not fail in my duty. I will go to the child and help him.~ */ GOTO 36
END

IF ~Global("DruidQuest2","GLOBAL",1)
Global("DruidQuest1","GLOBAL",2)~ THEN BEGIN 39 // from:
  SAY #49177 /* ~Victory, <CHARNAME>!  Loren lives and his destiny is intact.  And with this, the future of the Grove rests easy.  Well done.~ */
  IF ~~ THEN DO ~AddXPObject(Player1,20500)
AddXPObject(Player2,20500)
AddXPObject(Player3,20500)
AddXPObject(Player4,20500)
AddXPObject(Player5,20500)
AddXPObject(Player6,20500)
GiveItemCreate("misc3d",LastTalkedToBy,0,0,0)~ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #49179 /* ~The Grove senses a dark destiny ahead of you, with much danger both moral and physical. For now your task is done in the Grove. ~ */
  IF ~Class(Player1,DRUID_ALL) !Dead("GDRUID")~ THEN GOTO 41
  IF ~Class(Player1,DRUID_ALL) Dead("GDRUID")~ THEN GOTO 44
  IF ~!Class(Player1,DRUID_ALL)~ THEN GOTO 45
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #49184 /* ~Soon you may return to fight for ascension within the Grove. Until that day comes, I shall not call on you. Go forth and find the path of balance within your life.~ */
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #49186 /* ~The danger to the Grove is passed, now, and Loren shall be taken to the Grove where he can begin to learn Nature's path.  We shall await your return.~ */
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #49187 /* ~May the forest always open a path, good druid. Farewell!~ */
  IF ~~ THEN DO ~EraseJournalEntry(5697)
EraseJournalEntry(5698)
EraseJournalEntry(5699)
SetGlobal("DruidQuest2","GLOBAL",2)
CreateVisualEffectObject("SPDIMNDR","drshlo02")
CreateVisualEffectObject("SPDIMNDR",Myself)
ActionOverride("drshlo02",DestroySelf())
DestroySelf()
~ SOLVED_JOURNAL #5700 /* ~Heeding the Spirit of the Grove

Loren, the descendant of Marek and future leader of the grove once I have moved on, has been saved and the creature that possessed him destroyed.  Loren has been brought to the grove for his training, and the spirit informs me that I will not be called on again... at least, not until I am ready to challenge for leadership of the grove as Archdruid.~ */ EXIT
END

IF ~~ THEN BEGIN 44
  SAY @4150
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 45
  SAY @4151
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY #49187 /* ~May the forest always open a path, good druid. Farewell!~ */
  IF ~~ THEN DO ~EraseJournalEntry(5697)
EraseJournalEntry(5698)
EraseJournalEntry(5699)
SetGlobal("DruidQuest2","GLOBAL",2)
CreateVisualEffectObject("SPDIMNDR","drshlo02")
CreateVisualEffectObject("SPDIMNDR",Myself)
ActionOverride("drshlo02",DestroySelf())
DestroySelf()
~ SOLVED_JOURNAL #12200 EXIT
END