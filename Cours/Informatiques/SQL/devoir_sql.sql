-- Create a new database called 'TP1'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
	SELECT name
		FROM sys.databases
		WHERE name = N'TP1'
)
CREATE DATABASE TP1
GO

CREATE DATABASE TP1
use TP1

CREATE TABLE Categories (
    idCategorie CHAR(1) PRIMARY KEY,
    nomCategorie VARCHAR(30) NOT NULL,
    couleur VARCHAR(30)
);

CREATE TABLE Questions (
    idQuestion INT PRIMARY KEY IDENTITY(100,1),
    enonce VARCHAR(100) NOT NULL,
    flag CHAR(1) DEFAULT 'n' 
		CHECK (flag IN ('n', 'o')),
    difficulte CHAR(1) NOT NULL 
		CHECK (difficulte IN ('d', 'm', 'f')),
    idCategorie CHAR(1) NOT NULL,
    FOREIGN KEY (idCategorie) 
		REFERENCES Categories(idCategorie)
);

CREATE TABLE Reponses (
    idReponse INT PRIMARY KEY IDENTITY,
    laReponse VARCHAR(100) NOT NULL,
    estBonne CHAR(1) NOT NULL 
		CHECK (estBonne IN ('o', 'n')),
    idQuestion INT NOT NULL,
    FOREIGN KEY (idQuestion) 
		REFERENCES Questions(idQuestion)
);

CREATE TABLE JoueursTrivia (
    idJoueur INT PRIMARY KEY IDENTITY,
    aliass VARCHAR(10) UNIQUE NOT NULL,
    nom VARCHAR(20),
    prenom VARCHAR(20)
);

CREATE TABLE Scores (
	idJoueur INT NOT NULL,
	idCategorie CHAR(1) NOT NULL,
	nbBonneReponse INT,
	nbMauvaiseReponse INT,
	PRIMARY KEY (idJoueur, idCategorie),
	FOREIGN KEY (idJoueur) 
		REFERENCES JoueursTrivia(idJoueur),
	FOREIGN KEY (idCategorie) 
		REFERENCES Categories(idCategorie)
);

-- 1. Que se passe-t-il si vous essayez deinserer 
--leenregistrement suivant dans la table Questions ?
INSERT INTO Questions (enonce, difficulte, idCategorie)
VALUES ('Quel est le nom de votre prof ?', 'f', 'z');
-- Erreur attendue : La contrainte de cle etrangere echoue 
--car 'z' n'existe pas dans la table Categories.

-- 2. Que se passe-t-il si vous essayez de supprimer 
--la categorie dont le code est ese ?
DELETE FROM Categories WHERE idCategorie = 's';
-- Erreur attendue : La suppression echoue si des 
--enregistrements de la table Questions ou Scores 
--referencent idCategorie = 's'.

-- 3. Que se passe-t-il si vous essayez de modifier le 
--code s par w dans la table Categories ?
UPDATE Categories SET idCategorie = 'w' 
	WHERE idCategorie = 's';
-- Erreur attendue : La mise e jour echoue si des 
--enregistrements de la table Questions ou Scores 
--referencent idCategorie = 's'.

-- 4. Que se passe-t-il si vous supprimez de la table 
--Questions, la question numero 100 ?
DELETE FROM Questions WHERE idQuestion = 100;
-- Si la question n'existe pas, aucune ligne n'est 
--affectee et aucune erreur n'est retournee.
-- Si la question existe, elle est supprimee.

-- 5. Que se passe-t-il lorsque vous inserez 
--leenregistrement suivant de la table Scores ?
INSERT INTO Scores VALUES (1, 's', 2, 2);
-- Si idJoueur = 1 et idCategorie = 's' existent dans 
--les tables correspondantes, l'insertion est reussie.
-- Si idJoueur = 1 ou idCategorie = 's' n'existent pas, 
--une erreur de cle etrangere est retournee.

-- 6. Que se passe-t-il lorsque vous inserez 
--leenregistrement suivant dans la table Scores ?
INSERT INTO Scores VALUES (1, 'k', 2, 2);
-- Erreur attendue : La contrainte de cle etrangere 
--echoue car 'k' n'existe pas dans la table Categories.

