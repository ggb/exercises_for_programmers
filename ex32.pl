getRand(B, R) :-
  U is 10 ** B,
  R is random(U).

guessNumbers(N, N, I) :-
  format("You got it in ~w guesses!\n", [I]),
  writeln("Play again?"),
  readln([A|_]),
  (A = 'y' -> ex32(); writeln("Goodbye!")).
guessNumbers(R, G, I) :-
  (R > G -> writeln("Too low."); writeln("Too high.")),
  writeln("Guess again:"),
  readln([NG|_]),
  NI is I + 1,
  guessNumbers(R, NG, NI).

ex32() :-
  writeln("Let's play Guess the Number"),
  writeln("Pick a difficulty level (1, 2, or 3):"),
  readln([D|_]),
  getRand(D, R),
  writeln("I have my number. What's your guess?"),
  readln([G|_]),
  guessNumbers(R, G, 1).