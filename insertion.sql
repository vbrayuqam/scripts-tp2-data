/* Jeu de donnees, les INSERT doivent fonctionner */
INSERT INTO EMPLOYE (
	CodeEmploye,
        NAS,
        Nom,
        Prenom,
        NomJeuneFille,
        DateDeNaissance,
        Adresse,
        Sexe,
        Telephone,
        Fonction,
        Service,
        Taux,
        Grade
) VALUES (
	1,
	'123 123 123',
	'Poitras',
	'Regine',
	'Gingras',
	'1990/01/01',
	'123 rue Leveilleur',
	'F',
	'450-234-1111',
	'surveillant',
	'surveillance',
	14.60,
	'G1'
);
INSERT INTO EMPLOYE (
        CodeEmploye,
        NAS,
        Nom,
        Prenom,
	NomJeuneFille,
        DateDeNaissance,
        Adresse,
        Sexe,
        Telephone,
        Fonction,
        Service,
        Taux,
        Grade
) VALUES (
        2,
        '234 234 234',
        'Pineaux',
        'Alain',
	'Aucun',
        '1980/01/01',
        '234 rue Levesque',
        'M',
        '450-33-34341',
        'surveillant',
        'medical',
        55.00,
        'G5'
);
INSERT INTO EMPLOYE (
        CodeEmploye,
        NAS,
        Nom,
        Prenom,
	NomJeuneFille,
        DateDeNaissance,
        Adresse,
        Sexe,
        Telephone,
        Fonction,
        Service,
        Taux,
        Grade
) VALUES (
        3,
        '345 345 345',
        'Morin',
        'Maurice',
	'Aucun',
        '1970/01/01',
        '345 rue Letel',
        'M',
        '450-777-2222',
        'surveillant',
        'administratif',
        15.00,
        'G2'
);
INSERT INTO EMPLOYE (
        CodeEmploye,
        NAS,
        Nom,
        Prenom,
        NomJeuneFille,
        DateDeNaissance,
        Adresse,
        Sexe,
        Telephone,
        Fonction,
        Service,
        Taux,
        Grade
) VALUES (
        4,
        '444 444 444',
        'McTest',
        'Testy',
        'Aucun',
        '1974/01/01',
        '45 rue Test',
        'M',
        '450-773-2322',
        'surveillant',
        'administratif',
        15.00,
        'G2'
);
INSERT INTO ZONE (
        CodeZone,
        NomZone,
        ChefZone
) VALUES (
	1,
	'Les primates',
	1
);
INSERT INTO ZONE (
        CodeZone,
        NomZone,
        ChefZone
) VALUES (
        2,
        'Les oiseaux',
        2
);
INSERT INTO ZONE (
        CodeZone,
        NomZone,
        ChefZone
) VALUES (
        3,
        'Les poissons',
        3
);
INSERT INTO ZONE (
        CodeZone,
        NomZone,
        ChefZone
) VALUES (
        4,
        'zone de test',
        4
);
INSERT INTO SALAIRE (
        CodeEmploye,
        Mois,
        Salaire
) VALUES (
	1,
	'Janvier',
	3000
);
INSERT INTO SALAIRE (
        CodeEmploye,
        Mois,
        Salaire
) VALUES (
       	2,
        'Janvier',
        4000
);
INSERT INTO SALAIRE (
        CodeEmploye,
        Mois,
        Salaire
) VALUES (
        3,
        'Janvier',
        5000
);
INSERT INTO LOTISSEMENT (
        CodeZone,
        CodeLotissement,
        NomLotissement
) VALUES (
	1,
	1,
	'Les gorilles'
);
INSERT INTO LOTISSEMENT (
        CodeZone,
        CodeLotissement,
        NomLotissement 
) VALUES (
        2,
        2,
        'Les perroquets'
);
INSERT INTO LOTISSEMENT (
        CodeZone,
        CodeLotissement,
        NomLotissement 
) VALUES (
        3,
        3,
        'Les truites'
);
INSERT INTO LOTISSEMENT (
        CodeZone,
        CodeLotissement,
        NomLotissement
) VALUES (
        4,
        4,
        'Les tests'
);

