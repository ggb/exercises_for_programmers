ex33() :-
  writeln("What's your question?"),
  readln(_),
  L = ["Yes", "No", "Maybe", "Ask again later."],
  random_permutation(L,[H|_]),
  writeln(H).