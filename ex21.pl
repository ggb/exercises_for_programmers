month(1, "January").
month(2, "Feburary").
month(3, "March").
month(4, "April").
month(5, "May").
month(6, "June").
month(7, "July").
month(8, "August").
month(9, "September").
month(10, "October").
month(11, "November").
month(12, "December").

ex21() :-
  writeln("Please enter the number of the month:"),
  readln([N|_]),
  month(N, M),
  format("The name of the month is ~w.", [M]).