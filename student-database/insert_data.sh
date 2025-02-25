#!/bin/bash
#Script to insert data from courses.csv and students.csv into students database
#cat courses.csv
# cat courses.csv | while read MAJOR COURSE
# do
#     echo $MAJOR
# done
# cat courses.csv | while IFS="," read MAJOR COURSE
# do
#     echo $MAJOR
# done
# cat courses.csv | while IFS="," read MAJOR COURSE
# do
#   echo $MAJOR $COURSE
# done
# cat courses.csv | while IFS="," read MAJOR COURSE
# do
# done
# cat courses.csv | while IFS="," read MAJOR COURSE
# do
#     # get major_id

#     # if not found

#     # insert major

#     # get new major_id

#     # get course_id

#     # if not found

#     # insert course

#     # get new course_id

#     # insert into majors_courses

# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# cat courses.csv | while IFS="," read MAJOR COURSE
# do
#     # get major_id

#     # if not found

#     # insert major

#     # get new major_id

#     # get course_id

#     # if not found

#     # insert course

#     # get new course_id

#     # insert into majors_courses

# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# cat courses.csv | while IFS="," read MAJOR COURSE
# do
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

#     # if not found

#     # insert major

#     # get new major_id

#     # get course_id

#     # if not found

#     # insert course

#     # get new course_id

#     # insert into majors_courses

# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# cat courses.csv | while IFS="," read MAJOR COURSE
# do
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     echo $MAJOR_ID
#     # if not found

#     # insert major

#     # get new major_id

#     # get course_id

#     # if not found

#     # insert course

#     # get new course_id

#     # insert into majors_courses

# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# cat courses.csv | while IFS="," read MAJOR COURSE
# do
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     echo $MAJOR_ID
#     # if not found

#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major

#         # get new major_id

#     fi

#     # get course_id

#     # if not found

#     # insert course

#     # get new course_id

#     # insert into majors_courses

# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# cat courses.csv | while IFS="," read MAJOR COURSE
# do
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     echo $MAJOR_ID
#     # if not found

#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL INSERT INTO majors(major) VALUES($MAJOR))
#         # get new major_id

#     fi

#     # get course_id

#     # if not found

#     # insert course

#     # get new course_id

#     # insert into majors_courses

# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# cat courses.csv | while IFS="," read MAJOR COURSE
# do
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     echo $MAJOR_ID
#     # if not found

#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL INSERT INTO majors(major) VALUES($MAJOR))
#         echo $INSERT_MAJOR_RESULT
#         # get new major_id

#     fi

#     # get course_id

#     # if not found

#     # insert course

#     # get new course_id

#     # insert into majors_courses

# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
#   # get major_id
#   MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#   echo $MAJOR_ID

#   # if not found
#   if [[ -z $MAJOR_ID ]]
#   then
#     # insert major
#     INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#     echo $INSERT_MAJOR_RESULT

#     # get new major_id

#   fi

#   # get course_id

#   # if not found

#   # insert course

#   # get new course_id

#   # insert into majors_courses

# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# # get major_id
# MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

# # if not found
# if [[ -z $MAJOR_ID ]]
# then
#     # insert major
#     INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#     echo $INSERT_MAJOR_RESULT

#     # get new major_id

# fi

# # get course_id

# # if not found

# # insert course

# # get new course_id

# # insert into majors_courses

# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         echo $INSERT_MAJOR_RESULT

#         # get new major_id

#     fi

#     # get course_id

#     # if not found

#     # insert course

#     # get new course_id

#     # insert into majors_courses
#     fi
# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")

#         # get new major_id

#     fi

#     # get course_id

#     # if not found

#     # insert course

#     # get new course_id

#     # insert into majors_courses
#     fi
# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id

#     fi

#     # get course_id

#     # if not found

#     # insert course

#     # get new course_id

#     # insert into majors_courses
#     fi
# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id

#     # if not found

#     # insert course

#     # get new course_id

#     # insert into majors_courses
#     fi
# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id
#     COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

#     # if not found

#     # insert course

#     # get new course_id

#     # insert into majors_courses
#     fi
# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id
#     COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

#     # if not found

#     if [[ -z $COURSE_ID ]]
#     then
#         # insert course
#         # get new course_id
#     fi

#     # insert into majors_courses
#     fi
# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id
#     COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

#     # if not found

#     if [[ -z $COURSE_ID ]]
#     then
#         # insert course
#         INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
#         # get new course_id
#     fi

#     # insert into majors_courses
#     fi
# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id
#     COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

#     # if not found

#     if [[ -z $COURSE_ID ]]
#     then
#         # insert course
#         INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
#         if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into courses, $COURSE
#         fi
#         # get new course_id
#     fi

#     # insert into majors_courses
#     fi
# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id
#     COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

#     # if not found

#     if [[ -z $COURSE_ID ]]
#     then
#         # insert course
#         INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
#         if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into courses, $COURSE
#         fi
#         # get new course_id
#     fi

#     # insert into majors_courses
#     fi
# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id
#     COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

#     # if not found

