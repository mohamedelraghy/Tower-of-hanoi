hanoi(N) :-
    move(N, left, centre, right),
    write("DONE with N: "),
    write(N).
move(0, _, _, _) :-
    write("REACHED ZERO"),
    nl,
    !.
move(N, A, B, C) :-
    M is N-1,
    write("FIRST"),
    nl,
    move(M, A, C, B),
    inform(A, B),
    write("SECOND"),
    nl,
    move(M, C, B, A).
inform(X, Y) :-
    write("Move from "),
    write(X),
    write(" to "),
    write(Y),
    nl.