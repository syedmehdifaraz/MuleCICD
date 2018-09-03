#Build SOAP web service over a mysql DB lookup
#
This example illustrates how to define a SOAP based webservice on top of
a database lookup operation. 
It is complementary to a developer blog
series that gives step by step instructions to build out this example.



###Assumptions
###
This document describes the details of the example within the context of
Anypoint™ Studio, Mule ESB’s graphical user interface (GUI). Where
appropriate, the XML configuration accompanies the Studio interface
screenshots. This document assumes that you are familiar with Mule ESB,
the [Anypoint Studio
interface](http://www.mulesoft.org/documentation/display/current/
Anypoint+Studio+Essentials), MySQL, the [database
connector](http://www.mulesoft.org/documentation/display/current/
Database+Connector) and
[DataSense](http://www.mulesoft.org/documentation/display/current/
Database+Connector).

###Example Use Case
###
In this example a mysql database table holds records for loan information. 
We will define a sql query to lookup these records using either loanId or customerId as the search parameter.
To enable external consumers to use this functionality we will wrap the db lookup with a SOAP over HTTP webservice. 
The consumer can then send in a SOAP request with input parameter and get the loan details in the corresponding SOAP response. 
  
###Set Up and Run the Example
###
1. **[Download and setup the MySQL
driver](http://dev.mysql.com/doc/refman/5.7/en/installing.html)** in
it's default location. You can even check out some of the YouTube videos
for assistance with this step.

2. **Start the MySQL server** from System Preferences



3. Open the Example project in Anypoint Studio from [Anypoint
Exchange](http://www.mulesoft.org/documentation/display/current/Anypoint
+Exchange). 

4. Open src/main/resources/loan.sql and run it in your mysql instance. This script will create a table name "loan" and load it with mock data. 


5. **Open soap-on-db.xml file** located in
src/main/app directory. Set **url** attribute of the
**db:mysql-config** element to:

	  <db:mysql-config name="MySQL_Configuration" host="localhost" port="3306" user="<username>" password="<password>" database="bank" doc:name="MySQL Configuration"/>

Configure the username and password as per the database being used. 		



6. Run the example application in Anypoint Studio or Standalone

7. Open up SOAP UI. Create a new project and point it to the wsdl url http://localhost:8081/bank/loan?wsdl
   In the request message populate the loanId or customerId for the lookup and press send. 



###Go Further
###
* View this