#     if [[ -z $COURSE_ID ]]
#     then
#         # insert course
#         INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
#         if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into courses, $COURSE
#         fi
#         # get new course_id
#         COURSE_ID=$($PSQL "SELECT course_id FROM coursesWHERE course='$COURSE'")
#     fi

#     # insert into majors_courses
#     fi
# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id
#     COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

#     # if not found

#     if [[ -z $COURSE_ID ]]
#     then
#         # insert course
#         INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
#         if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into courses, $COURSE
#         fi
#         # get new course_id
#         COURSE_ID=$($PSQL "SELECT course_id FROM coursesWHERE course='$COURSE'")
#     fi

#     # insert into majors_courses
#     INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
#     fi
# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id
#     COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

#     # if not found

#     if [[ -z $COURSE_ID ]]
#     then
#         # insert course
#         INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
#         if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into courses, $COURSE
#         fi
#         # get new course_id
#         COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
#     fi

#     # insert into majors_courses
#     INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
#     if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors_courses, $MAJOR : $COURSE
#     fi
# fi
# done
# cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
# do
#     echo $FIRST
# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id
#     COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

#     # if not found

#     if [[ -z $COURSE_ID ]]
#     then
#         # insert course
#         INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
#         if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into courses, $COURSE
#         fi
#         # get new course_id
#         COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
#     fi

#     # insert into majors_courses
#     INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
#     if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors_courses, $MAJOR : $COURSE
#     fi
# fi
# done
# cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
# do
# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id
#     COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

#     # if not found

#     if [[ -z $COURSE_ID ]]
#     then
#         # insert course
#         INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
#         if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into courses, $COURSE
#         fi
#         # get new course_id
#         COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
#     fi

#     # insert into majors_courses
#     INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
#     if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors_courses, $MAJOR : $COURSE
#     fi
# fi
# done
# cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
# do
# if [[ $FIRST != first_name ]]
# then
# fi
# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id
#     COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

#     # if not found

#     if [[ -z $COURSE_ID ]]
#     then
#         # insert course
#         INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
#         if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into courses, $COURSE
#         fi
#         # get new course_id
#         COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
#     fi

#     # insert into majors_courses
#     INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
#     if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors_courses, $MAJOR : $COURSE
#     fi
# fi
# done
# cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
# do
# if [[ $FIRST != first_name ]]
# then
#     # get major_id

#     # if not found

#     # set to null

#     # insert student

# fi
# done    
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id
#     COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

#     # if not found

#     if [[ -z $COURSE_ID ]]
#     then
#         # insert course
#         INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
#         if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into courses, $COURSE
#         fi
#         # get new course_id
#         COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
#     fi

#     # insert into majors_courses
#     INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
#     if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors_courses, $MAJOR : $COURSE
#     fi
# fi
# done
# cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
# do
# if [[ $FIRST != first_name ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

#     # if not found

#     # set to null

#     # insert student

# fi
# done  
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id
#     COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

#     # if not found

#     if [[ -z $COURSE_ID ]]
#     then
#         # insert course
#         INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
#         if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into courses, $COURSE
#         fi
#         # get new course_id
#         COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
#     fi

#     # insert into majors_courses
#     INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
#     if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors_courses, $MAJOR : $COURSE
#     fi
# fi
# done
# cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
# do
# if [[ $FIRST != first_name ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     echo $MAJOR_ID
#     # if not found

#     # set to null

#     # insert student

# fi
# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id
#     COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

#     # if not found

#     if [[ -z $COURSE_ID ]]
#     then
#         # insert course
#         INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
#         if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into courses, $COURSE
#         fi
#         # get new course_id
#         COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
#     fi

#     # insert into majors_courses
#     INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
#     if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors_courses, $MAJOR : $COURSE
#     fi
# fi
# done
# cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
# do
# if [[ $FIRST != first_name ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     echo $MAJOR_ID
#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # set to null
#     fi
#     # set to null

#     # insert student

# fi
# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id
#     COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

#     # if not found

#     if [[ -z $COURSE_ID ]]
#     then
#         # insert course
#         INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
#         if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into courses, $COURSE
#         fi
#         # get new course_id
#         COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
#     fi

#     # insert into majors_courses
#     INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
#     if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors_courses, $MAJOR : $COURSE
#     fi
# fi
# done
# cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
# do
# if [[ $FIRST != first_name ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     echo $MAJOR_ID
#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # set to null
#         MAJOR_ID=null
#     fi
#     # set to null

#     # insert student

# fi
# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id
#     COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

#     # if not found

#     if [[ -z $COURSE_ID ]]
#     then
#         # insert course
#         INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
#         if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into courses, $COURSE
#         fi
#         # get new course_id
#         COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
#     fi

#     # insert into majors_courses
#     INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
#     if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors_courses, $MAJOR : $COURSE
#     fi
# fi
# done
# cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
# do
# if [[ $FIRST != first_name ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    
#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # set to null
#         MAJOR_ID=null
#         echo $MAJOR_ID
#     fi
#     # set to null

