larger(N1, N2, R) :-
  (N1 > N2 -> R = N1; R = N2).

ex22() :-
  writeln("Enter the first number:"),
  readln([F|_]),
  writeln("Enter the second number:"),
  readln([S|_]),
  writeln("Enter the third number:"),
  readln([T|_]),
  larger(F, S, R1),
  larger(R1, T, R2),
  format("The largest number is ~w.", [R2]).