INSERT INTO CHOIX (
        CodeEmploye,
        CodeZone,
        Affinite
) VALUES (
	1,
	1,
	'primates'
);
INSERT INTO CHOIX (
        CodeEmploye,
        CodeZone,
        Affinite
) VALUES (
        2,
        2,
        'oiseaux'
);
INSERT INTO CHOIX (
        CodeEmploye,
        CodeZone,
        Affinite
) VALUES (
        3,
        3,
        'poissons'
);
INSERT INTO ESPECE (
        CodeEspece,
        NomEspece,
        Nombre,
        CodeZone,
        CodeLotissement
) VALUES (
	1,
	'Gorille des montagnes',
	1,
	1,
	1
);
INSERT INTO ESPECE (
        CodeEspece,
        NomEspece,
        Nombre,
        CodeZone,
        CodeLotissement
) VALUES (
        2,
        'Perroquet au bonnet roux',
        1,
        2,
        2
);
INSERT INTO ESPECE (
        CodeEspece,
        NomEspece,
        Nombre,
        CodeZone,
        CodeLotissement
) VALUES (
        3,
        'Truite arc-en-ciel',
        1,
        3,
        3
);
INSERT INTO ESPECE (
        CodeEspece,
        NomEspece,
        Nombre,
        CodeZone,
        CodeLotissement
) VALUES (
        4,
        'espece a supprimer',
        1,
        4,
        4
);
INSERT INTO INDIVIDU (
        CodeIndividu,
        NomIndividu,
        CodeEspece,
        Sang,
        DateNaissance
) VALUES (
	1,
	'Elliot',
	1,
	'A-',
	'2000/06/10'
);
INSERT INTO INDIVIDU (
        CodeIndividu,
        NomIndividu,
        CodeEspece,
        Sang,
        DateNaissance
) VALUES (
        2,
        'Polly',
        2,
        'O+',
        '2010/06/10'
);
INSERT INTO INDIVIDU (
        CodeIndividu,
        NomIndividu,
        CodeEspece,
        Sang,
        DateNaissance
) VALUES (
        3,
        'Antigone',
        3,
        'A+',
        '2018/08/10'
);
INSERT INTO INDIVIDU (
        CodeIndividu,
        NomIndividu,
        CodeEspece,
        Sang,
        DateNaissance
) VALUES (
        4,
        'test individu',
        4,
        'A+',
        '2018/08/10'
);
INSERT INTO MESURE (
        CodeIndividu,
        DateMesure,
        Poids,
        Taille
) VALUES (
	1,
	'2020/07/01',
	10.11,
	10.11
);
INSERT INTO MESURE (
        CodeIndividu,
        DateMesure,
        Poids,
        Taille
) VALUES (
        2,
        '2020/07/01',
        23.44,
        55.155
);
INSERT INTO MESURE (
        CodeIndividu,
        DateMesure,
        Poids,
        Taille
) VALUES (
        3,
        '2020/07/01',
        22.22,
        22.22
);
INSERT INTO MESURE (
        CodeIndividu,
        DateMesure,
        Poids,
        Taille
) VALUES (
        4,
        '2020/07/01',
        22.22,
        22.22
);
INSERT INTO SURVEILLANCE (
        CodeEmploye,
        CodeZone,
        CodeLotissement,
        Jour,
        Heure
) VALUES (
	1,
	1,
	1,
	'Lundi',
	1300
);
INSERT INTO SURVEILLANCE (
        CodeEmploye,
        CodeZone,
        CodeLotissement,
        Jour,
        Heure
) VALUES (
        2,
        2,
        2,
        'Mardi',
        800
);
INSERT INTO SURVEILLANCE (
        CodeEmploye,
        CodeZone,
        CodeLotissement,
        Jour,
        Heure
) VALUES (
        3,
        3,
        3,
        'Mercredi',
        1500
);
/* Verification des contraintres, toutes les tentatives qui suivent doivent echouer */
INSERT INTO EMPLOYE (
        CodeEmploye
) VALUES (
        6
);
INSERT INTO EMPLOYE (
        CodeEmploye,
	Nom
) VALUES (
        6,
	'Mireille'
);
INSERT INTO EMPLOYE (
        CodeEmploye,
        Nom,
	Prenom
) VALUES (
        6,
        'Mireille',
	'Mireille'
);
INSERT INTO EMPLOYE (
        CodeEmploye,
        Nom,
        Prenom,
	NomJeuneFille
) VALUES (
        6,
        'Mireille',
        'Mireille',
	'Mireille'
);
INSERT INTO EMPLOYE (
        CodeEmploye,
        Nom,
        Prenom,
        NomJeuneFille,
	Adresse
) VALUES (
        6,
        'Mireille',
        'Mireille',
        'Mireille',
	'11 rue Bordeaux'
);
INSERT INTO EMPLOYE (
        CodeEmploye,
        Nom,
        Prenom,
        NomJeuneFille,
        Adresse,
	Fonction
) VALUES (
        6,
        'Mireille',
        'Mireille',
        'Mireille',
        '11 rue Bordeaux',
	'surveillant'
);
INSERT INTO EMPLOYE (
        CodeEmploye,
        Nom,
        Prenom,
        NomJeuneFille,
        Adresse,
        Fonction,
	Service
) VALUES (
        6,
        'Mireille',
        'Mireille',
        'Mireille',
        '11 rue Bordeaux',
        'surveillant',
	'erreur'
);
INSERT INTO EMPLOYE (
        Nom,
        Prenom,
        NomJeuneFille,
        Adresse,
        Fonction,
        Service
) VALUES (
        'Mireille',
        'Mireille',
        'Mireille',
        '11 rue Bordeaux',
        'surveillant',
        'administratif'
);
INSERT INTO EMPLOYE (
        CodeEmploye,
        Nom,
        Prenom,
        NomJeuneFille,
        Adresse,
        Fonction,
        Service,
	Taux
) VALUES (
        6,
        'Mireille',
        'Mireille',
        'Mireille',
        '11 rue Bordeaux',
        'surveillant',
        'administratif',
	-1
);
INSERT INTO EMPLOYE (
        CodeEmploye,
        Nom,
        Prenom,
        NomJeuneFille,
        Adresse,
        Fonction,
        Service,
        Sexe
) VALUES (
        6,
        'Mireille',
        'Mireille',
        'Mireille',
        '11 rue Bordeaux',
        'surveillant',
        'administratif',
        'X'
);
INSERT INTO EMPLOYE (
        CodeEmploye,
        Nom,
        Prenom,
        NomJeuneFille,
        Adresse,
        Fonction,
        Service,
        Grade
) VALUES (
        6,
        'Mireille',
        'Mireille',
        'Mireille',
        '11 rue Bordeaux',
        'surveillant',
        'administratif',
        'X'
);
INSERT INTO ZONE (
	CodeZone
) VALUES (
	6
);
INSERT INTO ZONE (
        NomZone
) VALUES (
        'Zone test'
);
INSERT INTO ZONE (
	CodeZone,
	NomZone,
	ChefZone
) VALUES (
        6,
	'Zone test',
	6
);
INSERT INTO SALAIRE (
	CodeEmploye
) VALUES (
	6
);
INSERT INTO SALAIRE (
        CodeEmploye,
	Mois
) VALUES (
        1,
	'Janvier'
);
INSERT INTO SALAIRE (
        CodeEmploye,
        Mois,
	Salaire
) VALUES (
        1,
        'Juin',
	-1
);
INSERT INTO LOTISSEMENT (
	CodeZone
) VALUES (
	1
);
INSERT INTO LOTISSEMENT (
        CodeZone,
	CodeLotissement
) VALUES (
        1,
	1
);
INSERT INTO LOTISSEMENT (
        CodeZone,
        CodeLotissement
) VALUES (
        1,
        6
);
INSERT INTO LOTISSEMENT (
        CodeZone,
        CodeLotissement,
	NomLotissement
) VALUES (
        6,
        6,
	'Nom test'
);
INSERT INTO LOTISSEMENT (
        CodeZone,
        CodeLotissement,
        NomLotissement
) VALUES (
        1,
        1,
        'Nom test'
);
INSERT INTO CHOIX (
	CodeEmploye
) VALUES (
	1
);
INSERT INTO CHOIX (
        CodeEmploye,
	CodeZone
) VALUES (
        1,
	1
);
INSERT INTO CHOIX (
        CodeEmploye,
        CodeZone,
	Affinite
) VALUES (
        6,
        1,
	'test'
);
INSERT INTO CHOIX (
        CodeEmploye,
        CodeZone,
        Affinite
) VALUES (
        1,
        6,
        'test'
);
INSERT INTO ESPECE (
	CodeEspece
) VALUES (
	6
);
INSERT INTO ESPECE (
        CodeEspece,
        NomEspece,
	Nombre
) VALUES (
        6,
        'espece test',
	-1
);
INSERT INTO ESPECE (
        CodeEspece,
        NomEspece,
        Nombre,
        CodeZone,
	CodeLotissement
) VALUES (
        6,
        'espece test',
        1,
        6,
	6
);
INSERT INTO ESPECE (
        CodeEspece,
        NomEspece,
        Nombre,
        CodeZone,
        CodeLotissement
) VALUES (
        1,
        'espece test',
        1,
        1,
        1
);
INSERT INTO INDIVIDU (
	CodeIndividu
) VALUES (
	6
);
INSERT INTO INDIVIDU (
        CodeIndividu,
	NomIndividu
) VALUES (
        6,
	'nom test'
);
INSERT INTO INDIVIDU (
        CodeIndividu,
        NomIndividu,
        Sang
) VALUES (
        1,
        'nom test',
        'sang test'
);
INSERT INTO INDIVIDU (
        CodeIndividu,
        NomIndividu,
        Sang,
	CodeEspece
) VALUES (
        6,
        'nom test',
        'sang test',
	6
);      
INSERT INTO INDIVIDU (
        CodeIndividu,
        NomIndividu,
        Sang,
        CodeEspece,
	Pere
) VALUES (
        6,
        'nom test',
        'sang test',
        1,
	7
);
INSERT INTO INDIVIDU (
        CodeIndividu,
        NomIndividu,
        Sang,
        CodeEspece,
	Mere
) VALUES (
        6,
        'nom test',
        'sang test',
        1,
	7
);
INSERT INTO MESURE (
	CodeIndividu 
) VALUES (
	6
);
INSERT INTO MESURE (
        CodeIndividu,
	DateMesure
) VALUES (
        6,
	'2020/07/01'
);
INSERT INTO MESURE (
        CodeIndividu,
        DateMesure,
	Poids
) VALUES (
        1,
        '2020/07/02',
	-1
);
INSERT INTO MESURE (
        CodeIndividu,
        DateMesure,
        Taille
) VALUES (
        1,
        '2020/07/02',
        -1
);
INSERT INTO SURVEILLANCE (
	CodeEmploye
) VALUES (
	6
);
INSERT INTO SURVEILLANCE (
        CodeEmploye,
	CodeZone,
	CodeLotissement
) VALUES (
        1,
	6,
	6
);
UPDATE INDIVIDU SET Sang = 'B+' WHERE Sang = 'O+';
UPDATE EMPLOYE SET Prenom = 'Annie' WHERE CodeEmploye = 1;
DELETE FROM EMPLOYE WHERE CodeEmploye = 1;
/* Test ON DELETE */
DELETE FROM EMPLOYE WHERE CodeEmploye = 4;
SELECT * FROM ZONE WHERE CodeZone = 4;
DELETE FROM LOTISSEMENT WHERE CodeLotissement = 4;
SELECT * FROM ESPECE WHERE CodeEspece = 4;
DELETE FROM INDIVIDU WHERE CodeIndividu = 4;
SELECT * FROM MESURE WHERE CodeIndividu = 4;
INSERT INTO INDIVIDU (
        CodeIndividu,
        NomIndividu,
        CodeEspece,
        Sang,
        DateNaissance
) VALUES (
        4,
        'test individu',
        4,
        'A+',
        '2018/08/10'
);
DELETE FROM ESPECE WHERE CodeEspece = 4;
SELECT * FROM INDIVIDU WHERE CodeIndividu = 4;
