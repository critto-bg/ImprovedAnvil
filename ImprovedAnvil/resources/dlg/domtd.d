ALTER_TRANS DOMT
  BEGIN 19 END
  BEGIN 0 END
BEGIN
  "TRIGGER" ~!Class(LastTalkedToBy,CLERIC_ALL) !Class(LastTalkedToBy,DRUID_ALL) !Class(LastTalkedToBy,SHAMAN) !Class(LastTalkedToBy,MAGE_ALL) !Class(LastTalkedToBy,BARD_ALL) !Class(LastTalkedToBy,THIEF_ALL)~
END

ALTER_TRANS DOMT
  BEGIN 19 END
  BEGIN 1 END
BEGIN
  "TRIGGER" ~OR(2)
Class(LastTalkedToBy,CLERIC_ALL)
Class(LastTalkedToBy,DRUID_ALL)
!Class(LastTalkedToBy,SHAMAN)~
END
