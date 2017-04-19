targetHeartRate(_, _, 100).
targetHeartRate(A, R, I) :-
  % (((220 − age) − restingHR) × intensity) + restingHR
  T is (((220 - A) - R) * (I / 100)) + R,
  format("~w%       | ~0f bpm\n", [I, T]),
  I2 is I + 5,
  targetHeartRate(A, R, I2).

ex31() :-
  writeln("Resting Pulse:"),
  readln([R|_]),
  writeln("Age:"),
  readln([A|_]),
  writeln("Intensity | Rate"),
  writeln("----------|-----"),
  targetHeartRate(A, R, 55).