-- 7. Que se passe-t-il lorsque vous supprimez le joueur 
--numero 1 de la table joueursTrivia ?
DELETE FROM JoueursTrivia WHERE idJoueur = 1;
-- Erreur attendue : La suppression echoue si des 
--enregistrements dans Scores ou autres tables 
--referencent idJoueur = 1.

-- 8. Inserer 2 enregistrements de votre choix dans la 
--table Scores.
INSERT INTO Scores (idJoueur, idCategorie, nbBonneReponse, nbMauvaiseReponse) 
	VALUES (1, 's', 3, 1);
INSERT INTO Scores (idJoueur, idCategorie, nbBonneReponse, nbMauvaiseReponse) 
	VALUES (2, 'h', 5, 0);

-- 9. Ajouter deux questions de votre choix pour la 
--categorie 'j' dans la table Questions
INSERT INTO Questions (enonce, difficulte, idCategorie) 
	VALUES ('Quelle est la capitale de la France ?', 'd', 'j');
INSERT INTO Questions (enonce, difficulte, idCategorie) 
	VALUES ('Quel est le plus grand ocean ?', 'm', 'j');

-- 10. Ajouter les reponses (dans la table Reponses) des 
--questions que vous venez deajouter
INSERT INTO Reponses (laReponse, estBonne, idQuestion) 
	VALUES ('Paris', 'o', 112);
INSERT INTO Reponses (laReponse, estBonne, idQuestion) 
	VALUES ('Atlantique', 'n', 113);
INSERT INTO Reponses (laReponse, estBonne, idQuestion) 
	VALUES ('Pacifique', 'o', 113);

-- 11. Dans la table Scores, pourquoi est-ce que le 
--idJoueur neest pas IDENTITY ? Est-ce que nous aurions 
--pu mettre cet attribut IDENTITY ? Justifier votre reponse.

-- Le idJoueur n'est pas IDENTITY car il fait reference 
--aux joueurs existants. Le definir comme IDENTITY 
--creerait des joueurs fictifs non references dans 
--JoueursTrivia mais il est definit comme clef etranger ce qui blockera les operation.

-- 12. Afficher les questions qui contiennent dans 
--leenonce le mot : element.
SELECT * FROM Questions WHERE enonce LIKE '%element%';

-- 13. Afficher toutes les questions de la categorie s 
--et qui sont difficiles (d)
SELECT * FROM Questions 
	WHERE idCategorie = 's' AND difficulte = 'd';

-- 14. Afficher les questions qui sont dans les 
--categories s ou h.
SELECT * FROM Questions WHERE idCategorie IN ('s', 'h');

-- 15. Mettre e jour la difficulte de la question 
--e Quel element chimique a comme symbole la lettre K ? e 
--par la difficulte de la question e Quel est le poids 
--moyen d''un cerveau humain? e
UPDATE Questions SET difficulte = (
	SELECT difficulte FROM Questions 
		WHERE enonce = 'Quel est le poids moyen d''un cerveau humain?')
WHERE enonce = 'Quel element chimique a comme symbole la lettre K ?';

-- 16. Utiliser une sous requete pour supprimer les 
--categories qui neont pas de questions (Ne pas executer 
--ou faire un ROLLBACK).
-- ROLLBACK;
DELETE FROM Categories
	WHERE idCategorie NOT IN (
		SELECT DISTINCT idCategorie FROM Questions);

-- 17. Afficher les deux meilleurs joueurs (aliass, 
--totalpoints). Chaque bonne reponse vaut 2 points, 
--chaque mauvaise reponse vaut -1 points.
SELECT TOP 2
	jt.aliass, 
	(2 * s.nbBonneReponse - s.nbMauvaiseReponse) AS totalpoints
FROM Scores s
JOIN JoueursTrivia jt ON s.idJoueur = jt.idJoueur
ORDER BY totalpoints DESC;

