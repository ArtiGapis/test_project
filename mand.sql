SELECT * FROM studijos.grades;

SELECT * FROM studijos.lectures
inner JOIN studijos.grades on lectures.id = grades.lecture_id;

