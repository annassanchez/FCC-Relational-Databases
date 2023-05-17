# 01_learn bash by building a bolerplate

- 00_`echo`
    
    The `echo` command is used to display text in the terminal. Whatever you type after `echo` will be printed in the terminal.
    
    ```bash
    echo hello terminal
    ```
    
- 01_`pwd`
    
    What you see in the terminal below is a folder (or directory) on this machine. Type `pwd` into the terminal and press enter to see the path of the folder. `pwd` stands for "print working directory".
    
    ```bash
    pwd
    ```
    
- 02_`ls`
    
    The output tells you where the folder you are in is located. You are in the `project` folder, which is in the `CodeAlly` folder, which is in the `home` folder. Type `ls` into the terminal to see what's in this folder. `ls` stands for "list".
    
    ```bash
    ls
    ```
    
- 03_`cd`
    
    The output is showing everything in this folder. There's two folders here. You can use `cd <folder_name>` to go into a folder. `cd` stands for "change directory". Change to the `freeCodeCamp` directory.
    
    ```bash
    cd freeCodeCamp/
    ```
    
- 04_ `pwd`∫
    
    You are in the `freecodecamp` folder now. You may have noticed that the prompt changed to include it. Print the working directory of the `freeCodeCamp` folder to see the full path of where you are.
    ```bash
    pwd
    ```
    
- 05_ `ls`
    
    You can see the path of the `freeCodeCamp` folder. It's in the `project` folder you were just in. List the contents of the `freeCodeCamp` folder to see what's here.
    
    ```bash
    ls
    ```
    
- 06_ `cd`
    
    There's two folders and three files here. The folders are blue and the files include their extension. Next, change to that `test` directory.
    
    ```bash
    cd test/
    ```
    
- 07_ `pwd`
    
    You can see you are in the `test` folder now. It shows `test` in the prompt. Print the full path of this directory. Remember that "folder" and "directory" are the same thing.
    
    ```bash
    pwd
    ```
    
- 08_ `ls`
    
    That's the path to the `test` folder, it's in the `freeCodeCamp` folder. **List** the contents of this folder.
    
    ```bash
    ls
    ```
    
- 09_ `cd ..`
    
    These are all files. There's no more folders to go into here. You can use `cd ..` to go back a folder level. The two dots will take you back one level. Go back to the `freeCodeCamp` folder.
    
    ```bash
    cd ..
    ```
    
- 10_ `ls`
    
    `test` got removed from the prompt since you left that folder and you're back in the `freeCodeCamp` folder. List the contents of what's here to remind yourself.
    
    ```bash
    ls
    ```
    
- 11_ `more`
    
    There's the `test` folder you were just in. You can see what's in a file with `more <filename>`. Use it to view what's in the `package.json` file.
    
    ```bash
    more package.json
    ```
    
- 12_ `clear`
    
    It looks like a JSON object. You can empty the terminal with `clear`. The terminal looks a little cluttered, why don't you clear it.
    
    ```bash
    clear
    ```
    
- 13_ `ls`
    
    Now you have a fresh screen 😄 List what's in here again.
    
    ```bash
    ls
    ```
    
- 14_ `cd`
    
    You checked out the `test` folder and the `package.json` file. What next? Why don't you go into that `node_modules` directory.
    
    ```bash
    cd node_modules/
    ```
    
- 15_ `ls`
    
    Now the prompt includes `node_modules` since that's where you are. List what's in the folder.
    
    ```bash
    ls
    ```
    
- 16_ `ls -l`
    
    That's a lot of folders. You can add a **flag** to a command to use it different ways like this: `ls <flag>`. List the contents of the `node_modules` folder in "long list format". Do that by adding the `-l` flag to the "list" command.
    
    ```bash
    ls -l
    ```
    
- 17_ `cd has/` 
    
    It is showing more details about each item in here and it's a little easier to read. One of the folders is named `has`, why don't you change into it.
    
    ```bash
    cd has/
    ```
    
- 18_ `ls`
    
    You are now in the `has` folder. List its contents.
    
    ```bash
    ls
    ```
    
