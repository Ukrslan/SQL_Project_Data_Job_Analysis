--Top 10 highest paying data analyst roles that are either remote or local
SELECT
	job_id,
	job_schedule_type,
	salary_year_avg,
	job_posted_date,
	company_dim.name AS company_name
FROM
	job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
	job_title = 'Data Analyst'
	AND salary_year_avg IS NOT NULL
	AND job_location = 'Anywhere' 
-- OR job_location LIKE 'Ukraine'
ORDER BY
	salary_year_avg DESC 
LIMIT 10;