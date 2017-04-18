ex8() :-
  writeln("How many people?"),
  readln([Pe|_]), 
  writeln("How many pizzas do you have?"),
  readln([Pi|_]),
  writeln("How many slices does each pizza have?"),
  readln([S|_]),
  format("\n~w people with ~w pizzas.\n", [Pe, Pi]),
  Sl is div(Pi * S, Pe),
  format("Each person gets ~w pieces of pizza.\n", [Sl]),
  L is mod(Pi * S, Pe),
  format("There are ~w leftover pieces.\n", [L]).