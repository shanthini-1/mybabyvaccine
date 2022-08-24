# Title : MY BABY VACCINE SYSTEM


# Description

Newborn Baby Health Tracking System :

MyBabyVaccine is an application that helps Hospital keep track of the vaccination of their children. A vaccination calendar gets generated for each child registered by hospital staff. This keeps a manual records of the vaccination records of ones child that are theretofore being kept in the traditional system in digital records. The child can be registered by the hospital Staff  and record updated on the registered id of the child at the time of vaccination. Thus, Vaccination records are Digitised.

# General Information

1. Newborn Baby Health Tracking System is used for Tracking the health and vaccination reports of the newborns who are registered in our application.


2. Newborn Baby Health Tracking System allows us to register the application to track the vaccine schedule.


3. Vaccines are one of the most important ways to prevent children from getting some dangerous diseases. By exposing you to a germ in a controlled way, vaccines teach your body to recognize and fight it.



# Project Flow 

    HOME -----> -HOME
                -ABOUT US
                -SIGN UP -----> -ADD
                -LOGIN   -----> -ADMIN
                                -STAFF
                
    LOGIN -----> -ADMIN -----> -LOCATION ----> -ADD LOCATION
                                               -UPDATE LOCATION
                                               -FIND LOCATION
                 -ADMIN -----> -HOSPITAL -----> -ADD HOSPITAL 
                                                -UPDATE HOSPITAL
                                                -FIND HOSPITAL
                 -ADMIN -----> -HOSPITAL-STAFF ----> -ADD STAFF
                                                     -UPDATE STAFF
                                                     -DELETE STAFF
                                                     -FIND STAFF
                                                     -LIST STAFF
    LOGIN -----> -STAFF -----> -PERSON(PARENT)-----> -ADD PERSON
                                                     -UPDATE PERSON
                                                     -DELETE PERSON
                                                     -FIND PERSON
                                                     -LIST PERSONS
                 -STAFF -----> -VACCINE -----> -ADD VACCINE
                                               -UPDATE VACCINE
                                               -DELETE VACCINE
                                               -FIND VACCINE
                                               -LIST VACCINES
                 -STAFF -----> -CHILD ----->   -ADD CHILD
                                               -SCHEDULE VACCINE
                                               -UPDATE CHILD
                                               -DELETE CHILD
                                               -LIST CHILDREN
                                             
# How to use the project 

1. Initially we have to login to  My Baby Vaccine Application by using your credentials such as username and password given at the time of Registration.

2. Home page consist of About us, contact, login and Registeration selections.

3. Login Page have two type of login, they are Admin login, Staff login.

4. Admin login have to add,update,delete on location,hospital,hospital staff by using id.

5. Staff login have add,update,delete on person,vaccination,child detail and also list the vaccination schedule and update vaccination status.




# Features

1. DataBase connectivity
2. DataBase relational data Handling,lookup relation.
3. using relationship.
4. Loggic handling.
5. Form Validation in frontend level.


# Install and run it locally

1. download or clone the repository to your local machine:
     $ git https://github.com/shanthini-1/mybabyvaccine

# Future Enhancement

1. Including User login and adding the features of viewing child vaccine schedule, vaccine status tracking and remainder for vaccination using mail. 

 LOGIN -----> -USER -----> -PERSON(PARENT)-----> -ADD PERSON
                                                      -UPDATE PERSON 
                           -USER -----> -CHILD----->- ADD CHILD
                                                      - VIEW SCHEDULE 
                                                      - VIEW VACCINE STATUS
                           -USER -----> -VACCINE----->- VIEW VACCINE