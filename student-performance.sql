
-- 📊 Student Performance SQL Practice

-- Select all student scores
SELECT student_id, math_score, reading_score, writing_score
FROM student_scores;

-- Average score per subject
SELECT AVG(math_score) AS avg_math, AVG(reading_score) AS avg_reading, AVG(writing_score) AS avg_writing
FROM student_scores;

-- Join with student demographics table
SELECT s.student_id, s.math_score, d.gender, d.parental_education
FROM student_scores s
JOIN student_demographics d ON s.student_id = d.student_id;