- 19_ `more`
    
    There's a few files and folders here. Can you tell the difference? Take a look at **more** of that `README.md` file.
    
    ```bash
    more README.md
    ```
    
- 20_ `ls`
    
    Nothing noteworthy in there. You can't see what's in the here anymore, list the contents again.
    
    ```bash
    ls
    ```
    
- 21_ `more`
    
    That one file doesn't appear to have an extension. Strange. Take a look at **more** of the that "license" file that doesn't show an extension.
    
    ```bash
    more LICENSE-MIT
    ```
    
- 22_ `clear`
    
    Pretend you read all that. It looks a little messy in here again so why don't you clear the terminal.
    
    ```bash
    clear
    ```
    
- 23_ `ls`
    
    Better. Remind yourself what's in here with the list command.
    
    ```bash
    ls
    ```
    
- 24_ `cd`
    
    Go into that `src` directory to see what you can find in there.
    
    ```bash
    cd src/
    ```
    
- 25_ `pwd`
    
    View the full path of this folder.
    
    ```bash
    pwd
    ```
    
- 26_ `ls`
    
    Getting deeper still. You can see that each new folder has a `/` in front of it. Take a look at what's in this folder.
    
    ```bash
    ls
    ```
    
- 27_ `more`
    
    Only one file here. Show me what's in it with `more`.
    
    ```bash
    more index.js
    ```
    
- 28_ `cd`
    
    It's some JavaScript 😄 I think you've fooled around enough. Why don't you navigate out of here. Change back to the `has` directory.
    
    ```bash
    cd ..
    ```
    
- 29_ `cd`
    
    You're getting pretty good. Change back to the `node_modules` directory.
    
    ```bash
    cd ..
    ```
    
- 30_ `cd ../..`
    
    You can go back two folders with `cd ../..`. Each set of dots represents another folder level. Go back to the `project` directory from the `node_modules` directory.
    
    ```bash
    cd ../..
    ```
    
- 31_ `ls`
    
    You are back in the `project` folder where you started. List what's in here again.
    
    ```bash
    ls
    ```
    
- 32_ `clear`
    
    That's right. Why don't you get a fresh start by clearing the terminal.
    
    ```bash
    clear
    ```
    
- 33_ `mkdir`
    
    You will be making a website boilerplate. You can make a new folder with `mkdir <folder_name>`. `mkdir` stands for "make directory". Make a `website` directory in this `project` folder. Remember that "directory" and "folder" mean the same thing.
    
    ```bash
    mkdir website/
    ```
    
- 34_ `ls`
    
    List what's here to make sure it got created.
    
    ```bash
    ls
    ```
    
- 35_ `cd`
    
    It worked. The website files will be in the new directory. Change to the `website` directory so you can start creating them.
    
    ```bash
    cd website/
    ```
    
- 36_ `ls`
    
    List the contents of the `website` folder.
    
    ```bash
    ls
    ```
    
- 37_ `echo`
    
    It's brand new, there's nothing in it yet. The `echo` command lets you print anything to the terminal. You used it in the 
    first lesson. Just type what you want to print after it. Use it to print `hello website` to the terminal.
    
    ```bash
    echo hello website
    ```
    
- 38_ `touch`
    
    Websites usually have an `index.html` file. You can use `touch <filename>` to create a new file. Create `index.html` in the `website` folder.
    
    ```bash
    touch index.html
    ```
    
- 39_ `touch`
    
    They usually have a CSS file as well. Create `styles.css` in the `website` folder using the same method.
    
    ```bash
    touch styles.css
    ```
    
- 40_ `ls`
    
    List the contents of the `website` folder to make sure they got created.
    
    ```bash
    ls
    ```
    
- 41_ `touch`
    
    There they are. Next is a JavaScript file. Create `index.js` in the `website` folder with the method you have been using.
    
    ```bash
    touch index.js
    ```
    
- 42_ `touch`
    
    You might turn this into a git repository. Create `.gitignore` in the `website` folder with the same method.
    
    ```bash
    touch .gitignore
    ```
    
- 43_ `ls`
    
    List the contents of the `website` folder to see your new files.
    
    ```bash
    ls
    ```
    
