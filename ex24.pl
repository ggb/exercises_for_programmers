is_anagram(S1, S2) :-
  string_chars(S1, C1), 
  string_chars(S2, C2), 
  permutation(C1, P), 
  member(C2, P).