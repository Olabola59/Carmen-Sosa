
%PERTENECE-Verificar si un elmento pertence a una lista dada
pertenece(E,[E|_]).
pertenece(E,[_|T]):- pertenece(E,T).

%SIZE-Obtener la longitud de una lista
size([],0).
size([_|T],R):- size(T,R2), R is R2+1.

%CONCATENACION-Obtener la concatenacion de dos listas dadas
concatenar([],L2,L2).
concatenar([H1|T1],L2,[H1|R]):- concatenar(T1,L2,R).

%ELIMINAR-Eliminar un elemento de una lista
eliminar(_,[],[]).
eliminar(X,[X],[]).
eliminar(X,[H1|T1],[H1|Tail]):- X=\=H1, eliminar(X,T1,Tail).
eliminar(X,[H1|T1],Tail):- X=:=H1, eliminar(X,T1,Tail).

%AGREGAR-Agregar elemento de una lista
agregar(X,[],[X]).
agregar(X,L,[X|L]).

%ASCENDENTE-Verifica si una lista se encuentra de manera ascendente
ascendente([_]).
ascendente([X1,X2|TAIL]):- X1<X2, ascendente([X2|TAIL]).

%DESCENDENTE-Verifica si una lista se encuentra de manera descendente
descendente([_]).
descendente([X1,X2|TAIL]):- X1>X2, descendente([X2|TAIL]).

%MENOR QUE HEAD-Obtener una lista con elementos menores que el elemento head
menorHead([],[]).
menorHead([_],[]).
menorHead([X1,X2|TAIL],[X2|L]):- X1 > X2, menorHead([X1|TAIL],L).
menorHead([X1,X2|TAIL],L):- X1 < X2, menorHead([X1|TAIL],L).

%MAYOR QUE HEAD-Obtener una lista con elementos mayores que el elemento head
mayorHead([],[]).
mayorHead([_],[]).
mayorHead([X1,X2|TAIL],[X2|L]):- X1 < X2, mayorHead([X1|TAIL],L).
mayorHead([X1,X2|TAIL],L):- X1 > X2, mayorHead([X1|TAIL],L).
