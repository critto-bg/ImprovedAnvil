BEGIN ~IADRYAD~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @950
  IF ~~ THEN REPLY @951 GOTO 2
END

IF ~Global("DryadExplained","AR1100",0)~ THEN BEGIN 2
  SAY @952
  IF ~~ THEN REPLY @953 DO ~SetGlobal("DryadExplained","AR1100",1)~ EXIT
END

IF ~Global("DryadExplained","AR1100",1)~ THEN BEGIN 3
  SAY @954
  IF ~!GlobalTimerNotExpired("DryadReady","GLOBAL")~ THEN REPLY @955 GOTO 4
  IF ~!GlobalTimerNotExpired("DryadReady","GLOBAL")~ THEN REPLY @956 GOTO 5
  IF ~!GlobalTimerNotExpired("DryadReady","GLOBAL")~ THEN REPLY @957 GOTO 6
  IF ~~ THEN REPLY @958 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @959
  IF ~~ THEN DO ~SetGlobalTimer("DryadReady","GLOBAL",SEVEN_DAYS) IncrementGlobal("IaDryadItems","AR1100",1) GiveItemCreate("potn34",[PC],1,0,0) GiveItemCreate("potn35",[PC],1,0,0) GiveItemCreate("potn55",[PC],1,0,0) GiveItemCreate("potn17",[PC],2,0,0) GiveItemCreate("potn43",[PC],1,0,0) GiveItemCreate("potn52",[PC],3,0,0) GiveItemCreate("potn29",[PC],1,0,0) GiveItemCreate("potn02",[PC],1,0,0) GiveItemCreate("potn21",[PC],1,0,0) GiveItemCreate("potn42",[PC],3,0,0)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @959
  IF ~~ THEN DO ~SetGlobalTimer("DryadReady","GLOBAL",SEVEN_DAYS) IncrementGlobal("IaDryadItems","AR1100",1) GiveItemCreate("scrl63",[PC],1,0,0) GiveItemCreate("scrl62",[PC],1,0,0) GiveItemCreate("scrl5f",[PC],1,0,0) GiveItemCreate("scrl58",[PC],1,0,0) GiveItemCreate("scrl61",[PC],2,0,0) GiveItemCreate("restore",[PC],2,0,0) GiveItemCreate("scrl5d",[PC],2,0,0) GiveItemCreate("scrl56",[PC],3,0,0) GiveItemCreate("scrl5b",[PC],2,0,0)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @959
  IF ~~ THEN DO ~SetGlobalTimer("DryadReady","GLOBAL",SEVEN_DAYS) IncrementGlobal("IaDryadItems","AR1100",1) GiveItemCreate("scrl1v",[PC],3,0,0) GiveItemCreate("scrl2f",[PC],3,0,0) GiveItemCreate("scrl7s",[PC],3,0,0) GiveItemCreate("scrl7j",[PC],2,0,0) GiveItemCreate("scrl7u",[PC],2,0,0) GiveItemCreate("scrl7i",[PC],2,0,0)~ EXIT
END