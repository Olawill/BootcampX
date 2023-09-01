const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

// Command Line Arguments
// Command Line Arguments
const cohortName = process.argv[2] || 'JUL02';
// Store all potentially malicious values in an array.
const values = [cohortName];

// QUERY THE DATABASE
pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = $1
ORDER BY teacher;`, values)
.then(res => {

  console.log('connected');
  res.rows.forEach(assistance => {
    console.log(`${assistance.cohort}: ${assistance.teacher}`);
  })
})
.catch(err => console.error('query error', err.stack));