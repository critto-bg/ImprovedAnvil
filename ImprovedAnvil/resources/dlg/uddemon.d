EXTEND_BOTTOM ~UDDEMON~ 20
  IF ~~ THEN REPLY @5300 GOTO 23
END

APPEND ~UDDEMON~
  IF ~~ THEN BEGIN 23
    SAY @5301
    IF ~~ THEN DO ~SetGlobal("Iafight","AR2201",1)
                   SetGlobal("DrowCityHostile","GLOBAL",0)
                   SetGlobalTimer("udEscape","GLOBAL",THREE_TURNS)
                   ChangeAIScript("S!UDDEM",CLASS)
                   EraseJournalEntry(5810)
                   EraseJournalEntry(6535)
                   EraseJournalEntry(16529)
                   EraseJournalEntry(6943)
                   EraseJournalEntry(16339)
                   EraseJournalEntry(9649)
                   EraseJournalEntry(6405)
                   EraseJournalEntry(6403)
                   EraseJournalEntry(6590)
                   EraseJournalEntry(7147)
                   EraseJournalEntry(7148)
                   EraseJournalEntry(15793)
                   EraseJournalEntry(15792)
                   EraseJournalEntry(23424)
                   EraseJournalEntry(5810)
                   EraseJournalEntry(6535)
                   EraseJournalEntry(16529)
                   EraseJournalEntry(6943)
                   EraseJournalEntry(16339)
                   EraseJournalEntry(9649)
                   EraseJournalEntry(6405)
                   EraseJournalEntry(6403)
                   EraseJournalEntry(6590)
                   EraseJournalEntry(7147)
                   EraseJournalEntry(7148)
                   EraseJournalEntry(15793)
                   EraseJournalEntry(15792)
                   EraseJournalEntry(23424)
                   EraseJournalEntry(15797)
                   Enemy()~ EXIT
  END
END