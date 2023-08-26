SELECT count(*) as total_assistances, name
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
-- WHERE name = 'Waylon Boehm'
GROUP BY name
HAVING name = 'Waylon Boehm';