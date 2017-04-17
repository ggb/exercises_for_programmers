ex2() :-
  writeln("What is the input string?"), 
  readln([H|_]), 
  string_length(H, N),
  format('~w has ~w characters.', [H, N]).