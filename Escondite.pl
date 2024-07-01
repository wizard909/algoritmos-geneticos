% Hechos que representan posibles escondites
escondite(debajo_cama).
escondite(dentro_armario).
escondite(detras_cortina).
escondite(bajo_mesa).

% Evaluación: Calcular la aptitud de cada estrategia (cuánto tiempo se tarda en encontrar)
evaluar_aptitud(debajo_cama, 3).
evaluar_aptitud(dentro_armario, 4).
evaluar_aptitud(detras_cortina, 2).
evaluar_aptitud(bajo_mesa, 1).

% Inicialización: Generar una población inicial de estrategias de escondite
generar_poblacion_inicial([debajo_cama, dentro_armario, detras_cortina, bajo_mesa]).

% Selección: Elegir el escondite más difícil de encontrar
seleccionar_mejor([Escondite], Escondite). % Caso base: si solo hay un escondite, ese es el mejor
seleccionar_mejor([Escondite1, Escondite2|Resto], Mejor) :-
    evaluar_aptitud(Escondite1, Aptitud1),
    evaluar_aptitud(Escondite2, Aptitud2),
    (   Aptitud1 >= Aptitud2
    ->  seleccionar_mejor([Escondite1|Resto], Mejor)
    ;   seleccionar_mejor([Escondite2|Resto], Mejor)
    ).

% Convergencia: Repetir evaluación y selección hasta encontrar el mejor escondite
converger(Poblacion, MejorEstrategia) :-
    seleccionar_mejor(Poblacion, MejorEstrategia).

% Evolución: En este caso simplificado no se implementa. Podría incluir recombinación y mutación.

% Consulta para iniciar el proceso y encontrar la mejor estrategia
%?- generar_poblacion_inicial(Poblacion), converger(Poblacion, MejorEstrategia).
