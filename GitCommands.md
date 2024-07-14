Git Commands

## Getting Help
$ git help <verb>
$ man git-<verb>

E.g.
$ git help config

More concise help use the -h or --help option.
$ git add -h


## Configs
git config --list
git config <key>

If you want to check your configuration settings, you can use the git config --list command to list all the settings Git can find at that point

You may see keys more than once, because Git reads the same key from different files (/etc/gitconfig and ~/.gitconfig, for example). In this case, Git uses the last value for each unique key it sees.
You can also check what Git thinks a specific key’s value is by typing git config <key>

Setting Configs
$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com


## Initializing a Repository in an Existing Directory
Assuming my_project is not under version control.
$ cd /my_project
$ git init


## Start tracking files and do an initial commit
$ git add MySource.c
$ git add LICENSE
$ git commit -m 'initial project version'


## Checking the Status of Your Files
$ git status

Concise output
$ git status -s
$ git status --short


## Staging files
$ git add <file>

To stage it, you run the git add command. git add is a multipurpose command — you use it to begin tracking new files, to stage files, and to do other things like marking merge-conflicted files as resolved. It may be helpful to think of it more as “add precisely this content to the next commit” rather than “add this file to the project”


## Committing your changes
$ git commit -m 'my message'

Remember that anything that is still unstaged — any files you have created or modified that you haven’t run git add on since you edited them — won’t go into this commit. They will stay as modified files on your disk.
$ git commit


## Skipping the Staging Area
$ git commit -a -m 'my message'

If you want to skip the staging area, Git provides a simple shortcut. Adding the -a option to the git commit command makes Git automatically stage every file that is already tracked before doing the commit.


## Viewing the Commit History
$ git log


## Unstaging a Staged File
$ git reset HEAD <file>


## Unmodifying a Modified File
$ git checkout -- <file>


## Showing your remotes
$ git remote

To show URLs
$ git remote -v


## Fetching and Pulling from Your Remotes
$ git fetch <remote>

It’s important to note that the git fetch command only downloads the data to your local repository — it doesn’t automatically merge it with any of your work or modify what you’re currently working on. You have to merge it manually into your work when you’re ready.

$ git pull
If your current branch is set up to track a remote branch (see the next section and Git Branching for more information), you can use the git pull command to automatically fetch and then merge that remote branch into your current branch


## Pushing to Your Remotes
$ git push origin master


## Inspecting a Remote
$ git remote show <remote>


END
