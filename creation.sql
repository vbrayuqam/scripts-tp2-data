CREATE TABLE EMPLOYE (
	CodeEmploye NUMBER,
	NAS VARCHAR2(20),
	Nom VARCHAR2(40) NOT NULL,
	Prenom VARCHAR2(40) NOT NULL,
	NomJeuneFIlle VARCHAR2(40) NOT NULL,
	DateDeNaissance DATE,
	Adresse VARCHAR2(40) NOT NULL,
	Sexe VARCHAR2(1),
	Telephone VARCHAR2(40),
	Fonction VARCHAR2(40) NOT NULL,
	Service VARCHAR2(40) NOT NULL,
	Taux FLOAT DEFAULT 0,
	Grade VARCHAR2(40),
	CONSTRAINT employe_pk PRIMARY KEY (CodeEmploye),
	CONSTRAINT taux_ch CHECK (Taux >= 0),
	CONSTRAINT sexe_ch CHECK (Sexe IN ('M', 'F')),
	CONSTRAINT grade_ch CHECK (Grade IN ('G1', 'G2', 'G3', 'G4', 'G5')),
	CONSTRAINT service_ch CHECK (Service IN ('administratif', 'surveillance', 'medical'))
);
CREATE TABLE ZONE (
	CodeZone NUMBER,
	NomZone VARCHAR2(40) NOT NULL,
	ChefZone NUMBER,
	CONSTRAINT zone_pk PRIMARY KEY (CodeZone),
	CONSTRAINT zone_fk FOREIGN KEY (ChefZone) REFERENCES EMPLOYE(CodeEmploye) ON DELETE SET NULL
);
CREATE TABLE SALAIRE (
	CodeEmploye NUMBER,
	Mois VARCHAR2(40),
	Salaire NUMBER DEFAULT 0,
	CONSTRAINT sal_pk PRIMARY KEY (CodeEmploye, Mois),
	CONSTRAINT sal_fk FOREIGN KEY (CodeEmploye) REFERENCES EMPLOYE(CodeEmploye),
	CONSTRAINT sal_ch CHECK (Salaire >=0)
);
CREATE TABLE LOTISSEMENT (
	CodeZone NUMBER,
	CodeLotissement NUMBER,
	NomLotissement VARCHAR2(40) NOT NULL,
	CONSTRAINT lot_pk PRIMARY KEY (CodeZone, CodeLotissement),
	CONSTRAINT lot_fk FOREIGN KEY (CodeZone) REFERENCES ZONE(CodeZone)
);
CREATE TABLE CHOIX (
	CodeEmploye NUMBER,
	CodeZone NUMBER,
	Affinite VARCHAR2(40) NOT NULL,
	CONSTRAINT choix_pk PRIMARY KEY (CodeEmploye, CodeZone),
	CONSTRAINT choix_fk FOREIGN KEY (CodeEmploye) REFERENCES EMPLOYE (CodeEmploye),
	CONSTRAINT choix_fk2 FOREIGN KEY (CodeZone) REFERENCES ZONE(CodeZone)
);
CREATE TABLE ESPECE (
	CodeEspece NUMBER,
	NomEspece VARCHAR2(40) NOT NULL,
	Nombre NUMBER DEFAULT 0,
	CodeZone NUMBER,
	CodeLotissement NUMBER,
	CONSTRAINT esp_pk PRIMARY KEY (CodeEspece),
	CONSTRAINT esp_fk FOREIGN KEY (CodeZone, CodeLotissement) REFERENCES LOTISSEMENT(CodeZone, CodeLotissement) ON DELETE SET NULL,
	CONSTRAINT nombre_ch CHECK (Nombre >= 0)
);
CREATE TABLE INDIVIDU (
	CodeIndividu NUMBER,
	NomIndividu VARCHAR2(40) NOT NULL,
	CodeEspece NUMBER,
	Sang VARCHAR2(40) NOT NULL,
	DateNaissance DATE,
	DateDeces DATE,
	Pere NUMBER,
	Mere NUMBER,
	CONSTRAINT indiv_pk PRIMARY KEY (CodeIndividu),
	CONSTRAINT indiv_fk FOREIGN KEY (CodeEspece) REFERENCES ESPECE(CodeEspece) ON DELETE CASCADE,
	CONSTRAINT indiv_fk2 FOREIGN KEY (Pere) REFERENCES INDIVIDU(CodeIndividu),
	CONSTRAINT indiv_fk3 FOREIGN KEY (Mere) REFERENCES INDIVIDU(CodeIndividu)
);
CREATE TABLE MESURE (
	CodeIndividu NUMBER,
	DateMesure DATE,
	Poids FLOAT DEFAULT 0,
	Taille FLOAT DEFAULT 0,
	CONSTRAINT mesure_pk PRIMARY KEY (CodeIndividu, DateMesure),
	CONSTRAINT mesure_fk FOREIGN KEY (CodeIndividu) REFERENCES INDIVIDU(CodeIndividu) ON DELETE CASCADE,
	CONSTRAINT poids_ch CHECK (Poids >= 0),
	CONSTRAINT taille_ch CHECK (Taille >= 0),
	CONSTRAINT mesure_unique UNIQUE(DateMesure, CodeIndividu)
);
CREATE TABLE SURVEILLANCE (
	CodeEmploye NUMBER,
	CodeZone NUMBER,
	CodeLotissement NUMBER,
	Jour VARCHAR2(20),
	Heure NUMBER,
	CONSTRAINT surv_pk PRIMARY KEY (CodeEmploye, CodeZone, CodeLotissement),
	CONSTRAINT surv_fk FOREIGN KEY (CodeZone, CodeLotissement) REFERENCES LOTISSEMENT(CodeZone, CodeLotissement)
);
CREATE TRIGGER update_indiv BEFORE UPDATE ON INDIVIDU
FOR EACH ROW
DECLARE
	total INTEGER;
BEGIN
	SELECT COUNT(*) INTO total FROM MESURE WHERE CodeIndividu = :old.CodeIndividu;
	IF total > 0 THEN
		raise_application_error(-20001, 'Erreur, existe dans MESURE');
	END IF;
END;
/
CREATE TRIGGER updel_emp BEFORE UPDATE OR DELETE ON EMPLOYE
FOR EACH ROW
DECLARE
	total INTEGER;
BEGIN
	SELECT COUNT(*) INTO total FROM SALAIRE WHERE CodeEmploye = :old.CodeEmploye;
        IF total > 0 THEN
		raise_application_error(-20001, 'Erreur, existe dans SALAIRE');
	END IF;
END;
/

