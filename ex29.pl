containsOnly(X,Y) :- 
  forall(sub_atom(X,_,1,_,C), sub_atom(Y,_,1,_,C)).

onlyNumbers(X) :-
  containsOnly(X, "0123456789").

calcRate(N) :-
  R is round(72 / N),
  format("It will take ~w years to double your initial investment.", [R]).

ex29() :-
  writeln("What is the rate of return?"),
  readln([N|_]),
  (onlyNumbers(N), N \== 0 -> 
    calcRate(N); 
    writeln("Sorry. That's not a valid input."), ex29()).