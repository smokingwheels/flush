REM Greg Smith 2015
RANDOMIZE TIMER
GOSUB transform
TIMER ON
atim = INT(120 + (RND * 20))
ON TIMER(atim) GOSUB transform

DO
    SLEEP (1)

LOOP UNTIL INKEY$ = CHR$(27)
CLOSE #1: CLOSE #2
END


transform:

SHELL _HIDE CHR$(34) + "ipconfig /renew" + CHR$(34)
SHELL _HIDE CHR$(34) + "arp -d *" + CHR$(34)
SHELL _HIDE CHR$(34) + "nbtstat -R" + CHR$(34)
SHELL _HIDE CHR$(34) + "nbtstat -RR" + CHR$(34)
SHELL _HIDE CHR$(34) + "ipconfig /flushdns" + CHR$(34)
SHELL _HIDE CHR$(34) + "ipconfig /registerdns" + CHR$(34)
RETURN

