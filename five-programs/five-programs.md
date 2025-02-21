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
<br> 041 Run it one last time and enter values when it asks to see if you like how it looks.<br>
`./questionnaire.sh`
<br> 042 It looks good. I think you are done with that script for now. The next program will be countdown timer. Use the touch command to create a new file named countdown.sh in your project folder.<br>
`touch countdown.sh`
<br> 043 Give your file executable permissions so you can run it like the other one. It's the chmod command with the +x flag.<br>
`chmod +x countdown.sh`
<br> 044 You want to use the bash interpreter again. Add a shebang at the top of your new file to denote that.<br>
`#!/bin/bash`
<br> 045 Comments in bash look like this: # <comment>. Add a comment below the shebang that says Program that counts down to zero from a given argument so people know what it does. Note that the shebang is a special case and is not treated like a comment.<br>
`#Program that counts down to zero from a given argument`
<br> 046 Programs can take arguments. You can access them a few different ways with $. Add echo $* in your script to print all arguments passed to it.<br>
`echo $*`
<br> 047 Execute your script with ./countdown.sh.<br>
`./countdown.sh`
<br> 048 Nothing was printed. Run your script again, but this time add three arguments to the command; arg1, arg2, and arg3. Place them after the command with a space before each one.<br>
`./countdown.sh arg1 arg2 arg3`
<br> 049 $* printed all the arguments passed to your script. To access any one of them, use $<number>. arg2 could have been accessed with $2. Change your script to echo the first argument instead of all the arguments.<br>
`echo $1`
<br> 050 Run your file with ./countdown.sh arg1 arg2 arg3 again.<br>
`./countdown.sh arg1 arg2 arg3`
<br> 051 Now it just prints the first argument. Your program will accept an argument to count down from. You will test it with an if statement to make sure it's a positive integer. I wonder what that syntax would look like. Type help in the terminal to see if you can find anything.<br>
`help`
<br> 052 This is a list of built-in commands. You should look over it, some of them may look familiar. I see echo in there. Another one is if. See if you can find out more about it by checking its man page.<br>
`man if`
<br> 053 I guess there isn't a man page for it. At the top of the help screen, I noticed you can use help <command> to find out more. Yet another way to find out about a command 😥 See if you can find out more about if with that method.<br>
`help if`
<br> 054 The syntax is at the top, not all of it is required. Here's another example:

`if [[ CONDITION ]]
then
  STATEMENTS
fi`

Remove the echo $1 in your script and add an if condition that checks if [[ $1 == arg1 ]]. In its then area, use echo to print true to the screen. There must be spaces on the inside of the brackets ([[ ... ]]) and around the operator (==).<br>
`if [[ $1 == arg1 ]]
then
  echo true
fi`
<br> 055 Notice that the end of the syntax is fi (if backwards). It should print true if you pass arg1 to your script now. Run the script with arg1 as the only argument.<br>
`./countdown.sh arg1`
<br> 056 The if condition worked, it printed true. Run it again with anything except arg1 as the first argument.<br>
`./countdown.sh arg2 arg3`
<br> 057 Nothing was printed. One of the optional parts of if was an else area. You can use it like this:

`if [[ CONDITION ]]
then
  STATEMENTS
else
  STATEMENTS
fi

Add an else to your existing if condition. Use echo to print false if the condition fails.
<br>
`if [[ $1 == arg1 ]]
then
  echo true
else
    echo false
fi`
<br> 058 Run the script again and use anything except arg1 as the only argument.<br>
`./countdown.sh arg2 arg3`
<br> 059 Now it printed false. Your program is expecting an integer to count down from as its argument. You can compare integers inside the brackets ([[ ... ]]) of your if with -eq (equal), -ne (not equal), -lt (less than), -le (less than or equal), -gt (greater than), -ge (greater than or equal). Change your if condition to check if your first argument is less than 5.<br>
`if [[ $1 -lt 5 ]]
then
  echo true
else
    echo false
fi`
<br> 060 Run the script again and use anything except arg1 as the only argument.<br>
`./countdown.sh 4`
<br> 061 It printed true since your argument was less than 5. Run it again with 5 as the argument.<br>
`./countdown.sh 5`
<br> 062 As expected, that printed false. Take a look at that help menu again. I want to see if we can find out more about how these expressions work.<br>
`help`
<br> 063 Near the top left, it says [[ expression ]]. Those look like the double brackets you are using. See if you can get more info about that with the help command like you did with help if.<br>
`help [[ expression ]]`
<br> 064 It might not be a bad idea to read that. Looks like you can use some, probably familiar, things like !, &&, and || to compare multiple expressions. There's also == and != operators for an individual expression. It says something about the test built-in command. See if you can bring up the help menu for that.<br>
`help test`
<br> 065 That's what I was looking for. At the top are some file operators. There's some string and other operators as well. You should take a look at them. Near the bottom, are the arithmetic operators you used with your if condition. Change the condition in your script to check if the first argument is less than or equal to 5.<br>
`if [[ $1 -le 5 ]]
then
  echo true
