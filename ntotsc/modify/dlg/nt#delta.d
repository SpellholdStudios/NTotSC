REPLACE_SAY DELTAN 6 @0

/*
REPLACE_TRANS_ACTION DELTAN BEGIN 6 16 END BEGIN END ~SetGlobal("HelpEltan","GLOBAL",1)~ ~SetGlobal("HelpEltan","GLOBAL",1)
SetGlobal("NTNewEltanMissionNorth","GLOBAL",1)
RevealAreaOnMap("AR30PB")
AddJournalEntry(@10003,QUEST)~
*/

ADD_TRANS_ACTION DELTAN BEGIN 6 16 END BEGIN END ~SetGlobal("NTNewEltanMissionNorth","GLOBAL",1)
RevealAreaOnMap("AR30PB")
AddJournalEntry(@10003,QUEST)~
