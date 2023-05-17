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
echo 041 create a js file within the folder
touch index.js
echo 042 create a gitignore file 
touch .gitignore
echo 043 list elements within the folder
ls
echo 044 use ls --help to see the options of ls
ls --help
echo 045 use ls -a to list hidden files
ls -a
echo 046 it seems to be a . folder so use cd to move to it although its the current folder youre currently in
cd .
echo 047 create background.jpg with touch in the current folder
touch background.jpg
echo 048 create header.png image with touch in the current folder
touch header.png
echo 049 create a footer image footer.jpeg with touch
touch footer.jpeg
echo 050 list all elements in the current folder
ls
echo 051 create a font file roboto.font with touch
touch roboto.font
echo 052 create a font file lato.font with touch
touch lato.font
echo 053 create a font file menlo.font with touch
touch menlo.font
echo 054 list all new files in the given folder
ls
echo 055 create new svg file CodeAlly.svg with touch
touch CodeAlly.svg
echo 056 create new svg CodeRoad.svg with touch
touch codeRoad.svg
echo 057 create new svg file freeCodeCamp.svg with touch
touch freeCodeCamp.svg
echo 058 list the newly created files
ls
echo 059 generate a new folder images to store all the newly created images
mkdir images/
echo 060 list the contents in the folder to make sure the newly created folder is there
ls
echo 061 copy the images in the images folder
cp background.jpg images/
echo 062 move to the images directory
cd images/
echo 063 list all files in the images folder to see if the image is there
ls
echo 064 move to the prevous folder
cd ..
echo 065 list all elements in the current file
ls
echo 066 use rm to drop the recently copied image
rm background.jpg
echo 067 list the elements to se if the image is removed
ls
echo 068 copy header.png to the images folder
cp header.png images/
echo 069 copy footer.jpeg to the images folder
cp footer.jpeg images/
echo 070 all the images should be copied so lets move folders to check it
cd images/