BEGIN ~IALOOKE2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @3900
  IF ~~ THEN REPLY @3901 GOTO 1
  IF ~~ THEN REPLY @3902 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @3903
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @3904
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @3905
  IF ~~ THEN REPLY @3906 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @3907
  IF ~~ THEN REPLY @3908 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @3909
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @3910
  IF ~~ THEN REPLY @3911 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @3912
  IF ~~ THEN REPLY @3913 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @3914
  IF ~Global("Iawhyshow","ARia18",0)~ THEN REPLY @3915 DO ~SetGlobal("Iawhyshow","ARia18",1)~ GOTO 9
  IF ~Global("Iawhyauriel","ARia18",0)~ THEN REPLY @3916 DO ~SetGlobal("Iawhyauriel","ARia18",1)~ GOTO 10
  IF ~Global("Iahowswan","ARia18",0)~ THEN REPLY @3917 DO ~SetGlobal("Iahowswan","ARia18",1)~ GOTO 15
  IF ~Global("Iawhyugly","ARia18",0)~ THEN REPLY @3918 DO ~SetGlobal("Iawhyugly","ARia18",1)~ GOTO 16
  IF ~Global("Iawasagent","ARia18",0)~ THEN REPLY @3919 DO ~SetGlobal("Iawasagent","ARia18",1)~ GOTO 17
END

IF ~~ THEN BEGIN 9
  SAY @3920
  IF ~OR(4) Global("Iawhyauriel","ARia18",0)
            Global("Iahowswan","ARia18",0)
            Global("Iawhyugly","ARia18",0)
            Global("Iawasagent","ARia18",0)~
    THEN REPLY @3927 GOTO 8
  IF ~~ THEN REPLY @3928 GOTO 18
END

IF ~~ THEN BEGIN 10
  SAY @3921
  IF ~Global("Iamalbardead","GLOBAL",0)~ THEN GOTO 11
  IF ~GlobalGT("Iamalbardead","GLOBAL",0)~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @3922
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 12
  SAY @3923
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @3924
  IF ~~ THEN REPLY @3925 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @3926
  IF ~OR(4) Global("Iawhyshow","ARia18",0)
            Global("Iahowswan","ARia18",0)
            Global("Iawhyugly","ARia18",0)
            Global("Iawasagent","ARia18",0)~
    THEN REPLY @3927 GOTO 8
  IF ~~ THEN REPLY @3928 GOTO 18
END

IF ~~ THEN BEGIN 15
  SAY @3930
  IF ~OR(4) Global("Iawhyshow","ARia18",0)
            Global("Iawhyauriel","ARia18",0)
            Global("Iawhyugly","ARia18",0)
            Global("Iawasagent","ARia18",0)~
    THEN REPLY @3927 GOTO 8
  IF ~~ THEN REPLY @3928 GOTO 18
END

IF ~~ THEN BEGIN 16
  SAY @3929
  IF ~OR(4) Global("Iawhyshow","ARia18",0)
            Global("Iawhyauriel","ARia18",0)
            Global("Iahowswan","ARia18",0)
            Global("Iawasagent","ARia18",0)~
    THEN REPLY @3927 GOTO 8
  IF ~~ THEN REPLY @3928 GOTO 18
END

IF ~~ THEN BEGIN 17
  SAY @3931
  IF ~OR(4) Global("Iawhyshow","ARia18",0)
            Global("Iawhyauriel","ARia18",0)
            Global("Iahowswan","ARia18",0)
            Global("Iawhyugly","ARia18",0)~
    THEN REPLY @3927 GOTO 8
  IF ~~ THEN REPLY @3928 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @3932
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @3933
  IF ~~ THEN REPLY @3934 GOTO 20
  IF ~~ THEN REPLY @3935 GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @3936
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @3937
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @3938
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @3939
  IF ~Global("Ianotweak","ARia18",0)~ THEN REPLY @3940 DO ~SetGlobal("Ianotweak","ARia18",1)~ GOTO 24
  IF ~Global("Iaabluff","ARia18",0)~ THEN REPLY @3941 DO ~SetGlobal("Iaabluff","ARia18",1)~ GOTO 25
  IF ~~ THEN REPLY @3942 GOTO 26
  IF ~~ THEN REPLY @3943 GOTO 27
END

IF ~~ THEN BEGIN 24
  SAY @3944
  IF ~Global("Iaabluff","ARia18",0)~ THEN REPLY @3941 DO ~SetGlobal("Iaabluff","ARia18",1)~ GOTO 25
  IF ~~ THEN REPLY @3942 GOTO 26
  IF ~~ THEN REPLY @3943 GOTO 27
END

IF ~~ THEN BEGIN 25
  SAY @3945
  IF ~Global("Ianotweak","ARia18",0)~ THEN REPLY @3940 DO ~SetGlobal("Ianotweak","ARia18",1)~ GOTO 24
  IF ~~ THEN REPLY @3942 GOTO 26
  IF ~~ THEN REPLY @3943 GOTO 27
END

IF ~~ THEN BEGIN 26
  SAY @3946
  IF ~Global("Ianotweak","ARia18",0)~ THEN REPLY @3940 DO ~SetGlobal("Ianotweak","ARia18",1)~ GOTO 24
  IF ~Global("Iaabluff","ARia18",0)~ THEN REPLY @3941 DO ~SetGlobal("Iaabluff","ARia18",1)~ GOTO 25
  IF ~~ THEN REPLY @3943 GOTO 27
  IF ~~ THEN REPLY @3947 GOTO 28
END

IF ~~ THEN BEGIN 27
  SAY @3951
  IF ~Global("Ianotweak","ARia18",0)~ THEN REPLY @3940 DO ~SetGlobal("Ianotweak","ARia18",1)~ GOTO 24
  IF ~Global("Iaabluff","ARia18",0)~ THEN REPLY @3941 DO ~SetGlobal("Iaabluff","ARia18",1)~ GOTO 25
  IF ~~ THEN REPLY @3942 GOTO 26
END

IF ~~ THEN BEGIN 28
  SAY @3948
  IF ~~ THEN REPLY @3949 GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @3950
  IF ~~ THEN REPLY @3952 GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @3953
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @3954                                                          
  IF ~~ THEN DO ~SetGlobal("Iaswanmejob","GLOBAL",6) SetGlobalTimer("Iaaurieldies","GLOBAL",THREE_DAYS) DestroySelf()~ EXIT
END