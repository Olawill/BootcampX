SELECT sum(a.duration) AS total_duration
FROM assignment_submissions a
JOIN students s 
ON s.id = a.student_id
WHERE s.cohort_id = (SELECT id FROM cohorts WHERE name = 'FEB12');

/* ANOTHER METHOD - METHOD 2*/
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';