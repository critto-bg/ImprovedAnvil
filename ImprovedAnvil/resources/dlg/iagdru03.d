BEGIN ~IAGDRU03~

IF ~Global("IADruidPlot","GLOBAL",10) Global("IAPlot","S!0001",1)~ THEN BEGIN 0
  SAY @5785
  IF ~Global("IADramDies","GLOBAL",0)~ THEN EXTERN ~IATSLEAD~ 14
  IF ~Global("IADramDies","GLOBAL",1)~ THEN REPLY @5789 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @5787
  IF ~~ THEN DO ~SetGlobal("IAPlot","S!0001",2)~ REPLY @5788
  EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5790
  IF ~~ THEN REPLY @5791 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @5792
  IF ~~ THEN DO ~SetGlobal("IAPlot","S!0001",2)~
  EXIT
END

IF ~~ THEN BEGIN 4
  SAY @5802
  IF ~~ THEN EXTERN ~IAFERR01~ 2
END

IF ~~ THEN BEGIN 5
  SAY @5806
  IF ~~ THEN EXTERN ~IAFERR01~ 4
END

IF ~Global("IADruidPlot","GLOBAL",10) Global("IAPlot","S!0001",3)~ THEN BEGIN 6
  SAY @5815
  IF ~~ THEN EXTERN ~IAFERR01~ 7
END

IF ~~ THEN BEGIN 7
  SAY @5818
  IF ~~ THEN EXTERN ~IAFERR01~ 9
END

IF ~Global("IADruidPlot","GLOBAL",10) Global("IAPlot","S!0001",4)~ 8
  SAY @5825
  ++ @5826 + 9
END

IF ~~ 9
  SAY @5827
  = @5828
  IF ~Global("IADramDies","GLOBAL",0)~ THEN EXTERN ~IATSLEAD~ 15
  IF ~Global("IADramDies","GLOBAL",1)~ THEN REPLY @5830 GOTO 11
END

IF ~~ 11
  SAY @5831
  ++ @5832 + 12
END

IF ~~ 12
  SAY @5833
  ++ @5834 + 13
END

IF ~~ 13
  SAY @5835
  ++ @5836 + 14
END

IF ~~ 14
  SAY @5837
  ++ @5838 + 15
END

IF ~~ 15
  SAY @5839
  IF ~~ THEN DO ~SetGlobal("IADruidPlot","GLOBAL",11) AddJournalEntry(@5527,QUEST)~ EXIT
END

IF ~Global("IADruidPlot","GLOBAL",11)~ 16
  SAY @5840
  IF ~~ THEN EXIT
END

IF ~Global("IADruidPlot","GLOBAL",12) !PartyHasItem("S!misc72")~ 17
  SAY @5840
  IF ~~ THEN EXIT
END

IF ~Global("IADruidPlot","GLOBAL",12) PartyHasItem("S!misc72")~ 18
  SAY @5845
  IF ~~ THEN DO ~SetGlobal("IAPlot","S!0001",5) TakePartyItem("S!misc72")~ REPLY @5846 GOTO 19
END

IF ~~ 19
  SAY @5847
  ++ @5848 + 20
END

IF ~~ 20
  SAY @5849
  = @5850
  ++ @5851 + 21
END

IF ~~ 21
  SAY @5852
  = @5853
  ++ @5854 + 22
END

IF ~~ 22
  SAY @5855
  ++ @5856 + 23
END

IF ~~ 23
  SAY @5857
  = @5858
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("S!druc13")~ EXIT
END
