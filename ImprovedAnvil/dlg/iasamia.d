BEGIN ~IASAMIA~

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY #40845
  IF ~~ THEN REPLY #40846 GOTO 1
  IF ~~ THEN REPLY #40847 GOTO 2
  IF ~~ THEN REPLY #40848 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY #40852
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY #40854
  IF ~~ THEN REPLY #40857 GOTO 5
  IF ~~ THEN REPLY #40858 GOTO 7
  IF ~~ THEN REPLY #40859 GOTO 8
END

IF ~~ THEN BEGIN 3
  SAY #40855
  IF ~~ THEN REPLY #40860 GOTO 5
  IF ~~ THEN REPLY #40861 GOTO 7
  IF ~~ THEN REPLY #40862 GOTO 8
END

IF ~~ THEN BEGIN 4
  SAY #40856
  IF ~~ THEN REPLY #40863 GOTO 5
  IF ~~ THEN REPLY #40864 GOTO 7
  IF ~~ THEN REPLY #40865 GOTO 8
END

IF ~~ THEN BEGIN 5
  SAY #40895
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY #40896
  IF ~Global("Kidnap","GLOBAL",3)
OR(2)
!Dead("Garkid01")
!Dead("Garkid02")
~ THEN REPLY #40900 GOTO 9
  IF ~~ THEN REPLY #40901 GOTO 10
  IF ~~ THEN REPLY #40908 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY #40906
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 8
  SAY #40910
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY #40915
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY #40917
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY #40927
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY #40929
  IF ~~ THEN REPLY #40932 GOTO 13
  IF ~~ THEN REPLY #40933 GOTO 15
  IF ~~ THEN REPLY #40934 GOTO 16
END

IF ~~ THEN BEGIN 13
  SAY #40936
  IF ~~ THEN DO ~GiveItem("key21",LastTalkedToBy())~ GOTO 26
END

IF ~~ THEN BEGIN 14
  SAY #40937
  IF ~~ THEN UNSOLVED_JOURNAL #7167 EXIT
END

IF ~~ THEN BEGIN 15
  SAY #40939
  IF ~~ THEN REPLY #40940 GOTO 13
  IF ~~ THEN REPLY @3500 GOTO 29
  IF ~~ THEN REPLY #40941 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY #40943
  IF ~~ THEN REPLY #40945 GOTO 17
  IF ~~ THEN REPLY #40946 GOTO 13
  IF ~~ THEN REPLY #40947 GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #40951 /* ~Blast. I hoped to get you to do the grunt-work. I'll do it, but not with you at my back. You'd leave me dead and take whatever I found...  that's what I was planning. ~ */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY #40953
  IF ~~ THEN DO ~SetGlobal("SamiaPreempted","GLOBAL",1)
EraseJournalEntry(7167)
CreateCreatureObject("Akae",Myself,0,0,0)
CreateCreatureObject("Kaol",Myself,0,0,0)
CreateCreatureObject("Chak",Myself,0,0,0)
CreateCreatureObject("Legdor",Myself,0,0,0)
CreateCreatureObject("Deshar",Myself,0,0,0)
ActionOverride("Akae",Enemy())
ActionOverride("Kaol",Enemy())
ActionOverride("Chak",Enemy())
ActionOverride("Legdor",Enemy())
ActionOverride("Deshar",Enemy())
Enemy()~ SOLVED_JOURNAL #5812 EXIT
END

IF ~~ THEN BEGIN 19
  SAY #40955
  IF ~~ THEN GOTO 18
END

IF WEIGHT #2
~True()~ THEN BEGIN 20
  SAY #40957
  IF ~~ THEN REPLY #40958 GOTO 21
  IF ~~ THEN REPLY #40959 GOTO 22
  IF ~PartyHasItem("BOOK98")~ THEN REPLY #59901 GOTO 28
  IF ~~ THEN REPLY #40960 GOTO 22
END

IF ~~ THEN BEGIN 21
  SAY #40961
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22
  SAY #40962
  IF ~~ THEN DO ~SetGlobal("SamiaPreempted","GLOBAL",1)~ GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY #40963
  IF ~~ THEN DO ~EraseJournalEntry(7167)
CreateCreatureObject("Akae",Myself,0,0,0)
CreateCreatureObject("Kaol",Myself,0,0,0)
CreateCreatureObject("Chak",Myself,0,0,0)
CreateCreatureObject("Legdor",Myself,0,0,0)
CreateCreatureObject("Deshar",Myself,0,0,0)
ActionOverride("Akae",Enemy())
ActionOverride("Kaol",Enemy())
ActionOverride("Chak",Enemy())
ActionOverride("Legdor",Enemy())
ActionOverride("Deshar",Enemy())
Enemy()~ SOLVED_JOURNAL #5812 EXIT
END

IF WEIGHT #1 ~OR(3)
PartyHasItem("sw1h32")
PartyHasItem("shld21")
Global("Iatomb","AR1202",1)~ THEN BEGIN 24
  SAY #40964
  IF ~~ THEN DO ~SetGlobal("SamiaHostile","GLOBAL",1)~ GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY #40965
  IF ~~ THEN DO ~EraseJournalEntry(7167)
ActionOverride("Akae",Enemy())
ActionOverride("Kaol",Enemy())
ActionOverride("Chak",Enemy())
ActionOverride("Legdor",Enemy())
ActionOverride("Deshar",Enemy())
Enemy()~ SOLVED_JOURNAL #7168 EXIT
END

IF ~~ THEN BEGIN 26
  SAY #59898
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY #59899
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 28
  SAY #59902 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29
  SAY @3501
  IF ~~ THEN DO ~GiveItem("key21",LastTalkedToBy()) GivePartyGold(250)~ GOTO 26
END