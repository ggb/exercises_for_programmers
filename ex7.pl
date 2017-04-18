ex7() :-
  writeln("What is the length of the room in feet?"),
  readln([L|_]), 
  writeln("What is the width of the room in feet?"),
  readln([W|_]),
  format("You entered dimensions of ~w feet by ~w feet.\n", [L, W]),
  C = 0.09290304,
  F is L * W,
  M is sqrt(F * F * C),
  format("The area is ~w square feet ~w square meters.", [F, M]).