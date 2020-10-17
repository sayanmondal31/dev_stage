## STEP 1

create project/files through your IDE(Integrated Development Environment).

## STEP 2

Open Terminal from your IDE or system terminal and locate your project folder where you have 
all your files.


## STEP 3

first you have to create an empty local repository where all your all your files will be uploaded.

1. `git init`  --> 🧺 empty local repo created.

**first you have to initialize git to your folder,this should be your local repo**
**where all files will be stored locally.**


2. `git add .`  --> All files are ready to add to local repo  (📄2 or more) --> 🧺 
 
   or 

  `git add [filename.ext]` --> perticular file is ready to add to local repo 📄 --> 🧺

**After adding your files you should write a message what you did.**
**Example : git commit -m "UI update" or git commit -m "connect database".**

*Make sure when you are writing a commit message that should be in present form.*


3. `git commit -m "your message"` --> record updated to your local repo  ⬆️🧺

4. `git remote add origin ‘url’`  --> connect local repo with git server 🧺🔗🌐

**Okey you’ve done all of the initial setups now you want to push that local repo to github server.**
**For that write this command.**
*Example : for my case*
*git remote add origin https://github.com/sayanmondal31/test.git*

5. `git push -u origin master`  ->🌐

**After setting the url where you want to store,push your local repo with this command.**

**And it’s completed ...you go to your repo … refresh your browser and voila ,** 
**you can see all of your files there.**

6. `git status` 

**This command help to tell either your files are ready to commit or not.**

7. `git log` 📥 + 🌐

**what you have done in previous**











