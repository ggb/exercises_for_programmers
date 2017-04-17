ex4() :-
  writeln("Enter a noun:"),
  readln([N|_]),
  writeln("Enter a verb:"),
  readln([V|_]),
  writeln("Enter an adjective:"),
  readln([Aj|_]),
  writeln("Enter an adverb:"),
  readln([Av|_]),
  format('Do you ~w your ~w ~w ~w? That\'s hilarious!', [V, Aj, N, Av]).