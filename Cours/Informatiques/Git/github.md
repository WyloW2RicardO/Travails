This method is preferred if there are no local files yet. Create a new repository:

1. Choose a repository name, e.g.
“renv_demo”.
1. Add a short description.
1. Choose the repo to be public or private.
1. Tick the box to add a “README” file.
1. Choose the “.gitignore” template as Rspecific.
1. Choose a licence type (optional)

The “README” file (without extension) is used to give an overview of the project. It can describe the aim of the project and the methods used.

- The “.gitignore” file may contain a list of files and folders. These will NOT be synchronised to the remote repo.
- Note: it is good practice to add the “.git” and “renv” folders to the “.gitgnore” file. That way, they are not uploaded to the remote repo since they are not important for the users. These must be added manually.

Go into a folder where you will keep your data projects, e.g.
“C:/data_projects”.
● Open a GitBash console from there (right click with mouse inside 
the folder).
● Type the following command:
> git clone https://github.com/<user_name>/<repo_name>.git
● The repo was cloned locally
from the online repository
(a.k.a. remote repo)

Go into a folder where you will keep your data projects, e.g.
>“C:/data_projects”.

- Open a GitBash console from there (right click with mouse inside the folder).
- Type the following command:
> git clone https://github.com/<user_name>/<repo_name>.git
- The repo was cloned locally
from the online repository
(a.k.a. remote repo).

Copy the files to share inside the cloned repo folder.
 Open a GitBash terminal from INSIDE the project folder to:

1. Check the status of the file (if they are “tracked”, i.e. if they need to be synchronised).
> git status
1. Stage the changes (yes, a space before the dot is important)
> git add .
1. Commit the changes (include a message).
> git commit –m “initial commit”
1. Push the changes to the origin (i.e. the online repository).
> git push

- Your program is now reproducible & shareable!
- Note: every time a piece of code is changed, the modifications are recorded by Git. It must be committed and pushed to the remote repository.