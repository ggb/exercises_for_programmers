gender("m", 0.73).
gender(_, 0.66).

ex17() :-
  writeln("Weight"),
  readln([W|_]),
  writeln("Gender"),
  readln([G|_]),
  writeln("Number of drinks"),
  readln([N|_]),
  writeln("Amount of alcohol by volume"),
  readln([V|_]),
  writeln("Time since last drink"),
  readln([T|_]),
  A is N * V,
  gender(G, R),
  Bac is (A * 5.14 / W * R) - 0.015 * T,
  format("Your BAC is ~2f\n", [Bac]),
  ( Bac < 0.08 -> writeln("It is legal for you to drive."); writeln("It is not legal for you to drive.") ). 