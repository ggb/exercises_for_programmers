ex13() :-
  writeln("What is the principal amount:"),
  readln([P|_]),
  writeln("What is the rate:"),
  readln([I|_]),
  writeln("What is the number of years:"),
  readln([Y|_]),
  writeln("What is the number of times the interest is compounded per year"),
  readln([T|_]),
  W is P * (1 + (I / 100 / T)) ** (T * Y),
  format("\n$~2f invested at ~1f% for ~w years compounded ~w times per year is $~2f. ", [P, I, Y, T, W]). 