/* Iris.csv contient des mesures de longueur et de largeur des sépales et des pétales detrois espèces d'iris. */

/* 1. Écrivez une procédure SAS permettant d'importer les données Iris.csv en ajoutant les noms des colonnes dans l’ordre :
SepalLength, SepalWidth, PetalLength, PetalWidth ,Species */
proc import 
  datafile='/chemin/vers/votre/Iris.csv'
  out=iris(rename=(SepalLength, SepalWidth, PetalLength, PetalWidth ,Species))
  dbms=csv
  replace;
    delimiter=",";
    getnames=no;
run;

/* 2. Combien d'observations y a-t-il dans l'ensemble de données "Iris" ? */
proc sql;
  select count(*) into :n_obs from iris;
quit;
%put &n_obs observations in the Iris dataset;

proc datasets lib=work;
  contents data=iris;
run;

/* 3. Afficher les 10 premières lignes */
proc print data=iris(obs=10);
run;

/* 4. Afficher que les longueurs et les largeurs des pétales pour le type Iris-versic. */
proc print data=iris;
  where Species = 'Iris-versicolor';
  var PetalLength PetalWidth;
run;

/* 5. Afficher les observations entre la dixième et la treizième ligne */
proc print data=iris(firstobs=10 obs=13);
run;

data subset;
  set iris;
  if _N_ >=10 and _N_<=13;
run;

/* 6. Quelles sont les statistiques descriptives des mesures de longueur et de largeur des sépales et des pétales pour chaque espèce d'iris ? */
proc means data=iris n mean std min max;
  class Species; /*pour chaque espece*/
  var SepalLength SepalWidth PetalLength PetalWidth;
  output out=stats1;
run;

/* 7. Calculer la moyenne de la longueur des sépales pour chaque espèce d'iris */
proc means data=iris mean;
  class Species;
  var SepalLength;
  output out=mean_sepal_length mean=Mean_SepalLength;
run;

proc print data=mean_sepal_length;
run;

/* 8. Créer un graphique à barres pour la moyenne de la longueur des sépales par espèce d'iris */
proc sgplot data=mean_sepal_length;
  vbar Species / response=Mean_SepalLength;
  yaxis label="Mean Sepal Length";
  xaxis label="espace d'iris";
  title "moyenne par especes"
run;

/* 9. Existe-t-il une corrélation entre la longueur et la largeur des sépales ?
Et entre la longueur et la largeur des pétales ? */
proc corr data=iris;
  var SepalLength SepalWidth PetalLength PetalWidth;
run;

/* 10.Quelle est la répartition des différentes espèces d'iris dans l'ensemble de données ? */
proc freq data=iris;
  tables Species / nocum;
run;

/* 11.Création d'un graphique de dispersion des mesures de sépales */
proc sgscatter data=iris;
  scartter x=SepalLength y=SepalWidth / group=Species;
run;

proc sgscatter data=iris;
  plot SepalWidth*SepalLength / group=Species;
run;
