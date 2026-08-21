DIM horas AS DOUBLE
DIM minutos AS DOUBLE 
DIM segundos AS DOUBLE

INPUT horas

minutos = horas * 60
segundos = horas * 3600

PRINT "Tempo em horas:"; horas
PRINT "Tempo em minutos:"; minutos
PRINT "Tempo em segundos:"; segundos

SLEEP