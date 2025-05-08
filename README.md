# wk8-DBMS-assignment

# Student Records Management System

## Description
This project is a complete implementation of a Student Records Management System using MySQL. The system is designed to manage student information, course registrations, instructor details, and department information. It supports operations such as adding new students, registering students for courses, viewing student records, and managing course details.

## How to Run/Setup the Project

1. **Install MySQL Server**: Ensure that you have MySQL server installed on your system. If not, you can download it from the official MySQL website.

2. **Create Database**: Create a new database in your MySQL server. For this assignment, we'll call it `student_records`. You can create it using the MySQL command line:
    ```sql
    CREATE DATABASE student_records;
    USE student_records;
    ```

3. **Import SQL**: Import the provided `student_records.sql` file into your database. If you're using MySQL Workbench or another GUI tool, you can usually import the SQL through a File -> Import menu option. Alternatively, use the MySQL command line:
    ```sql
    SOURCE /path/to/student_records.sql;
    ```
   Replace `/path/to/student_records.sql` with the actual path to where you saved the `.sql` file.

4. **Setup a Database Connection**: Depending on your application, setup a database connection. 

**To create an ERD:**

1. You can use drawing tools like Microsoft Visio, Lucidchart, or online ER diagram tools like Draw.io.
2. **Entities**: Create boxes for Students, Courses, Enrollments, Instructors, and Departments.
3. **Relationships**:
   - Draw a 1-M relationship from Students to Enrollments (each student can have many enrollments).
   - Draw a M-M relationship from Students to Courses through the Enrollments table.
   - Draw a 1-1 or 1-M relationship from Students to Departments.
   - Draw a 1-M relationship from Courses to Instructors.
   - Draw a 1-M relationship from Courses to Departments.

