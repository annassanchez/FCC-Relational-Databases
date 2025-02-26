--#3. List the databases.
\l
--#5. A lot of stuff happened in the terminal. That looks promising. In the psql prompt, view the databases again.
\l
--#6. There's your students database. Connect to it.
\c students
--#7. Now that you're connected. Display the tables and relations that are here to see if it's all correct.
\d
--#8. That all looks right. View the details of the students table to make sure the stucture is right.
\d students
--#9. Looks good. Make sure all the data is in the table, as well.
SELECT * FROM students;