% TODO!

question("Is the car silent when you turn the key?", 
  question("Are the battery terminals corroded?",
    answer("Clean terminals and try starting again."),
    answer("Replace cables and try again.")),
  question("Does the car make a clicking noise?",
    answer("Replace the battery."),
    question("Does the car crank up but fail to start?",
      answer("Check spark plug connections."),
      question("Does the engine start and then die?",
        question("Does your car have fuel injection?",
          answer("Check to ensure the choke is opening and closing."),
          answer("Get it in for service.")),
        answer("No answer."))))).

decide(answer(T)) :-
  writeln(T).
decide(question(P, A, B)) :-
  writeln(P),
  readln([Answer|_]),
  (Answer = yes -> decide(A); decide(B)).