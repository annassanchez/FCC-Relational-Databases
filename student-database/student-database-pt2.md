# student database part 2

1. The first thing you need to do is start the terminal. Do that by clicking the "hamburger" menu at the top left of the screen, going to the "terminal" section, and clicking "new terminal". Once you open a new one, type echo hello SQL into the terminal and press enter.

    ```bash
    echo hello SQL
    ```

2. In Part 1 of this tutorial, you created a students database and then a script to insert information about your computer science students into it. Log into the psql interactive terminal with psql --username=freecodecamp --dbname=postgres to see if it's here.

    ```bash
    psql --username=freecodecamp --dbname=postgres
    ```

3. List the databases.

    ```sql
    \l
    ```

4. Your database isn't here. You can use the .sql file you created at the end of Part 1 to rebuild it. I recommend "splitting" the terminal. You can do that by clicking the "hamburger" menu at the top left of the window, going to the "Terminal" menu, and clicking "Split Terminal". Once you've done that, enter psql -U postgres < students.sql in it to rebuild the database.

    ```bash
    psql -U postgres < students.sql
    ```

5. A lot of stuff happened in the terminal. That looks promising. In the psql prompt, view the databases again.

    ```sql
    \l
    ```

6. There's your students database. Connect to it.

    ```sql
    \c students
    ```

7. Now that you're connected. Display the tables and relations that are here to see if it's all correct.

    ```sql
    \d
    ```

8. That all looks right. View the details of the students table to make sure the stucture is right.

    ```sql
    \d students
    ```

9. Looks good. Make sure all the data is in the table, as well.

    ```sql
    SELECT * FROM students;
    ```

10. The data is all there. You should take a look at the details of the other tables and the data in them to make sure they look good. When you are done, use touch in the bash terminal to create student_info.sh. You are going to make a script to print info about your students.

    ```bash
    touch student_info.sh
    ```

11. Give your new file executable permissions.

    ```bash
    chmod +x student_info.sh
    ```

12. Add a shebang that uses bash at the top of your new script.

    ```bash
    #!/bin/bash
    ```