- 44_ `ls --help`
    
    There's three files, but where's the `.gitignore` file? I think it's hidden. Most commands have a `--help` flag to show what the command can do. Display the "help" menu for the `ls` command. Here's an example: `command <flag>`
    
    ```bash
    ls --help
    ```
    
- 45_ `ls -a`
    
    Scroll through the menu to see the flags that go with `ls`. The flag you are looking for is `--all`, or `-a` for short. List **all** the contents of the `website` folder using the correct flag.
    
    ```bash
    ls -a
    ```
    
- 46_ `cd .`
    
    There's the hidden file. Do you see it? It didn't display before. It also includes `.` and `..`. You used `cd ..` to go back a folder earlier. Change to the `.` directory.
    
    ```bash
    cd .
    ```
    
- 47_ `touch`
    
    You didn't go anywhere. The `.` takes you to the folder you are in, and `..` takes you back, or up, a folder. Websites need some images. Create `background.jpg` in the `website` folder.
    
    ```bash
    touch background.jpg
    ```
    
- 48_ `touch`
    
    Next, add a header image. Create `header.png` in the `website` folder.
    
    ```bash
    touch header.png
    ```
    
- 49_ `touch`
    
    Finally, create `footer.jpeg` in the `website` folder.
    
    ```bash
    touch footer.jpeg
    ```
    
- 50_ `ls`
    
    Use the **list** command to check out the images you just added.
    
    ```bash
    ls
    ```
    
- 51_ `touch`
    
    Looks like images show up in pink. There's also three fonts to use for the website. The first one is "roboto". Create `roboto.font` in the `website` folder.
    
    ```bash
    touch roboto.font
    ```
    
- 52_ `touch`
    
    The next one is "lato". Create `lato.font` in the `website` folder.
    
    ```bash
    touch lato.font
    ```
    
- 53_ `touch`
    
    Lastly, create `menlo.font` in the `website` folder.
    
    ```bash
    touch menlo.font
    ```
    
- 54_ `ls`
    
    List the contents of this folder to see your new font files.
    
    ```bash
    ls
    ```
    
- 55_ `touch`
    
    Your three font files are there. There's three icons for the website as well. Create `CodeAlly.svg` in the `website` folder.
    
    ```bash
    touch CodeAlly.svg
    ```
    
- 56_ `touch`
    
    Next, create `CodeRoad.svg` in the `website` folder.
    
    ```bash
    touch CodeRoad.svg
    ```
    
- 57_ `touch`
    
    Finally, create `freeCodeCamp.svg` in the `website` folder.
    
    ```bash
    touch freeCodeCamp.svg
    ```
    
- 58_ `ls`
    
    Check out the new icons you just added by listing the contents of the folder they are in.
    
    ```bash
    ls
    ```
    
- 59_ `mkdir`
    
    The icons are pink as well. I think the images should go in a separate folder to clean it up a little. Make an `images` directory in the `website` folder to put them in.
    
    ```bash
    mkdir images
    ```
    
- 60_ `ls`
    
    List the contents of the `website` folder to make sure your new folder is there.
    
    ```bash
    ls
    ```
    
- 61_ `cp`
    
    There's your new `images` folder. It's blue. You can copy a file with `cp <file> <destination>`. `cp` stands for "copy". Copy `background.jpg` to your `images` folder.
    
    ```bash
    cp background.jpg images/
    ```
    
- 62_
    
    Better make sure it worked. Change to the `images` directory.
    
    ```bash
    cd images/
    ```
    
- 63_ `ls`
     
    List the contents to see if `background.jpg` is here.
    
    ```bash
    ls
    ```
    
- 64_ `cd`
    
    There it is. Looks like the copy worked. Change back to the `website` directory so you can copy the other ones.
    
    ```bash
    cd ..
    ```
    
- 65_ `ls`
    
    Remind yourself of the files here by listing the contents.
    
    ```bash
    ls
    ```
    
- 66_ `rm`
    
    You copied the background image to the `images` folder so you don't need the one here anymore. You can remove a file with `rm <filename>`. Remove `background.jpg` from the `website` folder.
    
    ```bash
    rm background.jpg
    ```
    
