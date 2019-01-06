BEGIN ~NTCHOLGA~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN DO ~CreateCreature("KOBCOMM",[2352.1487],0)
CreateCreature("KOBCOMM",[2455.1553],0) 
CreateCreature("KOBCOMM",[2448.1671],2) 
CreateCreature("KOBCOMM",[2378.1810],3) 
CreateCreature("KOBCOMM",[2238.1899],4) 
CreateCreature("KOBCOMM",[2051.1855],5) 
CreateCreature("KOBCOMM",[1911.1775],6)
CreateCreature("KOBCOMM",[1858.1656],7) 
CreateCreature("KOBCOMM",[1836.1560],8) 
CreateCreature("KOBCOMM",[1898.1496],9) 
CreateCreature("KOBCOMM",[2027.1429],10)
CreateCreature("KOBCOMM",[2157.1452],11)
CreateCreature("KOBCOMM",[2249.1466],12)
CreateCreature("KOBCOMM",[2152.1597],13)
CreateCreature("KOBCOMM",[2152.1685],0)
Enemy()
ActionOverride("NTBALEN",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN DO ~CreateCreature("KOBCOMM",[2352.1487],0)
CreateCreature("KOBCOMM",[2455.1553],0)
CreateCreature("KOBCOMM",[2448.1671],2)  
CreateCreature("KOBCOMM",[2378.1810],3)  
CreateCreature("KOBCOMM",[2238.1899],4)  
CreateCreature("KOBCOMM",[2051.1855],5)  
CreateCreature("KOBCOMM",[1911.1775],6)  
CreateCreature("KOBCOMM",[1858.1656],7)  
CreateCreature("KOBCOMM",[1836.1560],8)  
CreateCreature("KOBCOMM",[1898.1496],9)  
CreateCreature("KOBCOMM",[2027.1429],10) 
CreateCreature("KOBCOMM",[2157.1452],11) 
CreateCreature("KOBCOMM",[2249.1466],12) 
CreateCreature("KOBCOMM",[2152.1597],13) 
CreateCreature("KOBCOMM",[2152.1685],0)
Enemy()
ActionOverride("NTBALEN",Enemy())~ EXIT
END
