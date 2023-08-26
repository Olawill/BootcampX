SELECT count(*) as total_assistances, name
FROM students
JOIN assistance_requests ON students.id = student_id
GROUP BY name
HAVING name = 'Elliot Dickinson';