- 67_ `ls`
    
    List the contents to make sure it's gone.
    
    ```bash
    ls
    ```
    
- 68_ `cp`
    
    Okay, it's gone. Next, copy `header.png` to the `images` folder.
    
    ```bash
    cp header.png images/
    ```
    
- 69_ `cp`
    
    Last, copy the "footer" image to the `images` folder.
    
    ```bash
    cp footer.jpeg images/
    ```
    
- 70_ `cd`
    
    All the images should be copied over. Change to the `images` directory so you can make sure.
    
    ```bash
    cd images/
    ```
    
- 72_
    
    Check if the images are here by listing the contents.
    
    ```bash
    ls
    ```
    
- 73_
    
    They all made it here. Go back to the `website` folder so you can delete the original files.
    
    ```bash
    cd ..
    ```
    
- 74_
    
    List the contents to remind yourself of the filenames to delete.
    
    ```bash
    ls
    ```
    
- 75_ `rm`
    
    There's two that you don't need anymore. Remove the "header" image file from the `website` folder since you copied to the images folder.
    
    ```bash
    rm header.png
    ```
    
- 76_
    
    It should be gone. Remove the "footer" image from the `website` folder as well.
    
    ```bash
    rm footer.jpeg
    ```
    
- 77_
    
    List the contents of the `website` folder to check if they are gone.
    
    ```bash
    ls
    ```
    
- 78_ `mv`
    
    Looks like they're all deleted. There was a mistake with the extensions for the font files. You can rename them with `mv` like this: `mv <filename> <new_filename>`. `mv` stands for "move", it can **rename or move** something. Rename `roboto.font` to `roboto.woff`.
    
    ```bash
    mv roboto.font roboto.woff
    ```
    
- 79_
    
    Use "list" to check if it worked.
    
    ```bash
    ls
    ```
    
- 80_
    
    Do you see the "roboto" font? The rename worked. Next, rename the "lato" font file to `lato.ttf`.
    
    ```bash
    mv lato.font lato.ttf
    ```
    
- 81_
    
    Lastly, rename the "menlo" font to `menlo.otf`.
    
    ```bash
    mv menlo.font menlo.otf
    ```
    
- 82_
    
    Use the "list" command to make sure those last two got renamed.
    
    ```bash
    ls
    ```
    
- 83_
    
    Take a look at the files to make sure they got renamed. Those font files could be organized into a folder as well. Make a `fonts` directory in the `website` folder to put them in.
    
    ```bash
    mkdir fonts/
    ```
    
- 84_
    
    List the contents of the `website` folder to make sure your new folder is there.
    
    ```bash
    ls
    ```
    
- 85_
    
    See it? You renamed the font files with `mv`, you can also move files with it. Move the "roboto" font to the new `fonts` folder. Here's an example: `mv <file> <destination>`.
    
    ```bash
    mv roboto.woff fonts/
    ```
    
- 86_ `find`
    
    You can use `find` to find things or view a file tree. Enter `find` to view the file tree of the `website` folder to see all the files and folders within it.
    
    ```bash
    find
    ```
    
- 87_
    
    You can see everything in this `website` folder and its descendant folders. Notice that they all start with `./` to represent this folder. You can see that your font moved to the `fonts` folder. Next, move the "lato" font to the `fonts` folder.
    
    ```bash
    mv lato.ttf fonts/
    ```
    
- 88_
    
    There's one more font to move. Move the "menlo" font to the `fonts` folder.
    
    ```bash
    mv menlo.otf fonts/
    ```
    
- 89_
    
    Use `find` again to list the whole file tree and make sure those two got moved.
    
    ```bash
    find
    ```
    
- 90_
    
    Yes, you can see them all in the `fonts` folder. Let's organize some more. Make a `client` directory in the `website` folder for the client side files.
    
    ```bash
    mkdir client/
    ```
    
- 91_
    
    You can make a folder in that `client` folder from here by adding it to the path like this: `mkdir client/<new_folder_name>`. Make a `src` directory in the `client` folder from here.
    
    ```bash
    mkdir client/src
    ```
    
