
----------------------------------
insert into Categories values('s','sciences','vert');
insert into Categories values('a','art et lettres','orange');
insert into Categories values('h','histoire et geographie','bleu');
insert into Categories values('g','général','Jaune');
insert into Categories values('p','sport','Mauve');
insert into Categories values('j','Jeux vidéo','Rouge');

----------------------------------------------
insert into Questions(enonce,difficulte,idCategorie)
values('Quel élément dont le symbole est C, se retrouve dans toute forme de vie organique ?','f','s'); 

insert into Questions(enonce,difficulte,idCategorie)
values('Quel élément chimique a comme symbole la lettre K ?','d','s'); 

insert into Questions(enonce,difficulte,idCategorie)
values('Qui est l''inventeur du modèle relationnel en BD ?','f','s'); 

insert into Questions(enonce,difficulte,idCategorie)
values('Quel est le double du quintuple de 248 ?','f','s');

insert into Questions(enonce,difficulte,idCategorie)
values('Quel est le poids moyen d''un cerveau humain?','m','s');

insert into Questions(enonce,difficulte,idCategorie)
values('Quelle est la couleur de Shrek','f','g');

insert into Questions(enonce,difficulte,idCategorie)
values('Quel animal est le meilleu ami de Shrek','f','g');

insert into Questions(enonce,difficulte,idCategorie)
values('Quelle phrase est souvent pronocée par Bart Simpson? ','d','g');

insert into Questions(enonce,difficulte,idCategorie)
values('Quel pays a offert la statut de la libéerté aux États-Unis? ','f','h');

insert into Questions(enonce,difficulte,idCategorie)
values('Quelle ville est devenue la capitale de Cuba en 1519? ','f','h');

insert into Questions(enonce,difficulte,idCategorie)
values('De quel pays est le pape Jean-Paul II? ','d','h');

insert into Questions(enonce,difficulte,idCategorie)
values('De quel pays les États-Unis ont-il acheté l''Alaska? ','m','h');   

--Reponses question 100
insert into Reponses (laReponse,estBonne,idQuestion) values ('Le carbone','o',100);
insert into Reponses (laReponse,estBonne,idQuestion) values ('Le chlore','n',100);
insert into Reponses (laReponse,estBonne,idQuestion) values ('Le calcium','n',100);
insert into Reponses (laReponse,estBonne,idQuestion) values ('Le cobalte','n',100);

---reponses question 101
insert into Reponses (laReponse,estBonne,idQuestion) values ('Le phosphore','n',101);
insert into Reponses (laReponse,estBonne,idQuestion) values ('Le potassium','o',101);
insert into Reponses (laReponse,estBonne,idQuestion) values ('Le souffre','n',101);
insert into Reponses (laReponse,estBonne,idQuestion) values ('Le chlore','n',101);

--reponse question 102
insert into Reponses (laReponse,estBonne,idQuestion) values ('Ivar Jacobson','n',102);
insert into Reponses (laReponse,estBonne,idQuestion) values ('Tim Berners-Lee','n',102);
insert into Reponses (laReponse,estBonne,idQuestion) values ('Steve Jobs','n',102);
insert into Reponses (laReponse,estBonne,idQuestion) values ('Edgar Frank « Ted » Codd ','o',102);

--reponses question 103
insert into Reponses (laReponse,estBonne,idQuestion) values ('2480','o',103);
insert into Reponses (laReponse,estBonne,idQuestion) values ('2500','n',103);
insert into Reponses (laReponse,estBonne,idQuestion) values ('2487','n',103);
insert into Reponses (laReponse,estBonne,idQuestion) values ('2600','n',103);

--reponses questions 104
insert into Reponses (laReponse,estBonne,idQuestion) values ('2,3 kg','n',104);
insert into Reponses (laReponse,estBonne,idQuestion) values ('2 kg','n',104);
insert into Reponses (laReponse,estBonne,idQuestion) values ('1,3 kg','o',104);
insert into Reponses (laReponse,estBonne,idQuestion) values ('1kg','n',104);

