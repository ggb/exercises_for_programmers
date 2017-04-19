calculateMonthsUntilPaidOff(B, I, P, N) :-
  D is I / 100 / 365,
  T1 is -1 / 30,
  H1 is 1 + B / P * (1 - (1 + D)**30),
  T2 is log(H1),
  H2 is 1 + D,
  T3 is log(H2),
  N is round(T1 * T2 / T3 + 0.5).

ex26() :-
  writeln("What is your balance?"),
  readln([B|_]),
  writeln("What is the APR on the card (as a percent)?"),
  readln([I|_]),
  writeln("What is the monthly payment you can make?"),
  readln([P|_]),
  calculateMonthsUntilPaidOff(B, I, P, N),
  format("It will take you ~w months to pay off this card.", [N]).