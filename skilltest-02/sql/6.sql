SELECT st.team_name ,st.team_sys_name , count(ss.std_code) AS sum_student ,SUM(CASE WHEN ss.std_gender LIKE 'M' THEN 1 ELSE 0 END) AS male 
	, SUM(CASE WHEN ss.std_gender LIKE 'F' THEN 1 ELSE 0 END) AS female
FROM se_student AS ss
LEFT JOIN se_position AS sp
ON ss.std_pos_id = sp.pos_id
LEFT JOIN se_team AS st
ON ss.std_team_id = st.team_id 
GROUP BY st.team_name