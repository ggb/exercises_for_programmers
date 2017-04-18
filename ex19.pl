msg(BMI, O) :-
  ( BMI > 25 -> 
    O = "You are overweight. You should see your doctor."; 
    ( BMI < 18.5 -> 
      O = "You are underweight. You should see your doctor."; 
      O = "You are within the ideal weight range.")).

ex19() :-
  writeln("Weight?"),
  readln([W|_]),
  writeln("Height?"),
  readln([H|_]),
  BMI is W / (H * H),
  format("Your BMI is ~1f.\n", [BMI]),
  msg(BMI, O),
  writeln(O).