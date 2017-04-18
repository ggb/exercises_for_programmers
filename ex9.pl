ex9() :-
  G = 350,
  writeln("Width?"),
  readln([W|_]),
  writeln("Length?"),
  readln([L|_]),
  S is W * L,
  C is round(S / G + 0.5),
  format("You will need to purchase ~w gallons of\npaint to cover ~w square feet.", [C, S]). 