- 92_
    
    You can move files all the way across the system from here with the right path. Move `index.html` to the `client/src` folder from here.
    
    ```bash
    mv index.html client/src/
    ```
    
- 93_
    
    Use `find` to view the file tree and make sure it moved.
    
    ```bash
    find
    ```
    
- 94_
    
    Can you see the `index.html` file in your new `src` folder? Looks like it moved 😄 There's some more files that can go in the `src` folder. Move `index.js` to it from here.
    
    ```bash
    mv index.js client/src/
    ```
    
- 95_
    
    Last is the CSS file. Move `styles.css` to the `src` folder.
    
    ```bash
    mv styles.css client/src/
    ```
    
- 96_
    
    Seems like you can do anything right from here. Take another look at the tree with `find`.
    
    ```bash
    find
    ```
    
- 97_
    
    Things are looking more organized 😄 You can use `find <folder_name>` to display the tree of a different folder. View the file tree of the `client` folder from the `website` folder.
    
    ```bash
    find client/
    ```
    
- 98_
    
    Now you just see what's in the `client` folder. What else can `find` do? View the "help" menu of the `find` command to look around.
    
    ```bash
    find --help
    ```
    
- 99_
    
    The menu isn't very pretty, but there's a `-name` flag in there. You can use it to search for something with `find -name <filename>`. Use `find` with the `-name` flag to search for `index.html`.
    
    ```bash
    find -name index.html
    ```
    
- 100_
    
    It shows you where that file is. Using the same command, find where the `styles.css` file is.
    
    ```bash
    find -name styles.css
    ```
    
- 101_
    
    You can search for folders with it, as well. Using the same command and flag, find the `src` folder.
    
    ```bash
    find -name src
    ```
    
- 102_
    
    😄 View the file tree of the `website` folder to see what else you need to do.
    
    ```bash
    find
    ```
    
- 103_
    
    What's next? More organizing! You should put all the assets in one spot. Change into the `client` folder.
    
    ```bash
    cd client/
    ```
    
- 104_
    
    Make a new directory named `assets` in the `client` folder.
    
    ```bash
    mkdir assets
    ```
    
- 105_
    
    Change into the new `assets` folder.
    
    ```bash
    cd assets/
    ```
    
- 106_
    
    All the images and other assets can go here. Make an `images` directory in the `assets` folder for all the images.
    
    ```bash
    mkdir images/
    ```
    
- 107_
    
    Go to your new `images` folder.
    
    ```bash
    cd images/
    ```
    
- 108_
    
    You want the images here. Create `background.jpg` in this folder.
    
    ```bash
    touch background.jpg
    ```
    
- 109_
    
    Wait. You don't need to recreate them. You can just move the other images here. Go back to the `website` folder from here. It's three folder back.
    
    ```bash
    cd ../../..
    ```
    
- 110_
    
    Now go to where the original images are. Change into the `images` folder.
    
    ```bash
    cd images/
    ```
    
- 111_
    
    List the contents of the `images` folder to see the files here.
    
    ```bash
    ls
    ```
    
- 112_
    
    Umm, first I think you should move them back to the website folder. Move `header.png` back to the `website` folder. The destination for the file is `..`
    
    ```bash
    mv header.png ../
    ```
    
- 113_
    
    List the contents of the `images` folder to see if it's gone.
    
    ```bash
    ls
    ```
    
- 114_
    
    It's gone. Go back to the `website` folder.
    
    ```bash
    cd ..
    ```
    
- 115_
    
    List what's here.
    
    ```bash
    ls
    ```
    
- 116_
    
    There's the file you just moved. Next, you will move it to the `client/assets/images` folder. First, use `find` with the correct flag to search for `images`.
    
    ```bash
    find -name images
    ```
    
- 117_
    
    There's your two image folders. Move `header.png` to the one with the longer path. Just use it as the destination to do so.
    
    ```bash
    mv header.png client/assets/images/
    ```
    
- 118_
    
    Use `find` to search for your `header.png` file and make sure it moved.
    
    ```bash
    find -name header.png
    ```
    
