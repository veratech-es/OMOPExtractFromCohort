select m.* from ohdsi.measurement m 
join ohdsi.cohort co on  m.person_id=co.subject_id 
 and m.measurement_date >= co.cohort_start_date
 and m.measurement_date <= co.cohort_end_date 
where co.cohort_definition_id=:cohortId;