USE db_zoo2
SELECT * FROM tbl_habitat;

SELECT * FROM tbl_nutrition;

SELECT * FROM tbl_species;

SELECT * FROM tbl_specialist;

SELECT * FROM tbl_care;

SELECT species_name FROM tbl_species WHERE tbl_species.species_order = 3;

SELECT nutrition_type FROM tbl_nutrition WHERE nutrition_cost <= 600;

SELECT a1.species_name 
    FROM tbl_species a1
    INNER JOIN tbl_nutrition a2 ON a2.nutrition_id = a1.species_nutrition
    WHERE nutrition_id BETWEEN 2202 and 2206
;

SELECT a1.species_name AS 'Species Name:', a2.nutrition_type AS 'Nutrition Type:'
    FROM tbl_species a1
    INNER JOIN tbl_nutrition a2 ON a2.nutrition_id = a1.species_nutrition
;

SELECT a1.specialist_fname, a1.specialist_lname, a1.specialist_contact
    FROM tbl_specialist a1
    INNER JOIN tbl_care a2 ON a2.care_specialist = a1.specialist_id
    INNER JOIN tbl_species a3 ON a3.species_care = a2.care_id
    WHERE species_name = 'penguin'
;
