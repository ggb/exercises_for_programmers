year(Year) :-
    get_time(Stamp),
    stamp_date_time(Stamp, DateTime, local),
    date_time_value(year, DateTime, Year).

ex6() :-
  writeln("What is your current age?"),
  readln([C|_]),
  writeln("At what age would you like to retire?"),
  readln([R|_]),
  Diff is R - C,
  year(CY),
  TY is 2017 + Diff,
  format("You have ~d years left until you can retire.\nIt's ~d, so you can retire in ~d.", [Diff, CY, TY]).