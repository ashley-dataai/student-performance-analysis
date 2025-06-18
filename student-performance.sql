-- Create student_scores table
CREATE TABLE student_scores (
    student_id INT PRIMARY KEY,
    math_score INT,
    reading_score INT,
    writing_score INT
);

-- Insert sample data
INSERT INTO student_scores VALUES
(1, 78, 80, 76),
(2, 85, 83, 84),
(3, 70, 72, 68),
(4, 82, 79, 80),
(5, 75, 77, 74),
(6, 90, 88, 91);

-- Create student_demographics table
CREATE TABLE student_demographics (
    student_id INT PRIMARY KEY,
    gender VARCHAR(10),
    parental_education VARCHAR(50)
);

-- Insert sample data
INSERT INTO student_demographics VALUES
(1, 'female', 'associate''s degree'),
(2, 'male', 'bachelor''s degree'),
(3, 'female', 'some college'),
(4, 'male', 'high school'),
(5, 'female', 'associate''s degree'),
(6, 'male', 'master''s degree');

SELECT s.student_id, s.math_score, d.gender, d.parental_education
FROM student_scores s
JOIN student_demographics d ON s.student_id = d.student_id;
