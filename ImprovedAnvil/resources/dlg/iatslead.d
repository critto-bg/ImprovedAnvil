BEGIN ~IATSLEAD~

IF ~~ THEN BEGIN 0
  SAY @5417
  IF ~~ THEN REPLY @5418 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @5419
  IF ~~ THEN EXTERN ~IAGDRU01~ 4
END

IF ~~ THEN BEGIN 2
  SAY @5421
  IF ~~ THEN REPLY @5422 EXTERN ~IAGDRU01~ 5
END

IF ~~ THEN BEGIN 3
  SAY @5424
  IF ~~ THEN EXTERN ~IAGDRU01~ 6
END

IF ~~ THEN BEGIN 4
  SAY @5428
  IF ~~ THEN REPLY @5429 EXTERN ~IAGDRU01~ 8
END

IF ~~ THEN BEGIN 5
  SAY @5431
  IF ~~ THEN EXTERN ~IAGDRU01~ 9
END

IF ~~ THEN BEGIN 6
  SAY @5436
  IF ~~ THEN
    DO ~SetGlobal("IADruidPlot","GLOBAL",6)
        ActionOverride("S!gdru01",EscapeArea())
        ActionOverride("S!logan",EscapeArea())
        EscapeArea()~
    EXIT
END

IF ~Global("IADruidPlot","GLOBAL",9)~ 7
  SAY @5760
  ++ @5761 + 8
END

IF ~~ 8
  SAY @5762
  ++ @5763 + 9
END

IF ~~ 9
  SAY @5764
  ++ @5765 + 10
END

IF ~~ 10
  SAY @5766
  ++ @5767 + 11
END

IF ~~ 11
  SAY @5768
  ++ @5769 + 12
END

IF ~~ 12
  SAY @5770
  ++ @5771 + 13
END

IF ~~ THEN BEGIN 13
  SAY @5772
  IF ~~ THEN DO
    ~SetGlobal("IADruidPlot","GLOBAL",10)
     ClearAllActions()
     StartCutSceneMode()
     StartCutSceneEx("S!druc11",TRUE)~
  EXIT
END

IF ~~ THEN BEGIN 14
  SAY @5786
  IF ~~ THEN EXTERN ~IAGDRU03~ 1
END

IF ~~ THEN BEGIN 15
  SAY @5829
  IF ~~ THEN REPLY @5830 EXTERN ~IAGDRU03~ 11
END