--reponses question 105
insert into Reponses (laReponse,estBonne,idQuestion) values ('vert','o',105);
insert into Reponses (laReponse,estBonne,idQuestion) values ('bleu','n',105);
insert into Reponses (laReponse,estBonne,idQuestion) values ('jaune','n',105);
insert into Reponses (laReponse,estBonne,idQuestion) values ('rouge','n',105);

--reponses question 106
insert into Reponses (laReponse,estBonne,idQuestion) values ('chien','n',106);
insert into Reponses (laReponse,estBonne,idQuestion) values ('chat','n',106);
insert into Reponses (laReponse,estBonne,idQuestion) values ('âne','o',106);
insert into Reponses (laReponse,estBonne,idQuestion) values ('cheval','n',106);

--- réponses question 107
insert into Reponses (laReponse,estBonne,idQuestion) values ('oh mon dieu !','n',107);
insert into Reponses (laReponse,estBonne,idQuestion) values ('ah caramba !','o',107);
insert into Reponses (laReponse,estBonne,idQuestion) values ('oh seigneur ! ','n',107);
insert into Reponses (laReponse,estBonne,idQuestion) values ('oups','n',107);

--- reponses question 108
insert into Reponses (laReponse,estBonne,idQuestion) values ('Le Le Canada','n',108);
insert into Reponses (laReponse,estBonne,idQuestion) values ('La France','o',108);
insert into Reponses (laReponse,estBonne,idQuestion) values ('Le Le Brésil','n',108);
insert into Reponses (laReponse,estBonne,idQuestion) values ('L''Italie','n',108);

-- reponses question 109
insert into Reponses (laReponse,estBonne,idQuestion) values ('La Havane','o',109);
insert into Reponses (laReponse,estBonne,idQuestion) values ('Trinidad','n',109);
insert into Reponses (laReponse,estBonne,idQuestion) values ('Florida','n',109);
insert into Reponses (laReponse,estBonne,idQuestion) values ('Artemisa','n',109);

-- reponses question 110
insert into Reponses (laReponse,estBonne,idQuestion) values ('L''espagne','n',110);
insert into Reponses (laReponse,estBonne,idQuestion) values ('La France','n',110);
insert into Reponses (laReponse,estBonne,idQuestion) values ('Pologne','o',110);
insert into Reponses (laReponse,estBonne,idQuestion) values ('Bulgarie','n',110);

--reponses question 111
insert into Reponses (laReponse,estBonne,idQuestion) values ('Le Danemark','n',111);
insert into Reponses (laReponse,estBonne,idQuestion) values ('Le Canada','n',111);
insert into Reponses (laReponse,estBonne,idQuestion) values ('La Russie','o',111);
insert into Reponses (laReponse,estBonne,idQuestion) values (' La Finlande','n',111);

-------------------- Table JoueursTrivia
insert into JoueursTrivia(aliass, nom, prenom) values('Patoche', 'Lefou', 'Duroy');
insert into JoueursTrivia(aliass, nom, prenom) values('Primogen', 'Lebrillant', 'Duvillage');
insert into JoueursTrivia(aliass, nom, prenom) values('Barackuda', 'Lemagnifique', 'D''acôté');
insert into JoueursTrivia(aliass, nom, prenom) values('Chubaka', 'LeSinge', 'Del''espace');
insert into JoueursTrivia(aliass, nom, prenom) values('Kiwi', 'Lefruit', 'Dumarché');
insert into JoueursTrivia(aliass, nom, prenom) values('Merlin', 'Baracoa', 'Ancien');

--------------Table Scores
insert into Scores values (1, 's',4,1);
insert into Scores values (1, 'h',1,3);
insert into Scores values (1, 'g',3,0);

insert into Scores values (2, 's',3,2);
insert into Scores values (2, 'h',4,0);
insert into Scores values (2, 'g',1,2);

insert into Scores values (3, 's',2,2);
insert into Scores values (4, 'h',1,3);
insert into Scores values (5, 'g',0,3);
