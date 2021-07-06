select o.* from ohdsi.observation o 
join ohdsi.cohort co on  o.person_id=co.subject_id 
 and o.observation_date >= co.cohort_start_date
 and o.observation_date <= co.cohort_end_date 
where co.cohort_definition_id=:cohortId;