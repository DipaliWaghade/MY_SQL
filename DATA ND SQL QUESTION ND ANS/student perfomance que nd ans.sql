create database student_performance;
use student_performance;


#1 List all students along with their age and exam score.
select student_id,age,exam_score
from student_habits_performance;
# 2 What are the distinct genders in the dataset?
select distinct(gender)
from student_habits_performance;
# 3 Count how many students have a part-time job.
select student_id,part_time_job
from student_habits_performance;
#4 Find the average study hours per day.
select avg(study_hours_per_day) as average_student_per_day_hours
from student_habits_performance;
#5 List all students with an exam score greater than 90..
select student_id,exam_score
from student_habits_performance
where exam_score> 90;
#6 Count students grouped by diet quality.
select student_id ,diet_quality
from student_habits_performance;
# 7 Get the top 5 students with the highest exam scores.
select student_id,exam_score
from student_habits_performance
order by  exam_score desc
limit 5;
# 8What is the minimum and maximum exam score?
SELECT 
    MIN(exam_score) AS min_exam_score,
    MAX(exam_score) AS max_exam_score
FROM student_habits_performance;
# 9 Find students whose social media usage is over 5 hours
select student_id, social_media_hours
from student_habits_performance
where social_media_hours >5;
# 10 Find the average exam score for each gender.
select avg(exam_score),gender
from student_habits_performance
group by gender;
#11 Count students based on internet quality.
select count(internet_quality),student_id
from student_habits_performance
group by student_id;
#12 Find how many students participate in extracurricular activities.
select student_id,extracurricular_participation
from student_habits_performance;
#13 Show students with perfect attendance (100%).
select student_id ,attendance_percentage
from student_habits_performance
where attendance_percentage =100;
#13 Compare average exam scores of students with and without part-time jobs.
select avg(exam_score),part_time_job
from student_habits_performance
group by part_time_job;
#14 Calculate average sleep hours grouped by diet quality and gender.
select avg(sleep_hours),diet_quality,gender
from student_habits_performance
group by diet_quality,gender;
# 15 Find the most common parental education level among high scorers (score > 80).
SELECT parental_education_level, COUNT(*) AS count
FROM student_habits_performance
WHERE exam_score > 80
GROUP BY parental_education_level
ORDER BY count DESC
LIMIT 1;
#16 Determine the percentage of students who exercise at least 3 times per week.
select student_id,diet_quality,exercise_frequency
from student_habits_performance
where exercise_frequency =3;
#17 Compare mental health rating across internet quality categories.
select mental_health_rating,internet_quality
from student_habits_performance;
#18 Find the gender distribution among students who score below 40.
select gender, exam_score
from student_habits_performance
where exam_score <40;
#19 List students who have both a part-time job and participate in extracurricular activities.
select student_id,part_time_job,extracurricular_participation
from student_habits_performance;
#20 List students with poor mental health rating (less than 3) and high study hours (more than 5). SELECT *
select *
FROM student_habits_performance
WHERE mental_health_rating < 3
  AND study_hours_per_day > 5;





