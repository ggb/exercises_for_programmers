isWisconsin('WI', V) :-
  Tax is V * 0.055,
  Total is V + Tax,
  format("The subtotal is $~2f.\nThe tax is $~2f.\nThe total is $~2f.", [V, Tax, Total]).
isWisconsin(_, V) :-
  format("The total is $~2f.", [V]).

ex14() :-
  writeln("What is the order amount?"),
  readln([V|_]),
  writeln("What is the state?"),
  readln([S|_]),
  string_to_atom(S, A),
  ST is V * 1,
  isWisconsin(A, ST).