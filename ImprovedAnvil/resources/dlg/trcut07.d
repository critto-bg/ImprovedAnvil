ALTER_TRANS ~TRCUT07~
  BEGIN 9 END
  BEGIN 0 END
BEGIN
  "TRIGGER" ~!Class(Player1,DRUID_ALL) !Class(Player1,SHAMAN)~
END

EXTEND_BOTTOM ~TRCUT07~ 9 #1
  IF ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,SHAMAN)~ THEN
  DO ~GiveGoldForce(10750)
      GiveItemCreate("S!misc74",LastTalkedToBy,0,0,0)
      AddXPObject(Player1,25250)
      AddXPObject(Player2,25250)
      AddXPObject(Player3,25250)
      AddXPObject(Player4,25250)
      AddXPObject(Player5,25250)
      AddXPObject(Player6,25250)
      ActionOverride("trcut01",EscapeArea())
      ActionOverride("trcut02",EscapeArea())
      ActionOverride("trcut03",EscapeArea())
      ActionOverride("trcut04",EscapeArea())
      ActionOverride("trcut05",EscapeArea())
      ActionOverride("trcut06",EscapeArea())
      EscapeArea()~
  UNSOLVED_JOURNAL #10119
  EXIT
END