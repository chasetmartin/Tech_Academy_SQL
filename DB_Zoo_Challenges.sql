USE db_zoo2
SELECT * FROM tbl_habitat;

SELECT * FROM tbl_species;

SELECT species_name FROM tbl_species WHERE tbl_species.species_order = 3;

SELECT nutrition_type FROM tbl_nutrition WHERE nutrition_cost <= 600;