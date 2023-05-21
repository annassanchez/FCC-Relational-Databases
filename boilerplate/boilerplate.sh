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
touch styles.css
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
echo 071 list elements in folder 
ls
echo 072 go back to the website folder
cd ..
echo 073 list elements in the website folder to know which ones you need to remove
ls
echo 074 remove header.png from website folder, as is has been copied to the images folder
rm header.png
echo 075 remove footer.jpg from website folder
rm footer.jpg
echo 076 list contents from the website folder
ls
echo 077 to switch extensions from already created files use mv. change roboto.font to roboto.woff
mv roboto.font roboto.woff
echo 078 list elements in website folder to see if the extension changed
ls
echo 079 change the extension from lato.font to lato.ttf with mv
mv lato.font lato.ttf
echo 080 change the extension from menlo.font to mento.otf with mv
mv menlo.font menlo.otf
echo 081 list elements in the folder to see the changes
ls
echo 082 create a fonts folder
mkdir fonts/
echo 083 list elements from the website folder to see the newly created folder
ls
echo 084 use mv to move the font file roboto.woff to the fonts folder
mv roboto.woff fonts/
echo 085 you can use find to see the file tree
find .
echo 086 use mv to move the lato.ttf file to the fonts folder
mv lato.ttf fonts/
echo 087 use mv to move the mento.otf file to the fonts folder
mv menlo.otf fonts/
echo 088 use find to list the whole file tree and make sure they got moved
find .
echo 089 create a new folder called client in the wbsite folder 
mkdir client/
echo 090 create a new folder within the folder client created
mkdir client/src/
echo 091 move index.html to client/src
mv index.html client/src/
echo 092 use find to view the file tree
find .
echo 093 use mv to move index.js to client/src
mv index.js client/src/
echo 094 use mv to move styles.css to client/src
mv styles.css client/src/
echo 095 use find to display the file tree
find . 
echo 096 use find folder/ to display the tree of a different folder
find client/
echo 097 chek finds help
find . --help
echo 098 use find -name to search for something
find . -name index.html
echo 099 use find -name to seek the styles.css file
find . -name styles.css
echo 100 find src folder with find -name
find . -name 'src/'
echo 101 use find to see the folder tree
find .
echo 102 use cd to change into the client folder
cd client/
echo 103 use mkdir to create a new directory named assets in the client folder
mkdir assets
echo 104 use cd to move to the assets folder
cd assets/
echo 105 use mkdir to create an images folder within the assets one
mkdir images/
echo 106 use cd to move to the images folder
cd images/
echo 107 you eant the images on this folder so use touch to create the background.jpg image
touch background.jpg
echo 108 wait! the images are already created, so you need to use cd to go three folders back
cd ../../..
echo 109 go to the original images folder with cd
cd images/
echo 110 list the images in the given folder
ls
echo 111 first move header.png to the wbsite folder use mv to move the to the ../ folder
mv header.png ../
echo 112 list the elements on the images folder
ls
echo 113 go back to the website folder with cd
cd ../
echo 114 list whats within the website folder
ls
echo 115 use find to search for the images folder, to see the file path
find . -name images
echo 116 as there are two images folders, move header.png to the one that has the longer path
mv header.png client/assets/images/
echo 117 use find to search for the header.png image
find . -name header.png
echo 118 lets use find to find the footer.jpeg image to move it to the new images folder
find . -name footer.jpeg
echo 119 its in the original images folder so use the path from the root folder to move it to the new one
mv images/footer.jpeg client/assets/images/
echo 120 use find without flags to see that the images are in the mew folder
find .
echo 121 use rmdir to remove the old images folder
rmdir images/
echo 122 the directory is not empty so first you might need to remove the background.jpg image with rm
rm images/background.jpg
echo 123 use rmdir to remove the images folder
rmdir images/
echo 124 list all elements in the website folder to see if the folder is finally removed
ls
echo 125 create a new icons folder within client/assets/ folder
mkdir client/assets/icons/
echo 126 use mv to move CodeAlly.svg to the new icons folder
mv CodeAlly.svg client/assets/icons/
echo 127 view the file tree of the website folder and make sure it moved
find .
echo 128 use mv to move the codeRoad.svg to the new icons folder
mv CodeRoad.svg client/assets/icons/
echo 129 use mv to move the freeCodeCamp.svg to the icons folder
mv freeCodeCamp.svg client/assets/icons/
echo 130 use find to see the file tree
find .
echo 131 make a new directory for the fonts with mkdir within the clients/assets folder
mkdir client/assets/fonts
echo 132 you want some different fonts for the website so use touch and create new roboto-bold.woff font file within the fonts folder
touch client/assets/fonts/roboto-bold.woff
echo 133 create a new file for the roboto-light.woff font dile in the fonts folder
touch client/assets/fonts/roboto-light.woff
echo 134 view the file tree of the fonts folder to see if the files are there 
find . client/assets/fonts/
echo 135 use touch to create the latto-bold.ttf font in the client/assets/fonts folder
touch client/assets/fonts/lato-bold.ttf
echo 136 touch lato-light.ttf file in the client/assets/fonts folder
touch client/assets/fonts/lato-light.ttf
echo 137 use infd to see the filse tree and check that the files are located on the specified folder
find .
echo 138 you want to remove the original fonts folder but as it is not empty, you cant use the rmdir command. lets look at rm help
rm --help
echo 139 the rm -r flag removes directories and their contents recursively, removing the folder and everyting within it
rm -r fonts/
echo 140 use ls to list the root folder and see if the fonts folder is gone
ls
echo 141 create a new file called package.json within the website folder with touch
touch package.json
echo 142 create server.js with touch in the website folder
touch server.js
echo 143 create a readme.md file with touch
touch README.md 
echo 144 list the content of the folder to see that the files are there
ls
echo 145 the boilerplate is complete so lets print a couple of things in the terminal
echo Yay!
echo 146 another echo 
echo I finished the boilerplate!
echo 147 another echo
echo one more thing...
echo 148 you can print into a file instead of the terminal with echo text >> filename. add a message to the README.md file
echo I made this boilerplate >> README.md
echo 149 use more to check the README.md file and see if the data was added
more README.md
echo 150 add a new line to the README.md file with echo
echo from the command line >> README.md
echo 151 check the result with more
more README.md
echo 152 add more info to the README.md file
echo for the freeCodeCamp bash lessons >> README.md
echo 153 use more to check the README file
more README.md
echo 154 use cd to move to the project folder
cd ../
echo 155 list whats within the project folder
ls 
echo 156 use m to rename the website folder to website-boilerplate
mv website website-boilerplate
echo 157 use ls to list the folder contents and see if the folder names changed
ls
echo 158 use cp --help to see how to make a copy of a folder
cp --help
echo 159 cp --recursive allows to copy the whole folder into a new one 
cp -R website-boilerplate toms-website
echo 160 list all the files within the project folder
ls
echo 161 use find to see toms-website tree
find toms-website
echo 162 use find to see website-boilerplate tree
find website-boilerplate
echo 163 clear the terminal
clear
echo 164 echo goodbye in the terminal 
echo goodbye terminal
echo 165 exit the terminal
exit