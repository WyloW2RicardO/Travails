# Bokeh

bibliothèque de visualisation de données qui fournit des graphiques et des tracés interactifs. Pour présenter une construction élégante et concise de nouveaux graphiques avec une interactivité de haut niveau.

- [Bokeh](#bokeh)
  - [Introduction](#introduction)
    - [Instalation](#instalation)
  - [Systeme](#systeme)
  - [Model](#model)
    - [Affichage](#affichage)
    - [Données](#données)
    - [Outils](#outils)
      - [Modifier la plage](#modifier-la-plage)
      - [Indiquer les valeur](#indiquer-les-valeur)
  - [Tracé](#tracé)
    - [Figure](#figure)
      - [Legende](#legende)
  - [Montrer](#montrer)
  - [Graphique](#graphique)
    - [Ligne](#ligne)
  - [Annex](#annex)
    - [Exemple](#exemple)
      - [Selection plage temporel](#selection-plage-temporel)
    - [Webographie](#webographie)


## Introduction

### Instalation

```Python
# from CRAN:
install.packages("rbokeh")

# Vérifier instalation
from bokeh.io import output_notebook
output_notebook()
```

## Systeme

```Python
show(figure)
```

```Python
# Enregistrer l'image
output_file(
    textOptionelChemain
    + textTitre
    + textExtention
    )
```

```Python
# Rendu dans un notebook Jupyter
output_notebook()
```

## Model

```Python
from bokeh.models
```

### Affichage

```Python
column
```

### Données

```Python
ColumnDataSource(data = dict)
```

### Outils

#### Modifier la plage

```Python
RangeTool(
    x_range = range # ?
    )
RangeTool.overlay.fill_color = "navy"
RangeTool.overlay.fill_alpha = 0.2
```

#### Indiquer les valeur

```Python
# Ajouter des tooltips
tooltips = [
    ("Date", "@Date{%F}")
    , ("Température moyenne", "@tempMoy{0.2f}")
    ]

# Formater la date dans le tooltip
HoverTool(
    renderers=[line]
    , tooltips=tooltips
    , formatters={"@Date": "datetime"}
    )
```

## Tracé

```Python
from bokeh.plotting
```

### Figure

Les objets `figure` vont comporter les données pour la represantation des [graphique](#graphique).
```Python
figure(
    title = 'text'
    , height = num
    , width = num
    , plot_width = num # ?
    , plot_height = num # ?
    , x_range = couple # ?
    , x_axis_type = "datetime" # ?
    , x_axis_location = "above" # ?
    , y_range= range # ?
    , y_axis_type=None
    , tools = ["", "xpan"] # ?
    , toolbar_location = None # ?
    , background_fill_color = "#efefef" # ?
    )
```

```Python
figure.ygrid.grid_line_color = None # ?
figure.add_tools(outils)
```

#### Legende

```Python
figure.legend.title('text')
figure.legend.location('text')
figure.legend.label_text_font_size = "17pt"
```

## Montrer

```Python
from bokeh.layouts
```

```Python
row(figure0,figure2)
```

## Graphique

### Ligne

```Python
figure.line(
    x = liste0
    , y = liste1
    , source = ColumnDataSource
    , legend_label = "text"
    , line_color = listeColor
    )
```

## Annex

### Exemple

#### Selection plage temporel

```Python
def plage (
    textX
    , textY
    , data
    ):
    h = 300
    w = 800
    graph = figure(title = "Representation temporels"
        , height = h
        , width = w
        , x_axis_type ="datetime"
        , x_axis_location="above"
        , x_range=(dataFormat.index[0]
            , dataFormat.index[-1]
            )
        )
    sourceSet = ColumnDataSource(data=dataFormat)
    graph.line(x = textX
        , y = textY
        , source = sourceSet
        )
    select = figure(title = "Modifier la plage ci-dessus."
        , width = graph.width
        , height = int(graph.height / 2)
        , x_axis_type ="datetime"
        , x_range=(dataFormat.index[0]
            , dataFormat.index[-1]
            )
        , y_range = graph.y_range
        )
    select.add_tools(RangeTool(x_range = graph.x_range))
    select.line(x = textX
        , y = textY
        , source = sourceSet
        )
    show(column(graph, select))
```

### Webographie

- https://bokeh.org/