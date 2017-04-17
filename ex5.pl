ex5() :-
  writeln("What is the first number?"),
  readln([N1|_]),
  writeln("What is the second number?"),
  readln([N2|_]),
  Op1 is N1 + N2,
  Op2 is N1 - N2,
  Op3 is N1 * N2,
  Op4 is N1 / N2,
  format('~w + ~w = ~w\n', [N1, N2, Op1]),
  format('~w - ~w = ~w\n', [N1, N2, Op2]),
  format('~w * ~w = ~w\n', [N1, N2, Op3]),
  format('~w / ~w = ~w\n', [N1, N2, Op4]).