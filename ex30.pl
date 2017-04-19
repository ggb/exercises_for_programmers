secondNumber(_, []).
secondNumber(F, [H|T]) :-
  S is F * H,
  format("~w x ~w = ~w\n", [F, H, S]),
  secondNumber(F, T).

firstNumber([], _).
firstNumber([H|T], L) :-
  secondNumber(H, L),
  firstNumber(T, L).

ex30() :-
  L = [0,1,2,3,4,5,6,7,8,9,10,11,12],
  firstNumber(L, L).