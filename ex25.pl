% TODO
output(P, veryweak) :-
  format("The Password \"~w\" is a very weak password.", [P]).
output(P, weak) :-
  format("The Password \"~w\" is a weak password.", [P]).
output(P, strong) :-
  format("The Password \"~w\" is a strong password.", [P]).
output(P, verystrong) :-
  format("The Password \"~w\" is a very strong password.", [P]).
output(P, unknown) :-
  format("The Password \"~w\" is a unknown strong password.", [P]).

containsOnly(X,Y) :- 
  forall(sub_atom(X,_,1,_,C), sub_atom(Y,_,1,_,C)).

onlyNumbers(X) :-
  containsOnly(X, "0123456789").

onlyChars(X) :-
  containsOnly(X, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz").

howStrong(true, false, N, Q) :-
  (N < 8 -> Q = veryweak; Q = unknown).
howStrong(false, true, N, Q) :-
  (N < 8 -> Q = weak; Q = unknown).
howStrong(_, _, N, Q) :-
  (N > 7 -> Q = strong; Q = unknown).

ex25() :-
  writeln("Please enter you password:"),
  readln([I|_]),
  string_length(I, N),
  howStrong(onlyNumbers(I), onlyChars(I), N, Q),
  output(I, Q).