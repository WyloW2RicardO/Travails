# Shiny

## Renv

### Creation

Reproducible Environment for dependency management
By default, R installs packages to a central library and share them between projects:

- Pros: no need to reinstall common packages in a new project.
- Cons: conflicts between different dependencies/versions of different packages when two or more co-workers work on the same project

Create a separate, reproducible environment that everyone can use.

- Create a “New Project”.
- Choose “New Directory”.
- Choose a “Directory name” and where it will be stored.
- Tick the box “Use renv with this project”.
- Click “Create Project”.

A bunch of files and folders are created:

- “renv” is the folder of the virtual environment.
- “.Rprofile” is the file for the local R essions. It calls the « renv/activate.R » file (see later).
- “renv/.gitignore” is a file to tell Git to ignore the “library” folder, as it contains all dependencies.
- “renv.lock” file is a list of all the dependencies used in the R project

Take a “Snapshot” of the environment using “renv::snapshot()”:
Copy the following code into an R script named “renv_demo.R” & run it:
Check the new renv.lock file
You have now a reproducible environment that can be run on different machines!

### Share with Others

Create a new project named “new_renv_demo”
BUT do NOT include a renv as it will be created manually.

- Copy the renv.lock and R script files to the new project.
- Try to run the R script. What happens?
- Run the following “renv::init()” command and choose the option 1:
- Run the script again

What happens if you have dozens of scripts and a complicated project structure with several folders?

- Git is a version control system to test and share code. It can also be used as a “back-up” system. It must be installed on the computer.
- Git is a “framework” and code can be shared using a platform such as GitHub or GitLab. An account must be created. It can follow you for your whole professional life.
- A project is shared on an online repository (a.k.a. repo) using Git

## Interface

### Créer une interface utilisateur (UI)

#### fluidPage

Function  to ***display app*** in browser window.
Scales components in real time to fill avaible browser window width.
Add elements inside to ***lay out*** UI.
add a comma “,” between EACH element.
Ajouter des éléments HTML avec les fonctions « tag » (tag functions).
Créer une interface utilisateur (IU) avec les fonctions « fluidPage », « titlePanel » et « sidebarLayout »function to create a sidebar panel.

#### widget

Is a web element that a user can interact with.
When a user changes the widget, the value will change as well.
Input and output widgets.
Add widget to sidebar and/or main panels.

Create a ``fluidRow()`` element to contain the widget.
Use ``column()`` to add widgets across several columns, but on the same line.
Several widgets can be added to the same column.

- ``inputID`` = “” :ame of the widget (a string): its unique ID.
- ``label`` = “” :Label of the widget (a string): the text displayed in the app.
- Initial values.
- Ranges.
- Increments.

## Variable

### Expretion reactive

Where they are placed will determine how many times they are run (or re-run). This will in turn affect the performance of the app.

Limit what gets re-run by using reactive
expressions:

- Uses an input widget and return a value.
- Value updated whenever widget changes.
- Uses the ``reactive({})`` function.

Initial value ***cached in computer’s memory*** until it is needed again unless the widget’s value is changed by the user.

Reactive expressions take ``input`` value from the “server” function, or values from other reactive expressions.  
Only call reactive ***expressions from within other reactive*** expressions or “render*” functions.

#### observe

Creates a ***reactive observer***, which is a piece of code that runs every time one of the output changes.  
***Yields no output value***.  
***Cannot be used as an input to other*** reactive expressions.
Les fonctions ``observeEvent`` et ``eventReactive`` permettent de créer un flux réactif d’actions basé sur des évènements créés par l’utilisateur. » ont besoin d’être déclenchées explicitement.


#### Other

- “plotlyOutput/renderPlotly” for graphs and tables.
- “DTOutput/renderDT” for data tables.

## Annex

### HTML content

to structure the app layout

### Web

concour [kaggle]()
[lien](https://github.com/awesomedata/axesom-public-dataset)
<https://shiny.posit.co/r/articles/build/html-tags/>
<https://shiny.posit.co/r/articles/build/tag-glossary/>
<https://www.w3schools.com/tags/tag_hn.asp> (HTML tag attributes)

### Devoire

trouver une trame
utiliter
mise en ligne
explication
presentation
