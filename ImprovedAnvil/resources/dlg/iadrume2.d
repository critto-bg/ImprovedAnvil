BEGIN ~IADRUME2~

IF ~True()~ THEN BEGIN Warning
  SAY @5980
  = @5981
  = @5982

  IF ~~ THEN DO ~SetGlobalTimer("IADruidMeetVerthanTimer","GLOBAL",SEVEN_DAYS) AddJournalEntry(@5525,QUEST) EscapeArea()~ EXIT
END
