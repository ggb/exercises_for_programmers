name('F', "Fahrenheit", fahrenheit).
name('C', "Celsius", celsius).
name('f', "Fahrenheit", fahrenheit).
name('c', "Celsius", celsius).

conversion(fahrenheit, V, F) :-
  F is (V * 9 / 5) + 32.
conversion(celsius, V, C) :-
  C is (V - 32) * 5 / 9.

ex18() :-
  writeln("Press C to convert from Fahrenheit to Celsius.\nPress F to convert from Celsius to Fahrenheit."),
  writeln("Your choice:"),
  readln([M|_]),
  name(M, N, I),
  format("Please enter the temperature in ~w:\n", [N]),
  readln([V|_]),
  conversion(I, V, R),
  format("The temperature in Celsius is ~1f.", [R]).