SELECT * FROM studijos.grades;

/* Bendra lentele */
SELECT students.name, students.surname, lectures.name, lectures.description, grades.grade, students.email, students.phone 
FROM studijos.grades
inner join studijos.students on grades.student_id = students.id
inner join studijos.lectures on grades.lecture_id = lectures.id;

/* Studentai */
SELECT * FROM studijos.students;

/* Prideti studenta */
INSERT INTO studijos.students(students.name, students.surname, students.email, students.phone)
values ('Tauras', 'Danilevičius', 'tauras@gmail.com', '77777');

/* Prideti studenta */
INSERT INTO studijos.grades(grades.lecture_id, grades.student_id, grades.grade)
values ('1', '4', '10');