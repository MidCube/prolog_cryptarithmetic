:- use_module(library(bounds)).

solve([S, E, N, D], [M, O, R, E], [M, O, N, E, Y],K) :-
    Var=[S, E, N, D, M, O, R, Y],
    Var in 0..K-1,
    all_different(Var),
    K*K*K*S+K*K*E+K*N+D+K*K*K*M+K*K*O+K*R+E#=K*K*K*K*M+K*K*K*O+K*K*N+K*E+Y,
    M#\=0,
    S#\=0,
    labeling([], Var).
