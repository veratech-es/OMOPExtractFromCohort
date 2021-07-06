--start date dado que las cohortes de atlas miran cosas que pasen dentro del periodo de observacion. Si está bien construido todo lo interesante debiera empezar dentro del algun periodo de observacion
select de.* from ohdsi.drug_exposure de 
join ohdsi.cohort co on  de.person_id=co.subject_id 
 and de.drug_exposure_start_date >= co.cohort_start_date
 and de.drug_exposure_start_date <= co.cohort_end_date 
where co.cohort_definition_id=:cohortId;