- 119_
    
    There it is. Right where you put it. Next, search for your `footer.jpeg` file so you can move that over there.
    
    ```bash
    find -name footer.jpeg
    ```
    
- 120_
    
    It's in the original `images` folder. You can **use that path** with the move command to move it. Move `footer.jpeg` to the `client/assets/images` folder while in the `website` folder.
    
    ```bash
    mv images/footer.jpeg client/assets/images/
    ```
    
- 121_
    
    View the file tree of this folder to make sure all your images are over in their new folder. Don't use any flags.
    
    ```bash
    find
    ```
    
- 122_ `rmdir`
    
    You don't need the old `images` folder anymore. You can use `rmdir <directory_name>` to remove a folder. `rmdir` stands for "remove directory". Try to remove the `images` folder with `rmdir`. Make sure it's the one in the `website` folder.
    
    ```bash
    rmdir images/
    ```
    
- 123_
    
    Directory not empty? Oh yeah, there's still the background image in there. Remove the background image file in the `images` folder from here. Make sure it's the one in the `website/images` folder.
    
    ```bash
    rm images/background.jpg
    ```
    
- 124_
    
    Try to remove the `images` folder again with `rmdir`. Make sure it's the one in the `website` folder.
    
    ```bash
    rmdir images/
    ```
    
- 125_
    
    I think it worked this time. List the contents to find out.
    
    ```bash
    ls
    ```
    
- 126_
    
    It worked, the `images` folder is gone. Make a new `icons` folder in your `assets` folder while in the `website` folder.
    
    ```bash
    mkdir client/assets/icons/
    ```
    
- 127_
    
    Move the `CodeAlly.svg` file to your new `icons` folder.
    
    ```bash
    mv CodeAlly.svg client/assets/icons/
    ```
    
- 128_
    
    View the file tree of the `website` folder and make sure it moved.
    
    ```bash
    find
    ```
    
- 129_
    
    Verify that the file moved to the `icons` folder. Next, move the "CodeRoad" file to your `icons` folder.
    
    ```bash
    mv CodeRoad.svg client/assets/icons/
    ```
    
- 130_
    
    Lastly, move the "freeCodeCamp" file to your `icons` folder.
    
    ```bash
    mv freeCodeCamp.svg client/assets/icons/
    ```
    
- 131_
    
    View the file tree and make sure the files moved.
    
    ```bash
    find
    ```
    
- 132_
    
    This looks much better. The three icons are now in the `icons` folder. Make a `fonts` folder in your `assets` folder from here for all the font files.
    
    ```bash
    mkdir client/assets/fonts
    ```
    
- 133_
    
    Turns out you want some different fonts for the website. From here, create `roboto-bold.woff` in your new `fonts` folder. You can put the path in front of the filename of where you want it to go.
    
    ```bash
    touch client/assets/fonts/roboto-bold.woff
    ```
    
- 134_
    
    Next, create `roboto-light.woff` in your new `fonts` folder from here.
    
    ```bash
    touch client/assets/fonts/roboto-light.woff
    ```
    
- 135_
    
    View the file tree of the `client/assets/fonts` folder from here to see if your new files are there.
    
    ```bash
    find client/assets/fonts/
    ```
    
- 136_
    
    Two more fonts to go. Create `lato-bold.ttf` in the new `fonts` folder from here.
    
    ```bash
    touch client/assets/fonts/lato-bold.ttf
    ```
    
- 137_
    
    Lastly, create `lato-light.ttf` in your new `fonts` folder from here.
    
    ```bash
    touch client/assets/fonts/lato-light.ttf
    ```
    
- 138_
    
    View your file tree and make sure the files are there.
    
    ```bash
    find
    ```
    
- 139_
    
    Things are looking more organized 😄 The new fonts are there. Now you can remove the old `fonts` folder and everything in it. You can't do that with `rmdir` since it's not empty. View the "help" menu of the `rm` command to see if you can find anything.
    
    ```bash
    rm --help
    ```
    
