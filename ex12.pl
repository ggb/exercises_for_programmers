ex12() :-
  writeln("Enter the principal:"),
  readln([P|_]),
  writeln("Enter the rate of interest:"),
  readln([I|_]),
  writeln("Enter the number of years:"),
  readln([Y|_]),
  W is P * (1 + (I / 100) * Y),
  format("\nAfter ~w years at ~1f%, the investment will be worth $~2f", [Y, I, W]). 