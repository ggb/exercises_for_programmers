% does not work well with special chars

ex3() :-
  writeln("What is the quote?"),
  readln(Q),
  atomic_list_concat(Q, " ", Q1),
  writeln("Who said it?"),
  readln(N),
  atomic_list_concat(N, " ", N1),
  format('~w says, "~w".', [N1, Q1]).
