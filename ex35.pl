helper(L) :-
  writeln("Enter a name:"),
  readln(N),
  atomic_list_concat(N, " ", N1),
  atom_string(N1, N2),
  (N2 = "" -> 
    random_permutation(L,[H|_]),
    format("The winner is... ~w.", [H]); 
    helper([N2|L])).

ex35() :-
  helper([]).