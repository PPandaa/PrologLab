% The students we know about.
student(alice).
student(bob).
student(claire).
student(don).

% Who is enrolled in which subjects.
enrolled(alice, logic).
enrolled(alice, maths).
enrolled(bob, maths).
enrolled(claire, physics).
enrolled(don, logic).
enrolled(don, art_history).

% When subjects meet
class(logic, monday, 10).
class(logic, wednesday, 10).
class(maths, tuesday, 14).
class(maths, thursday, 14).
class(physics, wednesday, 10).
class(physics, friday, 14).
class(art_history, monday, 10).
class(art_history, friday, 10).

% clash(Student) holds if Student is enrolled in two different classes that meet at the same day and time.
clash(Student) :-
    enrolled(Student, SubjectA),
    enrolled(Student, SubjectB),
    SubjectA \= SubjectB,
    class(SubjectA, SubjectA_Day, SubjectA_Time),
    class(SubjectB, SubjectB_Day, SubjectB_Time),
    SubjectA_Day = SubjectB_Day,
    SubjectA_Time = SubjectB_Time.