select cond.* from ohdsi.condition_occurrence cond 
join ohdsi.cohort co on  cond.person_id=co.subject_id 
 and cond.condition_start_date >= co.cohort_start_date
 and cond.condition_start_date <= co.cohort_end_date
where co.cohort_definition_id=:cohortId;