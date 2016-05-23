Installation instructions:
Application installation: ( Since this is run in localhost server, we provide the installation instructions by lauching through eclipse IDE)
1. Download zip file : UIDDemo.zip and extract in folder UIDDemo
2. Open eclipse IDE in JavaEE mode and import the project by file import 
3. Select existing projects into workspace from the import popup 
4. Click on Next
5.Select the root directory by browsing through the file path of the project and click finish.
6.Right click on the project and select properties and chose java build path in the popup window
  - Click on libraries tab and configure the path for JRE system library 
  - In the project expand the folder webcontent > WEB-INF > lib and cut the two postgresql JAR files and place it in C drive
  - Copy those file and paste it in the lib folder to configure its correct path
7. Once the project has been imported, Expand the webcontent folder and run the Home.jsp file 
8. Navigate through other links to test its functionalities.

Backup and Restore PostgreSQL Database:
Steps:
1. Install pgAdmin III
2. Create a connection with server: localhost
			    port: 5432
                            database: postgres
                            username: postgres 
                            password: root
3. Right click on the database 'postgres' and click on 'Restore'.
4. Browse and select the dump file path in 'file name'. [download the dump file: databasedump.dump]
5. Click OK.


You can also pull the project from GitHub and run it. 