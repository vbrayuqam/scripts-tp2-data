DROP TRIGGER update_indiv; 
DROP TRIGGER updel_emp;
ALTER TABLE MESURE DROP CONSTRAINT mesure_pk;
ALTER TABLE MESURE DROP CONSTRAINT mesure_fk;
ALTER TABLE MESURE DROP CONSTRAINT poids_ch;
ALTER TABLE MESURE DROP CONSTRAINT taille_ch;
ALTER TABLE MESURE DROP CONSTRAINT mesure_unique;
DROP TABLE MESURE;
ALTER TABLE INDIVIDU DROP CONSTRAINT indiv_fk;
ALTER TABLE INDIVIDU DROP CONSTRAINT indiv_fk2;
ALTER TABLE INDIVIDU DROP CONSTRAINT indiv_fk3;
ALTER TABLE INDIVIDU DROP CONSTRAINT indiv_pk;
DROP TABLE INDIVIDU;
ALTER TABLE ESPECE DROP CONSTRAINT esp_pk;
ALTER TABLE ESPECE DROP CONSTRAINT esp_fk;
ALTER TABLE ESPECE DROP CONSTRAINT nombre_ch;
DROP TABLE ESPECE;
ALTER TABLE CHOIX DROP CONSTRAINT choix_pk;
ALTER TABLE CHOIX DROP CONSTRAINT choix_fk;
ALTER TABLE CHOIX DROP CONSTRAINT choix_fk2;
DROP TABLE CHOIX;
ALTER TABLE SURVEILLANCE DROP CONSTRAINT surv_pk;
ALTER TABLE SURVEILLANCE DROP CONSTRAINT surv_fk;
DROP TABLE SURVEILLANCE;
ALTER TABLE LOTISSEMENT DROP CONSTRAINT lot_pk;
ALTER TABLE LOTISSEMENT DROP CONSTRAINT lot_fk;
DROP TABLE LOTISSEMENT;
ALTER TABLE SALAIRE DROP CONSTRAINT sal_pk;
ALTER TABLE SALAIRE DROP CONSTRAINT sal_fk;
ALTER TABLE SALAIRE DROP CONSTRAINT sal_ch;
DROP TABLE SALAIRE;
ALTER TABLE ZONE DROP CONSTRAINT zone_pk;
ALTER TABLE ZONE DROP CONSTRAINT zone_fk;
DROP TABLE ZONE;
ALTER TABLE EMPLOYE DROP CONSTRAINT employe_pk;
ALTER TABLE EMPLOYE DROP CONSTRAINT taux_ch;
ALTER TABLE EMPLOYE DROP CONSTRAINT sexe_ch;
ALTER TABLE EMPLOYE DROP CONSTRAINT grade_ch;
ALTER TABLE EMPLOYE DROP CONSTRAINT service_ch;
DROP TABLE EMPLOYE;
