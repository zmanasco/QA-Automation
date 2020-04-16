# QA-Automation
This repository will hold the latest changes to QA Automation scripts

JMeter Automation
Table of contents
1.	Introduction
2.	Automation
3.	Why JMeter
4.	Installation
5.	Execution
a.	SQL to SQL
b.	SQL to Azure
c.	Azure to Azure
d.	Cube to Azure

Introduction – JMeter is an open source, Java based application designed for load/performance/functional/stress testing. It was originally designed to test Web applications but has evolved for other test functions.
Automation – Automation testing helps to automate routine tasks and execute test cases multiple times at a scale that is not possible at human level. Imagine comparing the schema or cube measures multiple times in a month, it becomes mundane.
Only the test scenarios which are routine or a scenario which is quick to implement should be candidates for automation.

Why JMeter 
•	Open source (no cost involved)
•	Ability to test many different applications/server/protocol types like
o	Web
o	REST/SOAP Webservices
o	FTP
o	Databases via JDBC (plus power shell in our case for cubes)
•	Full featured IDE allows user flexibility 
•	Multi-threading support for scalability
•	Being open source, it has numerous extensions
•	Scriptable samplers (supports Groovy & Java) in JSR223 and Bean shell

Installation
Download the latest stable release from https://jmeter.apache.org/download_jmeter.cgi
 

Make sure you have Java installed on your machine. Open CMD and type “Java -version”
 

Navigate to JMeter folder
Navigate to Bin
Find the batch file for JMeter and double click, it should launch JMeter
 
The UI will look like this - 
 






 

You can view whether a test passed or failed thru the view results tree listener. Red means fail, Green means passed. SMTP Sampler is used to send an email after test execution, you can use your own email address to send an email.

 

The groovy script in JR223 sampler is used to gather the results after SQL query execution and put them in a csv file for comparison
 
The script in Bean Shell preprocessor above gathers the Assertion results from previous request and appends it in the email body, note this is only for Azure and SQL Databases, not for Cubes





As we get the response in XML format, we gather the results for each measure in the Regular Expression Extractor (user defined variables) and is customizable

 




 

Generating the MDX query for a scenario -  
Connect to SSAS (in the environment required)
Navigate to Database desired
Select the dimensions/measures and execute
Click on the icon in the screen shot below, it will automatically generate the corresponding MDX query. You can then copy paste it in Power Shell script and execute it multiple times

 



 




 







Execution
1.	SQL to SQL
 

•	Right click on SQL to SQL, select Start will start the execution
•	You can view the results in View Results tree
•	Files will be saved as SQLtoSQL1 and SQLtoSQL2 for comparison in excel or Beyond compare










2.	SQL to Azure
 

•	The file will be saved as AzuretoSQL1 and AzuretoSQL2 for comparison


3.	Azure to Azure
 

•	The file will be saved as AzuretoAzure1 and AzuretoAzure2 for comparison







4.	Cube to Azure
 

•	The file will be saved as DivisionEastern1 and DivisionEastern2 for comparison

You can download the latest test plan from GitHub at – 



