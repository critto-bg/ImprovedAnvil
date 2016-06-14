REPLACE KRUIN
  IF ~~ THEN BEGIN 10
  SAY #59831
  IF ~PartyHasItem("misc8u")~ THEN REPLY #59832 DO ~TakePartyItem("misc8u")~ GOTO 11
  IF ~PartyHasItem("misc8u")~ THEN REPLY #59833 DO ~TakePartyItem("misc8u")~ GOTO 11
  IF ~~ THEN REPLY #59834 GOTO 12
  IF ~~ THEN REPLY #59835 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY #59837
  IF ~PartyHasItem("misc8u")~ THEN REPLY #59838 DO ~TakePartyItem("misc8u")~ GOTO 11
  IF ~~ THEN REPLY #59839 GOTO 13
END
END