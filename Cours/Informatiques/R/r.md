# Langage R

- [Langage R](#langage-r)
  - [Opérateur](#opérateur)
  - [Importation](#importation)
    - [Lecture](#lecture)
    - [Package](#package)
  - [Fonction](#fonction)
    - [Graphique](#graphique)
      - [Boite à Moustache](#boite-à-moustache)
    - [Liste](#liste)
  - [Annex](#annex)
    - [Note](#note)
- [cooks.distance(model)](#cooksdistancemodel)
  - [Webographi](#webographi)

## Opérateur

|  R  | Description           |
| :-: | --------------------- |
| \+ | Plus                  |
| – | Minus                 |
|  *  | Multiplication        |
|  /  | Division              |
|  ^  | Exponential           |
| %% | Modulus               |
| %/% | Integer divide        |
| %*% | Matrix multiplication |
| %o% | Outer product         |
| %x% | Kronecker product     |

## Importation

### Lecture

```R
read.table(
  file,      # Le nom du fichier ou chemin absolu à partir duquel les données doivent être lues
  header = FALSE, # noms des variables en première ligne
  sep = "",       # le caractère de séparateur de champ
  quote = "\"'",  # l’ensemble des caractères de citation
  dec = ".",      # Caractère utilisé dans le fichier pour les décimales.
  numerals = c("allow.loss", "warn.loss", "no.loss"),
  row.names,
  col.names,
  as.is = !stringsAsFactors,
  na.strings = "NA",
  colClasses = NA,
  nrows = -1,
  skip = 0,
  check.names = TRUE,
  fill = !blank.lines.skip,
  strip.white = FALSE,
  blank.lines.skip = TRUE,
  comment.char = "#",
  allowEscapes = FALSE,
  flush = FALSE,
  stringsAsFactors = default.stringsAsFactors(),
  fileEncoding = "",
  encoding = "unknown",
  text,
  skipNul = FALSE
)
```

.csv
.csv2
.delim
.delim2

### Package

```R
install.packages(
  pkgs,
  lib,
  repos = getOption("repos"),
  contriburl = contrib.url(repos, type),
  method,
  available = NULL,
  destdir = NULL,
  dependencies = NA,
  type = getOption("pkgType"),
  configure.args = getOption("configure.args"),
  configure.vars = getOption("configure.vars"),
  clean = FALSE, Ncpus = getOption("Ncpus", 1L),
  verbose = getOption("verbose"),
  libs_only = FALSE,
  INSTALL_opts,
  quiet = FALSE,
  keep_outputs = FALSE,
  …)
```

## Fonction

returns a permutation of the order of the elements of a vector.

```R
order(
  x, # Sequence of vectors of the same length
  decreasing = FALSE, # Whether to sort in increasing or decreasing order
  na.last = TRUE,     # Whether to put NA values at the beginning or at the end
  method = c("auto", "shell", "radix") # Method to be used. Defaults to auto
)
```

Représenter les données catégorielles

```R
factor(
  x = character(),  # Input vector data
  levels, # Input of unique x values (optional)
  labels = levels,  # Output labels for the levels (optional)
  exclude = NA, # Values to be excluded from levels
  ordered = is.ordered(x), # Whether the input levels are ordered as given or not
  nmax = NA # Maximum number of levels
)
```

Créez des résumés statistiques par groupe en fonction des niveaux d’un ou plusieurs facteurs.

```R
tapply(
  X,  # Object you can split (matrix, data frame, ...)
  INDEX,  # List of factors of the same length
  FUN,  # Function to be applied to factors (or NULL)
  ...,  # Additional arguments to be passed to FUN
  default = NA, # If simplify = TRUE, is the array initialization value
  simplify = TRUE # If set to FALSE returns a list object
)
```

```R
packag(MASS)
  stepAIC(
  object, # modèle initial
  scope, # methode 'upper' & 'lower'
  scale = 0, # 'lm'& 'aov' & 'extractAIC'
  direction = c("both", "backward", "forward"),
  trace = 1, keep = NULL, steps = 1000, use.start = FALSE,
  k = 2, # nombre de degrés de liberté utilisés pour la pénalité 'log(n)'
...)
```

### Graphique

#### Boite à Moustache

```R
boxplot(
  formula          #  vecteur numérique de valeurs de données à diviser en groupes selon la variable de groupement
  , data = NULL      # iste) à partir de laquelle les variables dans formuladevraient être prises
  , subset           # un vecteur optionnel spécifiant un sous-ensemble d'observations à utiliser pour le tracé
  , na.action = NULL # indique ce qui doit se produire lorsque les données contiennent NA
  , xlab = mklab(y_var = horizontal) # annotation de l'axe des abscisses
  , ylab = mklab(y_var =!horizontal)
  , add = FALSE
  , ann = !add
  , horizontal = FALSE
  , drop = FALSE
  , sep = "."
  , lex.order = FALSE
)
```

### Liste

```R
append(
  x,                # le vecteur à laquelle les valeurs doivent être ajoutées.
  values,           # être inclus dans le vecteur modifié.
  after = length(x) # un indice, après quoi les valeurs doivent être annexées.
)
```

## Annex

### Note

methode de levier pour verifier si
hatvalues(model)

<<<<<<< HEAD
rstudent(model)

cooks.distance(model)
=====================

## Webographi

https://www.rdocumentation.org/
