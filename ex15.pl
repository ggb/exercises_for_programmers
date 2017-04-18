login("johndoe", "abc$123").
login("janedoe", "pA$$w0rd").

ex15() :-
  writeln("What is the username?"),
  readln([U|_]),
  writeln("What is the password?"),
  readln([P|_]),
  ( login(U, P) -> writeln("Welcome!"); writeln("I don't know you.") ).