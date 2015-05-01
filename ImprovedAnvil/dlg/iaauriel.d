BEGIN ~IAAURIEL~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1950
  IF ~~ THEN GOTO 1
END

IF ~Global("Iarangerjob","GLOBAL",4)~ THEN BEGIN 1
  SAY @1951
  IF ~~ THEN REPLY @1952 GOTO 4
  IF ~GlobalLT("Iarenchanter","GLOBAL",2)~ THEN REPLY @1953 GOTO 5
  IF ~GlobalLT("Iarillusion","GLOBAL",2)~ THEN REPLY @1954 GOTO 6
  IF ~Global("Iarillusion","GLOBAL",2) Global("Iarenchanter","GLOBAL",2)~ THEN REPLY @1964 GOTO 10
END

IF ~GlobalGT("Iarangerjob","GLOBAL",4) GlobalLT("Iarangerjob","GLOBAL",7)~ THEN BEGIN 2
  SAY @1967
  IF ~Global("Iarangerjob","GLOBAL",5)~ THEN REPLY @1968 EXIT
  IF ~Global("Iarangerjob","GLOBAL",6)~ THEN REPLY @1969 EXIT
END

IF ~Global("Iarangerjob","GLOBAL",7)~ THEN BEGIN 3
  SAY @1970
  IF ~~ THEN REPLY @1971 GOTO 11
END

IF ~~ THEN BEGIN 4
  SAY @1955
  IF ~~ THEN REPLY @1956 GOTO 7
  IF ~~ THEN REPLY @1957 GOTO 8
  IF ~~ THEN REPLY @1958 GOTO 9
END

IF ~~ THEN BEGIN 5
  SAY @1959
  IF ~~ THEN DO ~SetGlobal("Iarenchanter","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @1960
  IF ~~ THEN DO ~SetGlobal("Iarillusion","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @1961
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 8
  SAY @1962
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 9
  SAY @1963
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 10
  SAY @1965
  IF ~~ THEN REPLY @1966 DO ~SetGlobal("Iarangerjob","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @1972
  IF ~!PartyHasItem("S!misc22")~ THEN REPLY @1973 EXIT
  IF ~PartyHasItem("S!misc22")~ THEN REPLY @1974 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @1975
  IF ~~ THEN DO ~SetGlobal("Iarangerjob","GLOBAL",8) EscapeArea()~ EXIT
END