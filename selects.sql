-- full join of student, subject and degree
SELECT s.first_name || ' ' || s.last_name as student_name, subject.subject, d.degree FROM student s
  LEFT JOIN thesis_student ts on s.student_id = ts.student_id
  FULL OUTER JOIN thesis t on ts.thesis_id = t.thesis_id
  FULL OUTER JOIN subject on t.subject_id = subject.subject_id
  LEFT JOIN degree d on subject.degree_id = d.degree_id;

-- select departments with quantity of employees below 4
SELECT DISTINCT d.name, count(a.last_name) as employees_quntity FROM department d
 LEFT JOIN academic_employee a on d.department_id = a.department_id
 GROUP BY d.name
 HAVING COUNT(a) < 4;
