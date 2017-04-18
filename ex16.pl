ex16() :-
  writeln("What is your age?"),
  readln([A|_]),
  ( A > 15 -> writeln("You are old enough to legally drive. "); writeln("You are not old enough to legally drive.") ).