SELECT sum(a.duration) AS total_duration
FROM assignment_submissions a
JOIN students s 
ON s.id = a.student_id
WHERE s.name = 'Ibrahim Schimmel';