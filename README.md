# OnlineTTE
OnlineTTE is a digital ticket checking app which aims to digitalize the manual checking (currently done by paper ticket charts) of train ticket reservations in India.
This app can help the TTE check tickets faster, reduce the number of TTEs, collect fines from rule violators and generate reports for the Indian Railways.
Most importantly this application can help reduce the wastage of paper by eliminating ticket charts.

# How to run this application on your computer from GitHub
1. Copy the repository link from Github under the Code section
2. Open Netbeans IDE Click on Team -> Git -> Clone and Paste the copied repository link on the repository link field
3. Click on Proxy Configuration and click on Test connection. Ensure you get a tick then click OK.
4. Select a convinient path to clone the repository and click Next then from the available branches select master branch and click Next
5. Verify the parent directory, check the details and click Finish. (Your project files will be ready in the folder you specified)
6. You can click Open Project to open your project You can ignore the project problems dialog
7. Verify you have the onlinette.sql file for the dummy databases. Go to the cloned project folder and Click OnlineTTE -> database. You can also download it on the database folder in Github
8. Open XAAMP server and start the Apache and MySQL services and open the MySQL admin page (phpmyadmin).
9. Click on New to create a new database and name it onlinette then click create.
10. Click on the onlinette database and click on Import
11. Click on Choose file and select the onlinette.sql file then click Go. The required tables for the project will be added
12. Now return to NetBeans and run the project. The project will now work. Enjoy

# How to use OnlineTTE
- You can log in to the system by entering the correct credentials provided to you as a TTE.
- After login you can select the train you will be checking by selecting the train number from the drop down list
- Selecting the train number auto fills your train name and also fetches all the coaches in the train
- You can select the coach to check and also pick the travel date to proceed by clicking Go
- You will be presented with a list of passengers who are travelling on the selected coach and date
- You can check the tickets by clicking on the specific passenger, clicking on the check checkbox and clicking OK
- Unchecking the check checkbox and clicking OK reverts the checked status back to unchecked
- You may also collect fines and document it by clicking the Collect fine button and entering the appropriate details.
- After checking process clicking Generate reports generates all the reports of checked, unchecked and fined passengers which can be sent to the Indian Railways
- Clicking on complete button returns you back to the train selecting page.
- You may then choose to either check another train or log out and exit the system

# Features of OnlineTTE
## Login
- Contains two fields to enter username and password
- Twol buttons, one to log in and one to exit the system
- Appropriate exception handling done to handle incorrect and empty inputs

## Select train
- We have a drop down to select the train number for which the TTE needs to check tickets
- After selection of train number the train name is automatically filled by mapping the selected train number to its name and all the coaches of that train is pulled from the database using a query
- We have a JDateChooser from JCalendar which can be used to pick the date of travel

## Passenger details
- There is a JTable which displays all the passenger details who are travelling on the specified coach and date taken from the database using a query.
- When we click on a passenger record his name is displayed on the text box and you can now check or uncheck the ticket.
- You can check the tickets by clicking on the check checkbox and clicking OK. The status column turns green and changes status to 'Checked'
- Unchecking the checkbox and clicking OK reverts the checked status back to unchecked (Red)
- You can also sort the passengers based on either seat number or destination (done by a query to update the database). Sorting by destination can help the TTE check the tickets of the customers who will be exiting the train soon in order (Priority)

## Routes
- Displays the route of the train from the database by performing a query and displaying on a table
- Contains station name, Arrival and Departure

## Fines
- Opens a form in which you can enter details for a fine for rule violators
- Contains Name, Reason and Amount
- Appropriate exception handling done to take care of empty inputs and very high fine amounts
- Clicking collect fine sends the details to the database and the details can be use to create reports

## Reports
- Reports of checked, unchecked and fined passengers taken from the database using multiple queries
- Details can be sent to Indian Railways for their further use

# OnlineTTE Database details

## Credentials
- Fields contained : Username and Password
- Used to keep track of the credentials used by TTE for logging in

## Train coaches
- Fields contained: Train number and Coach
- Used to load the coach sequence of a train

## Passenger details
- Fields contained: Seat number, Name, Source, Destination, ID proof, Phone number and Status
- Contains all the required details of the passengers travelling on the train to check the tickets. There are also fields to indicate status of checking and unchecking.

## Train routes
- Fields contained: Train number, Station, Arrival and Departure
- Contains the routes of the train selected. Contains all intermediate stations where the train stops and when the train arrives and departs from each station.

## Fines
- Fields contained: Customer name, Reason and Amount
- Contains fields to know how much fine amount is collected and what reason they were fined for.

# How the application looks like
![alt text](https://github.com/mrsurya1304/OnlineTTE/blob/master/samples/Sample1.png)
![alt text](https://github.com/mrsurya1304/OnlineTTE/blob/master/samples/Sample2.png)
![alt text](https://github.com/mrsurya1304/OnlineTTE/blob/master/samples/Sample3.png)
![alt text](https://github.com/mrsurya1304/OnlineTTE/blob/master/samples/Sample4.png)
![alt text](https://github.com/mrsurya1304/OnlineTTE/blob/master/samples/Sample5.png)

# Demo
Link: https://youtu.be/Ze44dY_8jFY

# Future ideas
- Bringing in scanning options so ID proof can be scanned and automatic verification/checking can be done.
- Controls which do not require a TTE. Automatic detection of ID proof if placed on the entrance of a coach.
- Developing this prototype on Android so it can be used as an Android app. (More popular and easily distributable).
- Automatic allotment of RAC passengers quickly based on the available seats which reduces waiting time and increases satisfaction of more customers

# Acknowledgements
- Idea was from me but the style and technogies for development are inspired by Youtube channel Tutus Funny. Some ideas were taken from their Railway Reservation System and some from their Bus Booking system.
- Railway Reservation System series: https://www.youtube.com/watch?v=IFBmnu0-8PI&list=RDCMUCA1UW__WEiBd1bmzyKlBUyw&start_radio=1&rv=IFBmnu0-8PI&t=0
- Bus Booking System series: https://www.youtube.com/watch?v=8PAW1KGHzFM&list=RDCMUCA1UW__WEiBd1bmzyKlBUyw&index=2

