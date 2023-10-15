BEGIN ~IADRAD~

// in the inn
IF ~~ THEN BEGIN 0
  SAY @5490
  IF ~~ THEN REPLY @5491 EXTERN ~PPSAEM3~ 73
END

IF ~~ THEN BEGIN 1
  SAY @5602
  IF ~~ THEN REPLY @5603 DO ~SetGlobal("IADradeel","GLOBAL",2)~ EXTERN ~PPSAEM3~ 76
END

// one-liners when talked to between plot events
IF ~Global("IADradeel","GLOBAL",2) AreaCheck("AR1602") Global("IATavern","LOCALS",0)~ THEN BEGIN 2
  SAY @5608
  IF ~~ THEN DO ~SetGlobal("IATavern","LOCALS",1) EscapeArea()~
  EXIT
END

// at the docks
IF ~~ THEN BEGIN 3
  SAY @5616
  IF ~~ THEN EXTERN ~PPSAEM3~ 81
END

IF ~OR(3) Global("IADradeel","GLOBAL",1) AreaCheck("AR1600") AreaCheck("S!0002")~ THEN BEGIN 4
  SAY @5483
  IF ~~ THEN EXIT
END

// arrival on the island
IF ~~ THEN BEGIN 5
  SAY @5630
  IF ~~ THEN REPLY @5631 EXTERN ~IAGDRU02~ 3
END

IF ~~ THEN BEGIN 6
  SAY @5635
  IF ~~ THEN REPLY @5636 EXTERN ~IAGDRU02~ 5
END

// inside the house
IF ~~ THEN BEGIN 7
  SAY @5647
  IF ~~ THEN EXTERN ~IAGDRU02~ 9
END

IF ~~ THEN BEGIN 8
  SAY @5651
  IF ~~ THEN EXTERN ~IAGDRU02~ 11
END

IF ~Global("IADradeel","GLOBAL",5) AreaCheck("S!0003") Global("IAClicked","S!0003",0)~ THEN BEGIN 9
  SAY @5651
  IF ~~ THEN EXIT
END

// hidden room found
IF ~Global("IADradeel","GLOBAL",5) AreaCheck("S!0003") Global("IAClicked","S!0003",1)~ THEN BEGIN 10
  SAY @5660
  IF ~~ THEN EXTERN ~IAGDRU02~ 13
END

IF ~Global("IADradeel","GLOBAL",6) AreaCheck("S!0003")~ THEN BEGIN 11
  SAY @5660
  IF ~~ THEN EXIT
END