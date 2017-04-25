printList([]).
printList([H|T]) :-
  writeln(H),
  printList(T).

ex34() :-
  L = ["John Smith","Jackie Jackson","Chris Jones","Amanda Cullen","Jeremy Goodwin"],
  writeln("There are 5 employees:"),
  printList(L),
  writeln("Enter an employee name to remove:"),
  readln(N),
  atomic_list_concat(N, " ", N1),
  atom_string(N1, N2),
  delete(L, N2, L1),
  writeln("There are 4 employees:"),
  printList(L1).