#     # insert student

# fi
# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id
#     COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

#     # if not found

#     if [[ -z $COURSE_ID ]]
#     then
#         # insert course
#         INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
#         if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into courses, $COURSE
#         fi
#         # get new course_id
#         COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
#     fi

#     # insert into majors_courses
#     INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
#     if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors_courses, $MAJOR : $COURSE
#     fi
# fi
# done
# cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
#     do
#     if [[ $FIRST != first_name ]]
#     then
#         # get major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
        
#         # if not found
#         if [[ -z $MAJOR_ID ]]
#         then
#             # set to null
#             MAJOR_ID=null
#         fi
#         # set to null

#         # insert student

#     fi
#     done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id
#     COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

#     # if not found

#     if [[ -z $COURSE_ID ]]
#     then
#         # insert course
#         INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
#         if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into courses, $COURSE
#         fi
#         # get new course_id
#         COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
#     fi

#     # insert into majors_courses
#     INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
#     if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors_courses, $MAJOR : $COURSE
#     fi
# fi
# done
# cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
#     do
#     if [[ $FIRST != first_name ]]
#     then
#         # get major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
        
#         # if not found
#         if [[ -z $MAJOR_ID ]]
#         then
#             # set to null
#             MAJOR_ID=null
#         fi

#         # insert student
#         INSERT_STUDENT_RESULT=$($PSQL "INSERT INTO students(first_name, last_name, major_id, gpa) VALUES('$FIRST', '$LAST', $MAJOR_ID, $GPA)")
#     fi
#     done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
# cat courses_test.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id
#     COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

#     # if not found

#     if [[ -z $COURSE_ID ]]
#     then
#         # insert course
#         INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
#         if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into courses, $COURSE
#         fi
#         # get new course_id
#         COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
#     fi

#     # insert into majors_courses
#     INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
#     if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors_courses, $MAJOR : $COURSE
#     fi
# fi
# done
# cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
#     do
#     if [[ $FIRST != first_name ]]
#     then
#         # get major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
        
#         # if not found
#         if [[ -z $MAJOR_ID ]]
#         then
#             # set to null
#             MAJOR_ID=null
#         fi

#         # insert student
#         INSERT_STUDENT_RESULT=$($PSQL "INSERT INTO students(first_name, last_name, major_id, gpa) VALUES('$FIRST', '$LAST', $MAJOR_ID, $GPA)")
#         if [[ $INSERT_STUDENT_RESULT == "INSERT 0 1" ]]
#         then
#             echo "Inserted into students, $FIRST : $LAST"
#         fi
# fi
# done
# PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
# echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
# cat courses.csv | while IFS="," read MAJOR COURSE
# do
# if [[ $MAJOR != major ]]
# then
#     # get major_id
#     MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     # if not found
#     if [[ -z $MAJOR_ID ]]
#     then
#         # insert major
#         INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
#         if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors, $MAJOR
#         fi
#         # get new major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
#     fi

#     # get course_id
#     COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

#     # if not found

#     if [[ -z $COURSE_ID ]]
#     then
#         # insert course
#         INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
#         if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into courses, $COURSE
#         fi
#         # get new course_id
#         COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
#     fi

#     # insert into majors_courses
#     INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
#     if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
#         then
#             echo Inserted into majors_courses, $MAJOR : $COURSE
#     fi
# fi
# done
# cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
#     do
#     if [[ $FIRST != first_name ]]
#     then
#         # get major_id
#         MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
        
#         # if not found
#         if [[ -z $MAJOR_ID ]]
#         then
#             # set to null
#             MAJOR_ID=null
#         fi

#         # insert student
#         INSERT_STUDENT_RESULT=$($PSQL "INSERT INTO students(first_name, last_name, major_id, gpa) VALUES('$FIRST', '$LAST', $MAJOR_ID, $GPA)")
#         if [[ $INSERT_STUDENT_RESULT == "INSERT 0 1" ]]
#         then
#             echo "Inserted into students, $FIRST : $LAST"
#         fi
# fi
# done
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
cat courses.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into courses, $COURSE
        fi
        # get new course_id
        COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
    fi

    # insert into majors_courses
    INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
    if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors_courses, $MAJOR : $COURSE
    fi
fi
done
cat students.csv | while IFS="," read FIRST LAST MAJOR GPA
    do
    if [[ $FIRST != first_name ]]
    then
        # get major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
        
        # if not found
        if [[ -z $MAJOR_ID ]]
        then
            # set to null
            MAJOR_ID=null
        fi

        # insert student
        INSERT_STUDENT_RESULT=$($PSQL "INSERT INTO students(first_name, last_name, major_id, gpa) VALUES('$FIRST', '$LAST', $MAJOR_ID, $GPA)")
        if [[ $INSERT_STUDENT_RESULT == "INSERT 0 1" ]]
        then
            echo "Inserted into students, $FIRST : $LAST"
        fi
fi
done  