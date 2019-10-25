SELECT ss.std_code	, ss.std_prefix ,	ss.std_first_name	, ss.std_last_name	, ss.std_team_id	, ss.std_gender, 	ss.std_age
FROM se_student AS ss
WHERE ss.std_gender = 'M' 
	AND ss.std_age BETWEEN 20 AND 30
ORDER BY CONVERT( ss.std_first_name USING tis620 ) ASC