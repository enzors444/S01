DIM pin AS INTEGER
DIM tentativa AS INTEGER

pin = 4321

DO WHILE tentativa <> pin
    INPUT tentativa

    IF tentativa <> pin THEN
        PRINT "PIN invalido. Tente novamente."
    END IF

LOOP

PRINT "Transacao autorizada!"

SLEEP