ex10() :-
  writeln("Enter the price of item 1:"),
  readln([I1|_]),
  writeln("Enter the quantity of item 1:"),
  readln([Q1|_]),
  P1 is I1 * Q1,

  writeln("Enter the price of item 2:"),
  readln([I2|_]),
  writeln("Enter the quantity of item 2:"),
  readln([Q2|_]),
  P2 is I2 * Q2,

  writeln("Enter the price of item 3:"),
  readln([I3|_]),
  writeln("Enter the quantity of item 3:"),
  readln([Q3|_]),
  P3 is I3 * Q3,

  ST is P1 + P2 + P3,
  Tax is ST * 0.055,
  T is ST + Tax,
  format("Subtotal: $~2f\nTax: $~2f\nTotal: $~2f", [ST, Tax, T]).