ex11() :-
  writeln("How many euros are you exchanging?"),
  readln([E|_]),
  writeln("What is the exchange rate?"),
  readln([R|_]),
  D is E * R / 100,
  format("~0f euros at an exchange rate of ~2f is ~2f U.S. dollars.", [E, R, D]).