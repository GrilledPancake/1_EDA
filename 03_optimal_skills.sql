/*

Question: What are the most optimal skills for data engineers balancing both demand and salary?
    - Create a ranking column that combines demand count and median salary to identify the most valuable skills. 
    - Focus on only remote Data Engineer positions wiht specific annual salaries

*/

SELECT
    sd.skills,
    ROUND(MEDIAN(jpf.salary_year_avg), 2) AS median_salary,
    COUNT(jpf.salary_year_avg) AS demand_count,
    ROUND(LN(COUNT(*)), 1) AS ln_demand_count,
    ROUND((MEDIAN(jpf.salary_year_avg) * LN(COUNT(jpf.*)))/1000000, 2) AS Demand

FROM
    job_postings_fact AS jpf

INNER JOIN 
    skills_job_dim AS sjd
    ON
    jpf.job_id = sjd.job_id

INNER JOIN
    skills_dim AS sd
    ON
    sjd.skill_id = sd.skill_id

WHERE
    jpf.job_title_short = 'Data Engineer'
    AND
    jpf.job_work_from_home = True
    AND
    jpf.salary_year_avg IS NOT NULL


GROUP BY
    sd.skills
    
HAVING
    COUNT(jpf.*) > 100 

ORDER BY 
    Demand DESC

LIMIT 10;

/*
Result:

┌───────────┬───────────────┬──────────────┬─────────────────┬────────┐
│  skills   │ median_salary │ demand_count │ ln_demand_count │ Demand │
│  varchar  │    double     │    int64     │     double      │ double │
├───────────┼───────────────┼──────────────┼─────────────────┼────────┤
│ terraform │      184000.0 │          193 │             5.3 │   0.97 │
│ python    │      135000.0 │         1133 │             7.0 │   0.95 │
│ sql       │      130000.0 │         1128 │             7.0 │   0.91 │
│ aws       │     137320.31 │          783 │             6.7 │   0.91 │
│ airflow   │      150000.0 │          386 │             6.0 │   0.89 │
│ spark     │      140000.0 │          503 │             6.2 │   0.87 │
│ kafka     │      145000.0 │          292 │             5.7 │   0.82 │
│ snowflake │      135500.0 │          438 │             6.1 │   0.82 │
│ azure     │      128000.0 │          475 │             6.2 │   0.79 │
│ java      │      135000.0 │          303 │             5.7 │   0.77 │
└───────────┴───────────────┴──────────────┴─────────────────┴────────┘

*/