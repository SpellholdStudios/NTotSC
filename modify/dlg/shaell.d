/*
PC needs to talk to Shaella to make Hasdar step up, but it doesn't matter how far the conversation went and whether it's before or after chapter 7.

Global("NTTalkedToShaellaPB","GLOBAL",1): PC talked to Shaella but didn't hear about the book.
Global("NTTalkedToShaellaPB","GLOBAL",2): PC talked to Shaella and heard about the book.
Global("NTTalkedToShaellaPB","GLOBAL",3): PC talked to "Elneadra", too. (Can only happen after Shaella told PC about the book).

*/

REPLACE_STATE_TRIGGER SHAELL 0 ~Global("HelpShaella","GLOBAL",0)~

/* PC talked to Shaella but didn't hear about the book. */
ADD_TRANS_ACTION SHAELL
BEGIN 0 END
BEGIN END
~SetGlobal("NTTalkedToShaellaPB","GLOBAL",1)~ 

/* PC talked to Shaella and heard about the book. 
contains fix: game didn't set the variable if Shaella was asked whether she saw the book herself*/

ADD_TRANS_ACTION SHAELL
BEGIN 11 END
BEGIN END
~SetGlobal("NTTalkedToShaellaPB","GLOBAL",2) SetGlobal("HelpShaella","GLOBAL",1)~ 


/* PC talked to "Elneadra", too. */
ADD_TRANS_ACTION SHAELL
BEGIN 14 END
BEGIN END
~SetGlobal("NTTalkedToShaellaPB","GLOBAL",3)~

ADD_TRANS_ACTION SHAELL
BEGIN 16 END
BEGIN 2 END
~SetGlobal("HelpShaella","GLOBAL",2)~

ADD_TRANS_ACTION SHAELL
BEGIN 16 END
BEGIN 0 END
~SetGlobal("NTTalkedToElnaedraPB","GLOBAL",1)
EraseJournalEntry(%shaella_journal%)~


ALTER_TRANS SHAELL // file name
BEGIN 16 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "UNSOLVED_JOURNAL" ~%number_sign%%shaella_journal_solved%~ //
END


REPLACE_STATE_TRIGGER SHAELL 17 ~Global("HelpShaella","GLOBAL",2)~