
#Build REST API with XML payload
#
This example illustrates how to define a REST API that accepts XML payload as the input.
It is complementary to the developer blog [article](http://blogs.mulesoft.com/dev/anypoint-platform-dev/rest-api-with-xml-payload/) that gives step by step instructions to build out this example.


###Assumptions
###
This document describes the details of the example within the context of
Anypoint™ Studio, Mule ESB’s graphical user interface (GUI). Where
appropriate, the XML configuration accompanies the Studio interface
screenshots. This document assumes that you are familiar with Mule ESB,
the [Anypoint Studio
interface](http://www.mulesoft.org/documentation/display/current/
Anypoint+Studio+Essentials)



###Example Use Case
###
In this example we have a XML request that contains customer id. 
We need to look up customer details from a database table for incoming customer id and send back the XML response. 

###Set Up and Run the Example
###

As with other [examples](https://www.mulesoft.com/exchange#!/?types=example), you can create template applications straight out of the box in Anypoint Studio. You can tweak the configurations of these use case-based examples to create your own customized applications in Mule.

Follow the procedure below to create, then run the REST XML payload HowTo example. 
1. In this example we are querying a database table. To use this example project as is, create a table "customer" using this [sql](http://tinyurl.com/gp7g45c)
2. Once the table is created configure the database connector with the details and the driver for the database you are using. Configure the details in file mule-app.properties
3. To test the project use [this](http://tinyurl.com/hcxxkco) sample input request in the API console. Change the customer id in the input request as per the sample data in your db table.
4. If using a different database table make sure to update the select statement in the database connector. Currently it is configured to query "customer" table by fetching the customer id from the incoming request message.
 


###Go Further
To learn how to build this example out check out this [blog]() where we give step by step instrcutions.
###
* View this

