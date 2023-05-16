echo 000 hello terminal
echo 001 pwd tells the current owrking directory
pwd
echo 002 ls list whats inside a folder
ls
echo 003 cd switches the folder to cd name_folder
cd project/freeCodeCamp/
echo 004 print the current folder
pwd
echo 005 check the current path with ls
ls
echo 006 there are more folders in this folder - switch to test
cd test/
echo 007 check the current folder
pwd
echo 008 list the elements within the current folder
ls
echo 009 these are all files - go one folder back
cd ../
echo 010 test got removed from the prompt as you changed folder - list the elements in the current folder
ls
echo 011 see whats within the package.json file with more
more package.json
echo 012 it looks like a json object - clear the terminal with clear
clear
echo 013 list whats in this folder
ls
echo 014 switch into the node_modules folder
cd node_modules/
echo 015 list all elements within this folder
ls
echo 016 as there are lots of folders you can add a flag to ls -l that is for long list format
ls -l
echo 017 switch the folder to has
cd has/
echo 018 list the content in the has folder
ls
echo 019 there are a few files here - look at the readme.md
more README.md
echo 020 check the contents of the folder again
ls
echo 021 check the license file that doesnt have an axtension
more LICENSE-MIT
echo 022 clear all the results
clear
echo 023 list again the items in the folder
ls
echo 024 switch into src/ directory
cd src/
echo 025 view the full path
pwd
echo 026 list elements within this folder
ls
echo 027 check whats on the file with more
more index.js
echo 028 switch to the original has folder
cd ../
echo 029 switch to the node_modules folder
cd ../
echo 030 switch two folders prior to the project folder
cd ../../
echo 031 list all files in the project folder
ls
echo 032 clear the terminal
clear
echo 033 create a new folder called website with mkdir
mkdir website/
echo 034 list whats in the folder to make sute it got created
ls
echo 035 change the cd to website
cd website/
echo 036 list the contents on the folder 
ls
echo 037 as the folder is new, theres nothing in it use echo to print a message on the terminal
echo hello website
echo 038 create a html file index.html with touch
touch index.html
echo 039 create a css file styles.css with touch
touch styes.css
echo 040 list the contents on the folder
ls