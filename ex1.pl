ex1() :-
  writeln("What is your name?"), 
  readln([H|_]), 
  format('Hello, ~w, nice to meet you!', [H]).