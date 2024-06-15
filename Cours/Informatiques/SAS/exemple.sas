/* table */
data notes;
  infile datalines delimiter=',';
  input nom $20 semestre $2 a_naiss moyenne;
  datalines;
    Ricco RAKOMALALA, S1, 1953, 7,
    Julien JACQUES, S2, 1967, 12,
    Omar BOUSSAID, S1, 1940, 3,
    Fadila BENTAYB, S1, 1973, 14,
  ;
run; /*execution*/

PROC PRINT data=notes /*afficher*/

/* insérer un nouvelle étudient */
proc sql; /*procedure sql*/
   insert into notes
      values ('Julien LEMAIRE', 'S2', 2000, 15);
quit;

data notes;
  set notes end=eof;
  output;
  if eof then do;
    nom='Julien LEMAIRE';
    semestre='S2';
    a_naiss=2000;
    moyenne=15;
    output;
  end;
run;


/* ajout d'une colonne bonus */
proc sql;
  alter table notes
  add bonus num;

  update notes
  set bonus = 0;

  update notes
  set bonus = case 
    when nom = 'Ricco RAKOMALALA' then 2
    when nom = 'Julien JACQUES' then 3
    when nom = 'Omar BOUSSAID' then -1
    when nom = 'Fadila BENTAYB' then 2
    when nom = 'Julien LEMAIRE' then 2
  end;
quit;

data notes;
  set notes;
  input Bonus;
  datalines;
    2
    3
    -1
    2
    2
  ;
run;

data notes;
  set notes;
  if nom = 'Ricco RAKOMALALA' then bonus=2
  else if nom = 'Julien JACQUES' then bonus=3
  else if nom = 'Omar BOUSSAID' then bonus=-1
  else if nom = 'Fadila BENTAYB' then bonus=2
  else if nom = 'Julien LEMAIRE' then bonus=2
  else bonus=0
run;

/* afficher par ordre alphabetique */
proc sql;
  select *
  from notes
  order by nom DEC;
quit;

proc sort data=notes;
  by descending nom;
run;

/* Afficher la moyenne des notes, l'écart type, le min et le max des notes */
proc means data=notes /*mean std min max*/;
  var moyenne; /* colonne de calcul */
run;

/* Afficher la moyenne de Julien Lemaire avec un titre */
title "Moyenne de Julien Lemaire";
proc print data=notes;
  where nom = 'Julien LEMAIRE';
  var nom moyenne;
run;
title;

/* afficher les données de Omar et Fadila */
proc print data=notes;
  where nom in ('Omar BOUSSAID','Fadila BENTAYB');
run;

/* Supprimer la deuxième ligne */
data notes;
  set notes;
  if _n_ ne 2;
run;