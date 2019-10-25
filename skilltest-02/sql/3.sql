SELECT ss.std_code ,ss.std_prefix , ss.std_first_name ,	ss.std_last_name ,sp.pos_name 
FROM se_student AS ss
LEFT JOIN se_position AS sp
ON ss.std_pos_id = sp.pos_id
LEFT JOIN se_team AS st
ON ss.std_team_id = st.team_id 
WHERE st.team_name = 06 
HAVING sp.pos_name LIKE '%Manager%' OR sp.pos_name LIKE '%Leader%'
ORDER BY ss.std_code