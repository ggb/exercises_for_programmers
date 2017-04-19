ex28() :-
  writeln("Enter a number:"),
  readln([N1|_]),
  writeln("Enter a number:"),
  readln([N2|_]),
  writeln("Enter a number:"),
  readln([N3|_]),
  writeln("Enter a number:"),
  readln([N4|_]),
  writeln("Enter a number:"),
  readln([N5|_]),
  foldl(plus, [N1, N2, N3, N4, N5], 0, R),
  format("The total is ~w.", [R]).