else
    echo false
fi`
<br> 066 Run the script and use 5 as a first argument again.<br>
`./countdown.sh 5`
<br> 067 Now it prints true. Remember I said any command can run in the terminal or a script. Try running an expression right in the terminal by entering [[ 4 -le 5 ]] in it.<br>
`[[ 4 -le 5 ]]`
<br> 068 Nothing happened? Each command has an exit status that can be accessed with $?. View the exit status of the last command with echo $?.<br>
`echo $?`
<br> 069 The exit status of 0 means it was true, 4 is indeed less or equal to 5. Try it again with [[ 4 -ge 5 ]].<br>
`[[ 4 -ge 5 ]]`
<br> 070 Use echo to view the exit status of the command you just entered.<br>
`echo $?`
<br> 071 It printed 1 this time for false. You can separate commands on a single line with ;. Enter your last two commands on one line like this: [[ 4 -ge 5 ]]; echo $?. It will run the expression, then print the exit status of it since it was the last command.<br>
`[[ 4 -ge 5 ]]; echo $? `
<br> 072 It's still false. Using the same syntax of [[ ... ]]; echo $?, check if 10 is not equal to 5 and print the exit status of the expression on one line.<br>
`[[ 10 -ne 5 ]]; echo $?`
<br> 073 You can think of an exit status of 0 as true. But it means that the command had zero errors. All commands have an exit status. Using the same syntax, enter bad_command; and check its exit status on a single line.<br>
`bad_command; echo $?`
<br> 074 command not found, with an exit status of 127. Anything but 0 means there was an error with the command. bad_command didn't exist. Try it again with ls.<br>
`ls; echo $?`
<br> 075 command not found, with an exit status of 127. Anything but 0 means there was an error with the command. bad_command didn't exist. Try it again with ls.<br>
`ls; echo $?`
<br> 076 The command executed as expected and there were zero errors. So it gave you an exit status of 0. Try it again with ls -y.<br>
`ls -y; echo $?`
<br> 077 The -y flag doesn't work with ls so it gave you an exit status other than 0, meaning that the command was unsuccessful. View the help menu of the test command again, I want to see what else is in that list.<br>
`help test`
<br> 078 You tried a few of the arithmetic operators, those work for integers. Try one of the file operators. The first one on the list checks if a file exists. Type [[ -a countdown.sh ]]; echo $? in the terminal to see if your file exists.<br>
`[[ -a countdown.sh ]]; echo $?`
<br> 079 The file must exist. It's checking the folder the command is entered from. Try it again with bad_file.txt.<br>
`[[ -a bad_file.txt ]]; echo $?`
<br> 080 bad_file.txt doesn't exist. I think you're getting the hang of this. Using the same syntax, check if you have permissions to execute your countdown.sh file. You may want to look at that menu again.<br>
`[[ -x countdown.sh ]]; echo $?`
<br> 081 You played around with a number of the expressions. View the help [[ expression ]] menu again that you looked at before to see a few more options. You can view the menu with just help [[.<br>
`help [[ expression ]]`
<br> 082 You played around with a number of the expressions. View the help [[ expression ]] menu again that you looked at before to see a few more options. You can view the menu with just help [[.<br>
`help [[ expression ]]`
<br> 083 As I mentioned before, you can test multiple expressions with && and ||. Enter [[ -x countdown.sh && 5 -le 4 ]]; echo $? in the terminal to test the file is executable by you and five is less than or equal to four.<br>
`[[ -x countdown.sh && 5 -le 4 ]]; echo $?`
<br> 084 Both conditions weren't true, so the exit status was 1 for false. Try testing the same two conditions with the or operator.<br>
`[[ -x countdown.sh || 5 -le 4 ]]; echo $?`
<br> 085 One of the conditions was true so it printed 0. I think that's enough of a detour. Back in your script, change the if condition to check if the first argument is greater than zero so you can be sure it's something you can count down from.<br>
`if [[ $1 -gt 0 ]]
then
  echo true
else
  echo false
fi`
<br> 086 The condition you added checks if a positive integer was passed as an argument to the script and executes the then area. Change the existing echo command to print Include a positive integer as the first argument. if a positive integer is not used.<br>
`if [[ $1 -gt 0 ]]
then
  echo true
else
  echo "Include a positive integer as the first argument."
