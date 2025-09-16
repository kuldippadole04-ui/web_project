# Hospital Management System

Hospital Management System using MySQL, Php, and Bootstrap.

## Prerequisites

- Install XAMPP web server
- Any Editor 

## Languages and Technologies used

- HTML5/CSS3
- JavaScript (to create dynamically updating content)
- Bootstrap (An HTML, CSS, and JS library)
- XAMPP (A web server by Apache Friends)
- Php
- MySQL (An RDBMS that uses SQL)

## Steps to run the project in your machine

1. Download and install XAMPP in the machine
2. Clone or download the repository
3. Extract all the files and move them to the 'htdocs' folder of your XAMPP directory.
4. Start the Apache and Mysql in your XAMPP control panel.
5. Open your web browser and type 'localhost/phpmyadmin'
6. In phpmyadmin page, create a new database from the left panel and name it as 'myhmsdb'
7. Import the file 'myhmsdb.sql' inside your newly created database and click ok.
8. Open a new tab and type 'localhost/foldername' in the URL of your browser.


## Starting Apache And MySQL in XAMPP:

The XAMPP Control Panel allows you to manually start and stop Apache and MySQL. To start Apache or MySQL manually, click the ‘Start’ button under ‘Actions’.

## Brief about the Project:

Hospital Management System in php and mysql. This system has a ‘Home’ page from where the patient, doctor & administrator can login into their accounts by toggling the tabs accordingly.

'About Us' page allows us to get some more information about the quality and the services of the hospital.

‘Contact’ page allows users to provide feedback or queries about the services of the hospital. 

The ‘Home’ page consists of 3 modules:

### Patient Module:

This module allows patients to create their account, book an appointment to see a doctor and see their appointment history. The registration page(in the home page itself) asks patients to enter their First Name, Last Name, Email ID, Contact Number, Password, and radio buttons to select their gender.

Once the patient has created his/her account after clicking the ‘Register’ button, then he will be redirected to his/her Dashboard.

The Dashboard page allows patients to perform two operations:

1. Book his/her appointment:

Here, the patients can able to book their appointments to see a doctor. The appointment form requires patients to select the doctor that they want to see, Date and Time that they want to meet with the doctor. The consultancy fee will be shown accordingly to the patient as it was already determined by the doctor.

After clicking on the ‘Create new entry’ button, the patient will receive an alert that acknowledges the successful appointment of the patient.

2. View patients’ Appointment History:

Here, the patient can see their appointment history which contains Doctor Name, Consultancy Fee, Appointment Date, and Time.

Once the patient has logged out of his account, if he wants to go into his account again, he can log in his account, instead of register his account again. Clicking on ‘Login’ button will redirect the patient to his dashboard page.

This is how the patient module works. On the whole, this module allows patients to register their account or login to their account(if he/she has one), book an appointment, and view his/her appointment history.

### Doctor Module:

The doctors can log in into their account which can be done by toggling the tab from ‘Patient’ to ‘Doctor’. Registration of a doctor account can be done only by admin. We will discuss more about this in Admin Module.

Once the doctor clicking the ‘Login’ button, they will be redirected to their own dashboard.

In this page, doctors can able to see their appointments which has been booked by the patients.

In real-time, the doctors will have thousands of appointments. It will be easier for a doctor to search for an appointment in the case of more appointments. To make it easier, I have a ‘Search’ box in the navigation bar which allows doctors to search for a patient by their contact number. Once everything is done, the doctor can log out of their account. Thus, in general, a doctor can log in into his/her account, view their appointments, and search for a patient. This is all about the Doctor Module.

### Admin Module:

This module is the heart of our project where an admin can see the list of all patients. Doctors and appointments and the feedback/queries received from the ‘Contact’ page. Also, admin can add a doctor too. Login into admin account can be done by toggling into admin tab of the Home page.
username: admin, password: admin123


On clicking the ‘Login’ button, the admin will be redirected to his/her dashboard.

This module allows admin to perform five major operations:

1. View the list of all patients registered:

Admin can able to view all the patients registered. This includes the patients’ First Name, Last Name, Email ID, Contact Number, and Password. As like in doctor module, admin can also search for a patient by their contact number in the search box.

2. View the list of all doctors registered:

Details of the doctors can also be viewed by the admin. This details include the Name of the doctor, Password, Email, and Consultancy fees. Searching for a doctor can be done by using the doctor’s Email ID in the search box.

3. View the Appointment lists:

Admin can also able to see the entire details of the appointment that shows the appointment details of the patients with their respective doctors. This includes the First Name, Last Name, Email and Contact Number of patients, doctor’s name, Appointment Date, Time, and the Consultancy Fees.

4. Add Doctor:

Admin alone can add a new doctor since anyone can register as a doctor if we put this section on the home page. This form asks Doctor’s Name, Email ID, Password, and his/her Consultancy Fees.

After adding a new doctor, if we check the doctor’s list, we will see the details of new doctor is added to the list.

5. View User’s feedback/Queries:

Admin is allowed to view the feedback/Query that has been given by the user in the ‘Contact’ page. This includes User’s Name, Email Id, Contact Number, and the message(Feedback/ Query).

Taking everything into consideration, admin can able to view the details of patients and doctors, appointment details, Feedback by the user and can add a new doctor. Once everything is done, the admin can log out from his account.

## Updates

1. Cancel Appointments

Patients and doctors can able to delete their appointments.

If the patient deletes the last record (for doctor Ganesh), then a label "deleted by you" will be displayed in the column 'Current Status' and the action will change to cancel state.


Now if we log in to the doctor Ganesh's account and view his appointment details, then it will look like this:

Similarly doctors can also delete their appointments and patients can view their updated appointment details.

2. Remove Doctors by Admin

Admin can also delete the doctors from the system. This lets admin to have more control over the system.
