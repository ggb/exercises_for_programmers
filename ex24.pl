is_anagram(S1, S2) :-
  string_chars(S1, C1), 
  string_chars(S2, C2), 
  permutation(C1, C2).

ex24() :-
  writeln("Enter two strings and I'll tell you if they are anagrams."),
  writeln("Enter the first string:"),
  readln([S1|_]),
  writeln("Enter the second string:"), 
  readln([S2|_]),
  (is_anagram(S1, S2) -> 
    format("\"~w\" and \"~w\" are anagrams.", [S1, S2]);
    format("\"~w\" and \"~w\" are'nt anagrams.", [S1, S2])).
  