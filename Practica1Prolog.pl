peliculas(roberto,suspenso).
peliculas(hannai,suspenso).
peliculas(abimael,suspenso).
peliculas(leonardo,romance).
peliculas(miguel,terror).

musica(abelino,reggae).
musica(jose,rock).
musica(izmucaneth,reggae).
musica(rolando,rock).
musica(maldonado,regional).

netflix(roberto).
netflix(hannai).
netflix(abimael).
netflix(miguel).

botana(roberto,palomitas).
botana(hannai,palomitas).
botana(abimael,maruchan).
botana(leonardo,maruchan).
botana(miguel,ensalada).

%Nadie tiene tiempo libre

audifono(hannai).
audifono(leonardo).
audifono(miguel).
audifono(izmucaneth).
audifono(rolando).

spotify(jose).
spotify(izmucaneth).
spotify(maldonado).


%1. ¿Quienes prefieren ver peliculas?
peliculas(X) :- peliculas(X,_).

%2. ¿Quienes prefieren escuchar música?
musica(X) :- musica(X,_).

%3. Alguien que ve peliculas de suspenso, disfruta verlas con palomitas, tiene una cuenta de
%   netflix y tiempo libre, tiene una tarde perfecta.
tarde_perfecta(X) :- peliculas(X,suspenso),botana(X,palomitas),netflix(X),tiempo_libre(X).

%4. Alguien que ve peliculas comiendo una ensalada, tiene una vida saludable
vida_saludable(X) :- peliculas(X,_),botana(X,ensalada).

%5. Alguien que escucha regional, tiene audifonos, y la aplicación de spotify, disfruta del
%   camino a casa
disfruta_camino(X) :- musica(X,regional),audifono(X),spotify(X).

%6. Alguien es feliz si ve peliculas consuminedo maruchan, tiempo libre, y netflix.
es_feliz(X) :- peliculas(X,_),botana(X,maruchan),netflix(X),tiempo_libre(X).

%7. Unicamente pueden ser amigos quienes tienen los mismos gustos.
son_amigos(X) :- peliculas(X,suspenso),botana(X,palomitas).

