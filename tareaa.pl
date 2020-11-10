hermano(carlos).
hermano(alberto).
hermano(luis).

dia(lunes).
dia(martes).
dia(miercoles).
dia(jueves).
dia(viernes).
dia(sabado).
dia(domingo).

frase('Hoy es el tercer dia que miento').
frase('Hola, soy alberto').
frase('Mañana será sabado').


posibleV(alberto,'Hola, soy alberto',jueves).
posibleV(alberto,'Hola, soy alberto',sabado).
posibleV(alberto,'Hola, soy alberto',domingo).
posibleV(alberto,'Mañana será sabado',viernes).

miente_verdad(carlos,alberto,miercoles).
miente_verdad(carlos,luis,viernes).

miente(alberto,lunes).
miente(alberto,martes).
miente(alberto, miercoles).

miente(carlos,miercoles).
miente(carlos,jueves).
miente(carlos,viernes).

miente(luis,viernes).
miente(luis,sabado).
miente(luis,domingo).

verdad(alberto,jueves).
verdad(alberto,viernes).
verdad(alberto,sabado).
verdad(alberto,domingo).

verdad(carlos,lunes).
verdad(carlos,martes).
verdad(carlos,sabado).
verdad(carlos,domingo).

verdad(luis,lunes).
verdad(luis,martes).
verdad(luis,miercoles).
verdad(luis,jueves).

respuesta(X,Y,A,B,Z):-verdad(Y,X),miente_verdad(A,B,X),miente(B,X),posibleV(Y,Z,X).
