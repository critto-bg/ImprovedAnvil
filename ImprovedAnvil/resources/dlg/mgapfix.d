REPLACE MGAPPR02
  IF ~InPartySlot(LastTalkedToBy,0) Global("MageStrongHoldDone","AR0411",3) Global("mgPotionReady","AR0411",1)~ THEN BEGIN 118
  SAY #59842
  IF ~GlobalLT("Iamgmaxpotions","AR0411",9)~ THEN DO ~SetGlobal("mgPotionReady","AR0411",0) IncrementGlobal("Iamgmaxpotions","AR0411",1) SetGlobal("mgPotionMade","AR0411",1)~ EXIT
  IF ~Global("Iamgmaxpotions","AR0411",9)~ THEN DO ~SetGlobal("mgPotionReady","AR0411",0) SetGlobal("mgPotionMade","AR0411",1) DialogueInterrupt(FALSE) SetInterrupt(FALSE) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END
END