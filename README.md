# OnlineTTE
OnlineTTE is a digital ticket checking app which aims to digitalize the manual checking (currently done by paper ticket charts) of train ticket reservations in India.
This app can help the TTE check tickets faster, reduce the number of TTEs, collect fines from rule violators and generate reports for the Indian Railways.
Most importantly this application can help reduce the wastage of paper by eliminating ticket charts.

# How to run this application on your computer from GitHub
1. Copy the repository link from Github under the Code section
2. Open Netbeans IDE Click on Team -> Git -> Clone
3. Paste the copied repository link on the repository link field
4. Click on Proxy Configuration and click on Test connection. Ensure you get a tick then click OK.
5. Select a convinient path to clone the repository and click Next
6. From the available branches select master branch and click Next
7. Verify the parent directory, check the details and click Finish. (Your project files will be ready in the folder you specified)
8. You can click Open Project to open your project
9. You can ignore the project problems dialog
10. Verify you have the onlinette.sql file for the dummy databases. Go to the cloned project folder and Click OnlineTTE -> database.
11. Open XAAMP server and start the Apache and MySQL services and open the MySQL admin page (phpmyadmin).
12. Click on New to create a new database and name it onlinette then click create.
13. Click on the onlinette database and click on Import
14. Click on Choose file and select the onlinette.sql file then click Go. The required tables for the project will be added
15. Now return to NetBeans and run the project. The project will now work. Enjoy

