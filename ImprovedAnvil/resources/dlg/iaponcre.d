BEGIN ~IAPONCRE~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @4940
  IF ~Global("Iacanbreathe","GLOBAL",0) Global("Iabreathissue","AR2810",1) !Global("Iaancholwat","GLOBAL",4)~ THEN REPLY @4941 GOTO 1
  IF ~Global("Iacanbreathe","GLOBAL",0) Global("Iabreathissue","AR2810",1) Global("Iaancholwat","GLOBAL",4) !PartyHasItem("S!misc59")~ THEN REPLY @4941 GOTO 1
  IF ~Global("Iacanbreathe","GLOBAL",0) Global("Iabreathissue","AR2810",1) Global("Iaancholwat","GLOBAL",4) PartyHasItem("S!misc59")~ THEN REPLY @4958 GOTO 3
  IF ~Global("Iapondpotion","AR2810",0) GlobalLT("Iammirrorjob","GLOBAL",5)~ THEN REPLY @4946 GOTO 5
  IF ~Global("Iammirrorjob","GLOBAL",6) PartyHasItem("S!misc53") PartyHasItem("S!misc45") GlobalGT("Iapondpotion","AR2810",1)~ THEN REPLY @4953 GOTO 12
  IF ~Global("Iammirrorjob","GLOBAL",6) PartyHasItem("S!misc53") PartyHasItem("S!misc45") GlobalLT("Iapondpotion","AR2810",2)~ THEN REPLY @4953 GOTO 13
  IF ~~ THEN REPLY @4942 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @4943
  IF ~~ THEN REPLY @4944 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @4945
  IF ~~ THEN DO ~SetGlobal("Iaancholwat","GLOBAL",1) SetGlobal("Iaponcrespawn","AR2810",0) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @4959
  IF ~~ THEN DO ~TakePartyItem("S!misc59") DestroyItem("S!misc59") SetGlobal("Iacanbreathe","GLOBAL",1) SetGlobal("Iaponcrespawn","AR2810",0) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY #9749
  IF ~~ THEN DO ~SetGlobal("Iaponcrespawn","AR2810",0) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @4947
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @4948
  IF ~~ THEN REPLY #21056 GOTO 7
  IF ~~ THEN REPLY @4949 GOTO 4
END

IF ~~ THEN BEGIN 7
  SAY @4950
  IF ~Global("Iammirrorjob","GLOBAL",3)~ THEN REPLY @4951 DO ~SetGlobal("Iapondpotion","AR2810",2)~ GOTO 8
  IF ~Global("Iammirrorjob","GLOBAL",4)~ THEN REPLY @4951 DO ~SetGlobal("Iapondpotion","AR2810",2)~ GOTO 9
  IF ~Global("Iammirrorjob","GLOBAL",3)~ THEN REPLY @4952 DO ~SetGlobal("Iapondpotion","AR2810",1)~ GOTO 10
  IF ~Global("Iammirrorjob","GLOBAL",4)~ THEN REPLY @4952 DO ~SetGlobal("Iapondpotion","AR2810",1)~ GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY #9749
  IF ~~ THEN DO ~GiveItemCreate("potn33",LastTalkedToBy,4,0,0) SetGlobal("Iaponcrespawn","AR2810",0) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY #9749
  IF ~~ THEN DO ~GiveItemCreate("potn33",LastTalkedToBy,5,0,0) SetGlobal("Iaponcrespawn","AR2810",0) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY #9749
  IF ~~ THEN DO ~GiveItemCreate("potn33",LastTalkedToBy,2,0,0) SetGlobal("Iaponcrespawn","AR2810",0) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY #9749
  IF ~~ THEN DO ~GiveItemCreate("potn33",LastTalkedToBy,3,0,0) SetGlobal("Iaponcrespawn","AR2810",0) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @4954
  IF ~~ THEN DO ~TakePartyItem("S!misc53") DestroyItem("S!misc53") TakePartyItem("S!misc45") DestroyItem("S!misc45") AddexperienceParty(25500) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @4955
  IF ~PartyHasItem("S!axe02") GlobalLT("Iapondpotion","AR2810",2)~ THEN REPLY @4956 GOTO 14
  IF ~Global("Iapondpotion","AR2810",0)~ THEN REPLY @4957 GOTO 15
  IF ~Global("Iapondpotion","AR2810",1)~ THEN REPLY @4957 GOTO 16
END

IF ~~ THEN BEGIN 14
  SAY #9749
  IF ~~ THEN DO ~TakePartyItem("S!misc53") DestroyItem("S!misc53") TakePartyItem("S!misc45") DestroyItem("S!misc45") TakePartyItem("S!axe02") DestroyItem("S!axe02") SetGlobal("Iaaxe03forged","GLOBAL",1) GiveItemCreate("S!axe03",LastTalkedToBy,1,1,1) AddexperienceParty(25500) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY #9749
  IF ~~ THEN DO ~TakePartyItem("S!misc53") DestroyItem("S!misc53") TakePartyItem("S!misc45") DestroyItem("S!misc45") GiveItemCreate("potn33",LastTalkedToBy,5,0,0) AddexperienceParty(25500) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY #9749
  IF ~~ THEN DO ~TakePartyItem("S!misc53") DestroyItem("S!misc53") TakePartyItem("S!misc45") DestroyItem("S!misc45") GiveItemCreate("potn33",LastTalkedToBy,2,0,0) AddexperienceParty(25500) DestroySelf()~ EXIT
END