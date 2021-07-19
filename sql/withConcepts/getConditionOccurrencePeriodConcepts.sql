select cond.*,con.vocabulary_id, con.concept_code from ohdsi.condition_occurrence cond 
join ohdsi.cohort co on  cond.person_id=co.subject_id 
 and cond.condition_start_date >= co.cohort_start_date
 and cond.condition_start_date <= co.cohort_end_date
join ohdsi.concept con on cond.condition_concept_id=con.concept_id
where co.cohort_definition_id=:cohortId;