%mañana sera sabado solo puede ser verdad si alberto lo dice
%hoy es el tercer dia que miento siempre sera metira por lo que no puede ser ni miercoles, viernes o sabado
%hola soy alberto sera mentira si lo dice carlos o luis

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

miente(alberto,lunes, "mañana es sabado").
miente(alberto,martes,"mañana es sabado").
miente(alberto, miercoles,"mañana es sabado").
miente(alberto,lunes,"hoy es el tercer dia que miento").
miente(alberto,martes,"hoy es el tercer dia que miento").

miente(carlos,miercoles,"hoy es el tercer dia que miento").
miente(carlos,jueves,"hoy es el tercer dia que miento").
miente(carlos,viernes,'Hola, soy alberto').

miente(luis,viernes,"hoy es el tercer dia que miento").
miente(luis,sabado,"hoy es el tercer dia que miento").
miente(luis,domingo,'Hola, soy alberto').

verdad(alberto,jueves).
verdad(alberto,viernes).
verdad(alberto,sabado).
verdad(alberto,domingo).
verdad(alberto,viernes).

verdad(carlos,lunes).
verdad(carlos,martes).
verdad(carlos,sabado).
verdad(carlos,domingo).

verdad(luis,lunes).
verdad(luis,martes).
verdad(luis,miercoles).
verdad(luis,jueves).

respuesta(X,Y,A,B,Z,S,D):-verdad(Y,X),miente_verdad(A,D,X),miente(D,X,S),posibleV(Y,Z,X),miente(A,X,B).
