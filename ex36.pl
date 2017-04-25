% Todo
calculateOutput(L1) :-
  maplist(atom_number, L1, L),
  length(L, N),
  sum_list(L, S),
  Avg is S / N,
  min_list(L, Min),
  max_list(L, Max),
  format("The average is ~2f\n", [Avg]),
  format("The minimum is ~w.\n", [Min]),
  format("The maximum is ~w\n.", [Max]).

input(L) :-
  writeln("Enter a number:"),
  readln(N),
  atomic_list_concat(N, " ", N1),
  atom_string(N1, N2),
  (N2 = "done" -> 
    calculateOutput(L); 
    input([N2|L])).

ex36() :-
  input([]).