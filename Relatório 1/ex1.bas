DIM peso AS DOUBLE
DIM agua_ingerida AS DOUBLE
DIM meta AS DOUBLE

INPUT peso
INPUT agua_ingerida

meta = peso * 35

IF agua_ingerida >= meta THEN
    PRINT "Meta atingida!"
ELSE
    PRINT "Meta não atingida!"
END IF

SLEEP