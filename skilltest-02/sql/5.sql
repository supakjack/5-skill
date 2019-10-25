SELECT sc.coach_prefix , sc.coach_first_name , sc.coach_last_name	, sc.coach_nick_name	,st.team_id	,(case when count(ss.std_id) IS NULL THEN 0 ELSE count(ss.std_id) END) AS num_student
FROM se_coach AS sc
LEFT JOIN se_team AS st
ON sc.coach_id = st.team_coach_id
LEFT JOIN se_student AS ss
ON ss.std_team_id = st.team_id
GROUP BY sc.coach_id
ORDER BY `st`.`team_id`  ASC