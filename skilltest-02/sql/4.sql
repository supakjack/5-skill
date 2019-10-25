SELECT st.team_name ,st.team_sys_name , count(ss.std_code) AS student_count , AVG(ss.std_age) AS avg_age , MAX(ss.std_age) AS max_age , MIN(ss.std_age) AS min_age
FROM se_student AS ss
LEFT JOIN se_position AS sp
ON ss.std_pos_id = sp.pos_id
LEFT JOIN se_team AS st
ON ss.std_team_id = st.team_id 
GROUP BY st.team_name
HAVING AVG(ss.std_age) = 24.00