- 140_
    
    There's a `-r` flag that says, `remove directories and their contents recursively`. That will remove the folder and everything in it. Use the "remove" command with that flag to remove the `fonts` folder. Make sure it's the one in the `website` folder. Be careful not to remove the wrong folder.
    
    ```bash
    rm -r fonts/
    ```
    
- 141_
    
    List what's here to see if it's gone.
    
    ```bash
    ls
    ```
    
- 142_
    
    Looks like it’s gone. Surely, it went to the trash can right? No, it’s just gone. You should **be very careful when recursively removing files** like that. It will delete everything, and can destroy your operating system. There's a few more files for the boilerplate. Create `package.json` in the `website` folder.
    
    ```bash
    touch package.json
    ```
    
- 143_
    
    Next, create `server.js` in the `website` folder.
    
    ```bash
    touch server.js
    ```
    
- 144_
    
    Lastly, create `README.md` in the `website` folder.
    
    ```bash
    touch README.md
    ```
    
- 145_
    
    List the content of this folder to make sure your new files are there.
    
    ```bash
    ls
    ```
    
- 146_
    
    The boilerplate is complete. Use `echo` to print `Yay!` to the terminal.
    
    ```bash
    echo Yay!
    ```
    
- 147_
    
    Print `I finished the boilerplate!` to the terminal.
    
    ```bash
    echo I finished the boilerplate!
    ```
    
- 148_
    
    Print `one more thing...` to the terminal.
    
    ```bash
    echo one more thing...
    ```
    
- 149_ `echo text >> filename`
    
    You can print to a file instead of the terminal with `echo text >> filename`. Use it to print `I made this boilerplate` to your `README.md` file.
    
    ```bash
    echo I made this boilerplate >> README.md
    ```
    
- 150_
    
    Use `more` to view your `README.md` file.
    
    ```bash
    more README.md
    ```
    
- 151_
    
    Now that line is in the file. Add `from the command line` to your `README.md` file with the `echo` command and the same method.
    
    ```bash
    echo from the command line >> README.md
    ```
    
- 152_
    
    Use `more` to view the "readme" file again.
    
    ```bash
    more README.md
    ```
    
- 153_
    
    Now the file has two lines. Add `for the freeCodeCamp bash lessons` to your "readme" file with the `echo` command like you did before.
    
    ```bash
    echo for the freeCodeCamp bash lessons >> README.md
    ```
    
- 154_
    
    View your "readme" file again like you did before.
    
    ```bash
    more README.md
    ```
    
- 155_
    
    😄 Change to the `project` folder.
    
    ```bash
    cd ..
    ```
    
- 156_
    
    You are back where you started. List what's here.
    
    ```bash
    ls
    ```
    
- 157_
    
    Still the same two folders. Rename the `website` folder to `website-boilerplate`.
    
    ```bash
    mv website website-boilerplate
    ```
    
- 158_
    
    List the contents of this folder to see the new name.
    
    ```bash
    ls
    ```
    
- 159_
    
    
- 160_
    
    Thanks for making this. You need to make a copy of it. Take a look at the "help" menu of the "copy" command.
    
    ```bash
    cp --help
    ```
    
- 161_
    
    Scroll up to find that "recursive" flag. You need to use it again to copy the whole folder. Copy the whole boilerplate into a folder named `toms-website`.
    
    ```bash
    cp --recursive website-boilerplate/ toms-website/
    ```
    
- 162_
    
    List the contents of the `project` folder to see the new copy.
    
    ```bash
    ls
    ```
    
- 163_
    
    Thanks. Use `find` to view the tree of `toms-website`.
    
    ```bash
    find toms-website/
    ```
    
- 164_
    
    Use `find` to view the tree of the boilerplate folder to make sure it matches.
    
    ```bash
    find website-boilerplate/
    ```
    
- 165_
    
    Awesome! You are finished for now. Clear the terminal one last time.
    
    ```bash
    clear
    ```
    
- 166_
    
    Print "goodbye terminal" to the terminal.
    
    ```bash
    echo goodbye terminal
    ```
    
- 167_ `exit`
    
    Use the "exit" command to exit the terminal.
    
    ```bash
    exit
    ```