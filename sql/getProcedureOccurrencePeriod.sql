select po.* from ohdsi.procedure_occurrence po 
join ohdsi.cohort co on  po.person_id=co.subject_id 
 and po.procedure_date >= co.cohort_start_date
 and po.procedure_date <= co.cohort_end_date 
where co.cohort_definition_id=:cohortId;