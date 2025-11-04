# Git Commands 

## Summary 

This document is for git commands that will be useful for class.
- Most common used commands 
- Will get you through most of github
- Can be used on windows, Linux, and Mac    
### Basic commands 

**git status** = checking the current state of the repository 
**git add <filename>** = Adds the file to be included for your repo
    EX: git add file1.sh
**git add . ** = Adds all the files and lines that are new for the repo
**git commit -m "<texy>"** = Adds a commit message for the new files and lines 
    EX: git commit -m "adding new file"
**git push origin <branchname>** = updates your github repo with your changes 
    EX: git push otihin main 

### igf changes are made on the github repo instead of the local repo 

any changes made up there need to reflect your local repository. if theres and differences, you will run into merge conflicts 

**git fetch origin** = fetches updates and merges the into your local repo 
