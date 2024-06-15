/* 2) Créer la procédure permettant d’afficher la liste des produits 
et leurs prix correspondants.*/
proc print data=produit;
  var nomprod coutprod prodlist;
  title "Liste des produits et leurs prix";
run;

/* 3) Afficher la liste des clients ayant 2 magasins. */
proc sql;
  select nomclient, count(*) as nombre_magasin
  from client
  group by nomclient
  having nombre_magasin = 2;
quit;

/* 4) Ecrire le code permettant d ’ afficher les prix de production, 
de catalogue et de facturation de chaque produit vendu par le client de « Surf40 ».*/
proc sql;
  select p.nomprod, p.coutprod, p.prodlist, f.prixfact
  from produit p, facture f
  where f.nomclient = "Surf40"
    and f.nomprod = p.nomprod;
quit;

/* 5) Ecrire le code permettant d ’ afficher les informations 
sur les ventes réalisées par Alain (identifiant 216) */
proc sql;
  select *
  from facture
  where numemp = 216;
quit;

data print data=facture;
  if numemp = 216;
run;

/* 6) Ecrivez un code utilisant une sous-requête et la clause not in dans la clause where 
pour afficher les produits proposés par le fournisseur mais non-vendus dans les magasins. */
proc sql;
  select nomprod
  from produit
  where nomprod not in (select nomprod from facture);
quit;

/* 7) Créez une table « nouveauxprix », copie de la table produit, */
proc sql;
  create table nouveauxprix as
  select * from produit;
quit;

data nouveauxprix;
  set produit;
run;

/* 8) Effectuer la commande permettant d’ajouter une colonne dans la table « nouveauxprix », 
nommée prix2011 de type numérique et exprimée en euros. */
proc sql;
  alter table nouveauxprix
  add prix2011 num;
quit;

data nouveauxprix;
  set nouveauxprix;
  prix2011 = .;
run;

/* 9) Les valeurs de la colonne prix2011 sont obtenues en ajoutant 20% au prix catalogue. */
data nouveauxprix;
  set nouveauxprix;
  prix2011 = prodlist * 1.20;
run;

proc sql;
  update nouveauxprix
  set prix2011 = prodlist * 1.20;
quit;

/* 10) Insérer une nouvelle ligne dans la table « nouveauxproduit », 
contenant le svaleurs suivantes : ("cremesol",9,10,12) */
proc sql;
  insert into nouveauxprix (nomprod, coutprod, prodlist, prix2011)
  values ("cremesol", 9, 10, 12);
quit;

data nouveauxprix;
  set nouveauxprix end=last;
  output;
  if last then do;
    nomprod = "cremesol";
    coutprod = 9;
    prodlist = 10;
    prix2011 = 12;
    output;
  end;
run;

/* 11) Supprimer la ligne ajoutée précédemment. */
proc sql;
  delete from nouveauxprix
  where nomprod = "cremesol";
quit;

proc print data=nouveauxprix;
  if nomprod ne "cremesol";
  title "Table nouveauxprix après suppression de cremesol";
run;


/* 12) Afficher un histogramme puis un graphique en secteur permettant 
d’afficher la répartition des clients selon les villes. */
/* Création de l'histogramme */
proc gchart data=client;
  vtar villeclient;
  /*pie villeclient*/

proc sgplot data=client;
  vbar ville / datalabel;
  title "Répartition des clients selon les villes";
run;

/* Création du graphique en secteur */
proc freq data=client;
    tables ville / out=ville_freq;
run;
proc sgpie data=ville_freq;
    pie ville / response=count datalabel;
    title "Répartition des clients selon les villes";
run;
