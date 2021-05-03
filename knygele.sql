/* Paskaitos */
SELECT * FROM arapis_knygele.lectures;

/* Studentai */
SELECT * FROM arapis_knygele.students;

/* Pazymiai */
SELECT * FROM arapis_knygele.grades;

/* Bendra info */
SELECT students.name, students.surname, lectures.name, lectures.description, grades.grade, students.email, students.phone 
FROM arapis_knygele.grades
inner join arapis_knygele.students on grades.student_id = students.id
inner join arapis_knygele.lectures on grades.lecture_id = lectures.id;

/* Istrinti */
DELETE FROM arapis_knygele.students WHERE `id` = 5;
DELETE FROM arapis_knygele.grades WHERE `id` = 6;
DELETE FROM arapis_knygele.lectures WHERE `id` = 3;

/* Prideti studenta */
INSERT INTO arapis_knygele.students(students.name, students.surname, students.email, students.phone)
values ('Laura', 'Danilevičienė', 'laur@gmail.com', '555');

/* Prideti studentui pazimy */
INSERT INTO arapis_knygele.grades(grades.lecture_id, grades.student_id, grades.grade)
values ('2', '4', '10');

/* Prideti paskaita */
INSERT INTO arapis_knygele.lectures(lectures.name, lectures.description)
values ('Lietuviu', 'literatura ir skaitymas');