-- 18. Creer la table QuestionsDifficiles qui aura les 
--colonnes suivantes : nomCategorie, enonce, laReponse. 
--Cette table va contenir toutes les questions difficiles 
--avec uniquement leurs bonnes reponses.
CREATE TABLE QuestionsDifficiles (
    nomCategorie VARCHAR(30),
    enonce VARCHAR(100),
    laReponse VARCHAR(100)
);
INSERT INTO QuestionsDifficiles (nomCategorie, enonce, laReponse)
SELECT c.nomCategorie, q.enonce, r.laReponse
FROM Questions q
JOIN Categories c ON q.idCategorie = c.idCategorie
JOIN Reponses r ON q.idQuestion = r.idQuestion
WHERE q.difficulte = 'd' AND r.estBonne = 'o';

-- 19. Afficher le nomCategorie, enonce et difficulte de 
--toutes les categories ayant une question
SELECT c.nomCategorie, q.enonce, q.difficulte
FROM Categories c
JOIN Questions q ON c.idCategorie = q.idCategorie;

-- 20. Afficher idQuestion, enonce, difficulte, laReponse 
--de toutes les questions. Afficher uniquement les bonnes 
--reponses.
SELECT q.idQuestion, q.enonce, q.difficulte, r.laReponse
FROM Questions q
JOIN Reponses r ON q.idQuestion = r.idQuestion
WHERE r.estBonne = 'o';

-- 21. Afficher toutes les questions (enonce, difficulte) 
--de la categorie : histoire et geographie;
SELECT q.enonce, q.difficulte
FROM Questions q
JOIN Categories c ON q.idCategorie = c.idCategorie
WHERE c.nomCategorie = 'histoire et geographie';

-- 22. Afficher nomCategorie, enonce , difficulte, 
--laReponse de toutes les questions. On affiche 
--uniquement les bonnes reponses. Cette sortie est 
--ordonnee selon le nom de la categorie.
SELECT c.nomCategorie, q.enonce, q.difficulte, r.laReponse
FROM Questions q
JOIN Categories c ON q.idCategorie = c.idCategorie
JOIN Reponses r ON q.idQuestion = r.idQuestion
WHERE r.estBonne = 'o'
ORDER BY c.nomCategorie;

-- 23. Afficher nom et aliass des joueurs, nomCategorie, 
--nbBonneReponse, nbMauvaiseReponse.
SELECT jt.nom, jt.aliass, c.nomCategorie, s.nbBonneReponse, s.nbMauvaiseReponse
FROM JoueursTrivia jt
JOIN Scores s ON jt.idJoueur = s.idJoueur
JOIN Categories c ON s.idCategorie = c.idCategorie;

-- 24. Afficher nom, aliass des joueurs ayant plus que 
--2 bonnes reponses dans la categorie sciences.
SELECT jt.nom, jt.aliass
FROM JoueursTrivia jt
JOIN Scores s ON jt.idJoueur = s.idJoueur
JOIN Categories c ON s.idCategorie = c.idCategorie
WHERE c.nomCategorie = 'sciences' AND s.nbBonneReponse > 2;

-- 25. Afficher le nomCategorie, enonce et difficulte. 
--Cet affichage doit inclure toutes les categories y 
--compris celles qui neont pas de questions. Pour plus 
--de lisibilite, ordonnez la sortie par enonce.
SELECT c.nomCategorie, q.enonce, q.difficulte
FROM Categories c
LEFT JOIN Questions q ON c.idCategorie = q.idCategorie
ORDER BY q.enonce;

-- 26. Afficher les nomCategorie et la couleur de toutes 
--les categories qui neont pas de questions.
SELECT c.nomCategorie, c.couleur
FROM Categories c
LEFT JOIN Questions q ON c.idCategorie = q.idCategorie
WHERE q.idQuestion IS NULL;

-- 27. Afficher la liste des joueurs (nom et aliass) qui 
--neont pas joue (nbBonneReponse, nbMauvaiseReponse sont 
--tous les deux NULL)
SELECT jt.nom, jt.aliass
FROM JoueursTrivia jt
JOIN Scores s ON jt.idJoueur = s.idJoueur
WHERE s.nbBonneReponse IS NULL 
	AND s.nbMauvaiseReponse IS NULL
