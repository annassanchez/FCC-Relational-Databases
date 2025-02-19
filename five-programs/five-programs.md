001 The first thing you need to do is start the terminal. Do that by clicking the "hamburger" menu at the top left of the screen, going to the "terminal" section, and clicking "new terminal". Once you open a new one, type echo hello bash into the terminal and press enter.<br>
`echo hello bash`
<br>002 You can run commands in the terminal or put them in a file to be run as a script. You will be making five small programs to learn some scripting. The first one will be a "questionnaire". Use the touch command to create questionnaire.sh in the project folder.<br>
`touch questionnaire.sh`
<br> 003 To start, open the file in the main editor by clicking the filename in the left side panel. Then, add the text echo hello questionnaire at the top of the file.<br>
`echo hello questionnaire`
<br> 004 Your script has one command. Run it with sh questionnaire.sh to see what happens. sh stands for shell.<br>
`sh questionnaire.sh`
<br> 005 Using sh to run your script uses the shell interpreter. Run your script again with bash questionnaire.sh to use the bash interpreter. bash stands for bourne-again shell.<br>
`bash questionnaire.sh`
<br> 006 The output was the same. There are many interpreters which may not give the output you expect. Find out where the bash interpreter is located by entering which bash in the terminal.<br>
`which bash`
<br> 007 That's the absolute path to the bash interpreter. You can tell your program to use it by placing a shebang at the very top of the file like this: #!<path_to_interpreter>. Add a shebang at the very top of your file, the one you want looks like this: #!/bin/bash.<br>
`#!/bin/bash`
<br> 008 Now, instead of using sh or bash to run your script. You can run it by executing the file and it will default to bash. Execute your script with ./questionnaire.sh. You will get a permission denied error.<br>
`./questionnaire.sh`
<br> 009 You should have got a permission denied message because you don't have permissions to execute the script. List what's in the project folder in long list format with ls -l to see the file permissions.<br>
`ls -l`
<br> 010 Next to your file is `-rw-r<br>r<br>`. All but the first character (-) describe permissions different users have with the file. r means read, w means write, x means execute. I don't see an x anywhere, so nobody can execute it. Enter chmod +x questionnaire.sh in the terminal to give everyone executable permissions.<br>
`chmod +x questionnaire.sh`
<br> 011 List what's in the folder again with ls -l to see the new permissions.<br>
`ls -l`
<br> 012 The x was added by each type of user to denote that anyone can execute the file. Run your file again by executing it with ./questionnaire.sh.<br>
`./questionnaire.sh`
<br> 013 Now it works. In your script, you can add any commands that you would be able to enter in the terminal. Test this by adding the ls -l command below your other command.<br>
`ls -l`
<br> 014 Run the script by executing it again.<br>
`./questionnaire.sh`
<br> 015 Your script printed the result of the two commands as if you entered them in the terminal. Delete everything but the shebang from your file so you can start making the questionnaire.<br>
<br> 016 Bash has variables, functions, and other things you might be familiar with. You can create a variable with VARIABLE_NAME=VALUE. There cannot be any spaces around the equal (=) sign. If a variable has any spaces in it, place double quotes around it. Create a variable named QUESTION1 and set it's value to "What's your name?".<br>
    `QUESTION1="What's your name?"`
<br> 017 To use a variable, place $ in front of it like this: $VARIABLE_NAME. Shell scripts run from top to bottom, so you can only use variable below where it's created. Use echo to print your variable.<br>
`echo $QUESTION1`
<br> 018 Run the file like you did before to see if it worked.<br>
`./questionnaire.sh`
<br> 019 The question was printed. Next, you want to be able to accept input from a user. You can do that with read like this: read VARIABLE_NAME. This will get user input and store it into a new variable. After you print the question, use read to get input and store it in a variable named NAME.
<br>
`read NAME`
<br> 020 t the bottom of your script, use echo to print Hello <name>. to the terminal.
<br>
`echo "Hello $NAME."`
<br> 021 Run the file again. Type your name and press enter after it asks for it.<br>
`./questionnaire.sh`
<br> 022 RRight below your first variable, create another one named QUESTION2. Set the value to, Where are you from?. Make sure to put it in double quotes.<br>
`QUESTION2="Where are you from?"`
<br> 023 After your read command, use your new variable to print the next question.<br>
`echo $QUESTION2`
<br> 023 After your read command, use your new variable to print the next question.<br>
`echo $QUESTION2`
<br> 024 Below where the second question is printed, use read to get input from the user into a variable named LOCATION.<br>
`read LOCATION`
<br> 025 Change the existing response to Hello <name> from <location>.<br>
`echo "Hello $NAME from $LOCATION."`
<br> 026 Run the script and enter values when it is waiting for input.<br>
`./questionnaire.sh`
<br> 027 It's looking good. I want a title to appear when the program first starts. Use echo to print ~~ Questionnaire ~~ before anything else is printed.<br>
`echo "~~ Questionnaire ~~"`
<br> 028 Run the script and enter values until it is done again so you can see what the title looks like.<br>
`./questionnaire.sh`
<br> 029 It would be nice if there was some empty lines around the title. You've probably used the --help flag before, see if you can use it with echo to try and find a way to add empty lines.<br>
`echo --help`
<br> 030 That didn't work as I hoped. Another way to find information about a command is with man. It stands for manual and you can use it like this: man <command>. See if there's a manual for echo.<br>
`man echo`
<br> 031 At the top of the menu, the -e option looks promising. And the \n below it says new line. You should take a look at those. In your script, change the title to echo -e \n~~ Questionnaire ~~\n to see if that prints the empty lines.<br>
`echo -e \n~~ Questionnaire ~~\n`
<br> 032 Run it to see if it worked. You can press ctrl+c to close the program after it starts if you don't want to enter values.<br>
`./questionnaire.sh`
<br> 033 It didn't print the empty lines. echo will only print empty lines if the value is enclosed in quotes. Place double quotes around the title that gets printed to see if it works.<br>
`echo -e "\n~~ Questionnaire ~~\n"`
<br> 034 Run your script again to see if that fixed it.<br>
`./questionnaire.sh`
<br> 035 Now it's working 😄 Create a QUESTION3 variable next to the other two, set it's value to "What's your favorite coding website?"<br>
`QUESTION3="What's your favorite coding website?"`
<br> 036 Use echo to print the third question after you read the LOCATION.<br>
`echo $QUESTION3`
<br> 037 After the question you just printed, add code to read input into a variable named WEBSITE.<br>
`read WEBSITE`
<br> 038 Change the echo command of the response to print this sentence instead: Hello <name> from <location>. I learned that your favorite coding website is <website>!.<br>
`echo "Hello $NAME from $LOCATION. I learned that your favorite coding website is $WEBSITE!"`
<br> 039 Run the script and enter values when the program is waiting. Let's see the final output.<br>
`./questionnaire.sh`
<br> 040 One last thing. Change that final response to print an empty line at the beginning of the sentence.<br>
`echo "\nHello $NAME from $LOCATION. I learned that your favorite coding website is $WEBSITE!"`