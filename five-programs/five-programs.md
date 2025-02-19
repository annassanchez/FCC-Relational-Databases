001 The first thing you need to do is start the terminal. Do that by clicking the "hamburger" menu at the top left of the screen, going to the "terminal" section, and clicking "new terminal". Once you open a new one, type echo hello bash into the terminal and press enter.
`echo hello bash`
<br>002 You can run commands in the terminal or put them in a file to be run as a script. You will be making five small programs to learn some scripting. The first one will be a "questionnaire". Use the touch command to create questionnaire.sh in the project folder.
`touch questionnaire.sh`
<br> 003 To start, open the file in the main editor by clicking the filename in the left side panel. Then, add the text echo hello questionnaire at the top of the file.
`echo hello questionnaire``
<br> 004 Your script has one command. Run it with sh questionnaire.sh to see what happens. sh stands for shell.
`sh questionnaire.sh`
<br> 005 Using sh to run your script uses the shell interpreter. Run your script again with bash questionnaire.sh to use the bash interpreter. bash stands for bourne-again shell.
`bash questionnaire.sh`
<br> 006 The output was the same. There are many interpreters which may not give the output you expect. Find out where the bash interpreter is located by entering which bash in the terminal.
`which bash`
<br> 007 That's the absolute path to the bash interpreter. You can tell your program to use it by placing a shebang at the very top of the file like this: #!<path_to_interpreter>. Add a shebang at the very top of your file, the one you want looks like this: #!/bin/bash.
`#!/bin/bash`
<br> 008 Now, instead of using sh or bash to run your script. You can run it by executing the file and it will default to bash. Execute your script with ./questionnaire.sh. You will get a permission denied error.
`./questionnaire.sh`
<br> 009 You should have got a permission denied message because you don't have permissions to execute the script. List what's in the project folder in long list format with ls -l to see the file permissions.
`ls -l`
<br> 010 Next to your file is -rw-r<br>r<br>. All but the first character (-) describe permissions different users have with the file. r means read, w means write, x means execute. I don't see an x anywhere, so nobody can execute it. Enter chmod +x questionnaire.sh in the terminal to give everyone executable permissions.
`chmod +x questionnaire.sh`
<br> 011 List what's in the folder again with ls -l to see the new permissions.
`ls -l`
<br> 012 The x was added by each type of user to denote that anyone can execute the file. Run your file again by executing it with ./questionnaire.sh.
`./questionnaire.sh`
<br> 013 Now it works. In your script, you can add any commands that you would be able to enter in the terminal. Test this by adding the ls -l command below your other command.
`ls -l`
<br> 014 Run the script by executing it again.
`./questionnaire.sh`
<br> 015 Your script printed the result of the two commands as if you entered them in the terminal. Delete everything but the shebang from your file so you can start making the questionnaire.
<br> 016 Bash has variables, functions, and other things you might be familiar with. You can create a variable with VARIABLE_NAME=VALUE. There cannot be any spaces around the equal (=) sign. If a variable has any spaces in it, place double quotes around it. Create a variable named QUESTION1 and set it's value to "What's your name?".
`QUESTION1="What's your name?"`
<br> 017