# ENR261
This is a template repository containing the default structure and initial material for the ENR261 course at MCC.
## Create Your Repository
### Windows Users, Download Portable Git
By using portable git, you can store the program on your thumb drive and always have it available. Installing is easy:
1. Download portable git (here's the 64-bit windows version) https://github.com/git-for-windows/git/releases/download/v2.39.1.windows.1/PortableGit-2.39.1-64-bit.7z.exe
2. Run this executable and simply identify a folder on your thumb drive when prompted. Generally the base (root) folder is preferable.

### Create a Copy of the Template Repository
Now that you have git installed on your thumb drive, the next step is getting a copy of this repository. GitHub makes 
that super easy with the click of a button.
1. You will have to have an account so you can set that up on [www.GitHub.com](www.GitHub.com)
1. Navigate to the desired repository [www.GitHub.com/gberl001/SP23-ENR261-180](www.GitHub.com/gberl001/SP23-ENR261-180)
1. Click the green "Use this template" button in the upper right portion of the layout, and select "Create a new repository".
1. At the prompt you will be asked to give your repository a name, please name it `SP23-ENR261-180-LASTNAME` and replace the `LASTNAME` with your last name
   1. As an example, my repository would be named `SP23-ENR261-180-BERL`.
1. Finally, be sure to select `private` and then click the green "Create repository from template" button

### Add Your Instructor as a Collaborator
So that I can read your submissions and update your grade sheet, I will need to be granted access to your repository.
1. Click the Settings button toward the upper middle of the screen.
1. Under the `access` section, select `collaborators`
1. Click "Add people" and find `gberl001`, you should see the name `Geoff Berl` and a picture of me.
1. Select "Invite" and add me to the repository.

## Let's Start With a Story
If you're new to `git`, then a lot of the terminology and processes are going to be foreign so here's a short, real 
world analogy on how git works. Pay attention to the words formatted like `this`

Geoff wants to write a book, he's an old soul and loves writing on a typewriter. His editor insists that she have 
access to see his work as he completes it. She tells him, "Each time you finish a portion of work, just `add` the papers 
to your `local` computer by scanning them, `commit` to me that you're done making changes for now, by adding those scans 
to a zip file and name the zip with a small `message` like `finished intro to ch1`.zip, and upload or `push` the files 
to Google Drive, so I can see them. Oh, and by the way, I may edit some of the files that you `push` so be sure to 
download or `pull` the files from Google Drive, so you have the latest. You wouldn't want to go editing something I 
already reviewed without seeing what I edited first right?" 

Hopefully, this story helps a little, in summary, Geoff always has to check Google Drive for updates first by `pull`ing. 
Then type up any of his new work, `add` them to his computer `commit` them with a `message` and `push` them up to Google 
Drive.

## Using Your Repository Locally
At this point, all of your files are stored on Github. In order to work on your files, you need to `clone` the code 
from Github onto your local computer (or thumb drive). Cloning can be thought of as downloading or copying but this is 
only done once. Imaging Geoff the writer's computer broke or he is using a different computer, he doesn't have any of 
the content on the computer, so, he has to initially download everything that exists just that one time to start with. 
In the future, he can just pull or download the new or changed files.

### Make a Local Clone
Unless you bring your cloned repository with you, such as on a flash drive, you will need to repeat this process on any 
new computer you use, in order to get access to your files to make changes.
1. Navigate to the folder where you extracted portable git.
1. Run the following program **git-bash.exe**
1. Run the following command (changing `YOUR_USERNAME` to your github username and update `LASTNAME` with your last name)

       git clone https://github.com/YOUR_USERNAME/SP23-ENR261-180-LASTNAME.git

1. You will be prompted to use an "authentication manager", accept the default and log into your Github account when prompted.
1. You will see some information printed to the screen as the repository is cloned.
1. After the process finishes, you should see a folder in that same portable git folder with the name of your repository 
as the folder name. This folder contains all the files from your Github "remote" repository and this folder is referred 
to as your "local" repository. Going forward, to use git on this local repository, after you run git-bash you'll have to 
navigate into this folder by running the following command (again, replace `LASTNAME`).

       cd SP23-ENR261-180-LASTNAME

**Tip:** You can type in the first part of the folder name like `sp23` and hit the `<tab>` key to have it autocomplete, for example:
```shell
cd SP23<tab>
```
This **c**hanges **d**irectory to the directory after `cd `. Once you do this you should see the text `(main)` at the 
end of your git-bash prompt which tells you that this is a repository, and you are on the `main` branch. We won't worry 
about branches so that's as far as we'll go on that topic unless of course you care to learn more.

### Secure and Share
The final step requires you to add your instructor as a "collaborator" so they can see your work.
1. Visit your repository and click the settings tab in the upper right
2. On the left, click the collaborators tab
3. Enter your instructor's username (gberl001) and click "add collaborator" so they can see your work.

## How To (git); _With Git Bash_
### Standard flow
The standard flow we will use for git is to **pull**, **add**, **commit**, and **push**
* **pull** will update your local repository with any changes from remote (like if I update your grades sheet)
* **add** after you make changes, you will want to add any new files that git doesn't know about (it only tracks files you tell it to)
* **commit** will save your work, now git will keep a history of any changes made such as files deleted, added, or changed.
* **push** will update your remote repository, this will update github with all the changes you made on your computer.

First and foremost, you should always be sure you have the latest files downloaded from your remote repository. If you 
made changes on a different computer or someone else made changes, this command will download any new changes that you 
don't have locally. For example, when your instructor updates your grade book, `git pull` will update your local copy 
with those changes. 

**WARNING** If you do not pull before making changes, you can severely confuse git and cause headaches for yourself, 
ALWAYS pull before doing any work. 
```shell
git pull origin main
```

Git doesn't track changes for files unless you add them to git so your first step is to add files to git.
Generally, you wouldn't always add _all_ files but since this isn't a class on git, it's easier for you to simply add 
all files.
```shell
git add --all
```

Your next step is to tell git that you are done making changes (this is similar to saving a document you are working on).
```shell
git commit -m "Add some message here such as... Finished homework for Ch01, started homework for Ch02"
```

Now we want to make our files available in our remote repository (GitHub.com) so we `push` them up.
You don't necessarily need the `origin main` as that will be the default but it's a good idea to use it just to be clear. 
The terminology for this just means we want to push to the `main` branch on `origin` where `origin` means the original 
content up on GitHub.
```shell
git push origin main
```

## Got Questions?
Feel free to head on over to the [Discussions](https://github.com/gberl001/SP23-ENR261-180/discussions) to see what others have asked or ask a question yourself.