fi`
<br> 087 Run your script and use 1 as a first argument to make sure the condition is working<br>
`./countdown.sh 1`
<br> 088 Run it again and use anything but a positive integer as the only argument.<br>
`./countdown.sh -1`
<br> 089 Looks like your if condition is working. Next, you want to loop over the argument and count down to zero from it. Check the help menu to see if there's any commands for this.<br>
`help`
<br> 090 There's two for loops in there, you want the second one. Here's an example:

`for (( i = 10; i > 0; i-- ))
do
  echo $i
done`

The above creates a variable (i = 10), then prints it, subtracts one, and repeats until i is not greater than 0. So it prints 10 through 1. In the then area of your condition, replace the echo with a for loop that prints from the argument ($1) to 1.
<br>
`for (( i = $1; i > 0; i-- ))
do
  echo $i
done
`
<br> 091 Run your script and use 10 as the first argument.<br>
`./countdown.sh 10`
<br> 092 It works 😄 But I want it to pause for one second between each number. Check the help menu again to see if there's any commands that might help.<br>
`help`
<br> 093 I'm not seeing the command I was hoping to. These are the built-in commands, where are the rest? Type ls / to look around.<br>
`ls /`
<br> 094 The / listed what's in the root of the file system. I see a bin folder, bin stands for binary. View what's in it with ls /bin.<br>
`ls /bin`
<br> 095 These are some non built-in commands. There's quite a few that should look familiar. One is bash, that's the one you used for the shebang in your scripts. I see one called sleep. View the manual of it.<br>
`man sleep`
<br> 096 At the top, it says you can pause execution for a number of seconds. Try it out by entering sleep 3 in the terminal.<br>
`sleep 3`
<br> 097 That should work. In your for loop, use sleep to make the script pause for 1 second after each number is printed.<br>
`for (( i = $1; i > 0; i-- ))
do
  echo $i
  sleep 1
done`
<br> 098 Run your script and use 3 as the first argument.<br>
`./countdown.sh 3`
<br> 099 Awesome. Except it should print 0 instead of stopping at 1. Change the condition in your for loop so that it checks for i >= 0.<br>
`for (( i = $1; i >= 0; i-- ))
do
  echo $i
  sleep 1
done`
<br> 100 Run your script with 3 as the argument again.<br>
`./countdown.sh 3`
<br> 101 Excellent. I want it to display a title like the other script. Make it so that it prints ~~ Countdown Timer ~~ before anything else. Include a new line before and after it like you did for the other title.<br>
`echo -e "\n~~ Countdown Timer ~~\n"
for (( i = $1; i >= 0; i-- ))
do
  echo $i
  sleep 1
done`
<br> 102 Run your script and use 1 as the first argument again to see the title.<br>
`./countdown.sh 1`
<br> 103 This is fun. You can create a multiline comment like this:

: '
  comment here
  more comment here
'

Comment out your for loop with a multiline comment. I want to try and do this with a while loop.<br>
`echo -e "\n~~ Countdown Timer ~~\n"
: '
for (( i = $1; i >= 0; i-- ))
do
  echo $i
  sleep 1
done
'
I=$1`
<br> 104 View the help menu for the while command to see if you can find anything.<br>
`help while`
<br> 105 It shows the syntax. First, below your comment, create a variable named I that is set to the value of your first argument. It will start there, then on each iteration of the while loop you can subtract 1 from it until it reaches 0.<br>
`echo -e "\n~~ Countdown Timer ~~\n"
: '
while [[ $I -ge 0 ]]
do
  echo $I
done
'
I=$1`
<br> 106 The menu showed that you can make a while loop like this:

while [[ CONDITION ]]
do
  STATEMENTS
done

Add a while loop below the I variable you made. The condition should be $I -ge 0 and you should echo the I variable in the do statements.<br>
`echo -e "\n~~ Countdown Timer ~~\n"
: '
while [[ $I -ge 0 ]]
do
  echo $I
done
'
I=$1`
<br> 107 I never changes here, so you would have an infinite loop. You can subtract one from I with double parenthesis (((...))) and the -- operator. In your while loop, add (( I-- )) after you echo $I to subtract one from I on each pass.<br>
`echo -e "\n~~ Countdown Timer ~~\n"
while [[ $I -ge 0 ]]
do
  echo $I
  (( I-- ))
done`
<br> 108 The last thing to do is to add the sleep again. In your while loop, add the code to make it sleep for 1 second. Add the code after the (( I-- )).<br>
`echo -e "\n~~ Countdown Timer ~~\n"
while [[ $I -ge 0 ]]
do
  echo $I
  (( I-- ))
  sleep 1
done`
<br> 109 Run the script and use 5 as the first argument.<br>
`./countdown.sh 5`
<br> 110 I think the countdown timer is finished. Feel free to try it with some other arguments. The next one is a bingo number generator. Use touch to create bingo.sh in the same folder as the others.<br>
`touch bingo.sh`