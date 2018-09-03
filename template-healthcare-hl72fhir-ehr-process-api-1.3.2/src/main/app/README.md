# Template Healthcare HL7 to FHIR EHR Event Handler

+ [License Agreement](#licenseagreement)
+ [Use Case](#usecase)
+ [Considerations](#considerations)
	* [Cloudhub security considerations](#cloudhubsecurityconsiderations)
+ [Run it!](#runit)
	* [Running on premise](#runonopremise)
	* [Running on Studio](#runonstudio)
	* [Running on Mule ESB stand alone](#runonmuleesbstandalone)
	* [Running on CloudHub](#runoncloudhub)
	* [Deploying your Anypoint Template on CloudHub](#deployingyouranypointtemplateoncloudhub)
	* [Properties to be configured (With examples)](#propertiestobeconfigured)

# License Agreement <a name="licenseagreement"/>
Note that using this template is subject to the conditions of this [License Agreement](AnypointTemplateLicense.pdf).
Please review the terms of the license before downloading and using this template. In short, you are allowed to use the template for free with Mule ESB Enterprise Edition, CloudHub, or as a trial in Anypoint Studio.

# Use Case <a name="usecase"/>

As an EHR user I want a microservice to listen for various [HL7](http://hl7.org) events originating from the EHR system, transform the events to FHIR standard and use Salesforce Health Cloud System API to save the data.

This template should serve as a foundation for implementing above mentioned target. The template uses [HL7 Global Connector](https://docs.mulesoft.com/mule-healthcare-toolkit/v/3.7/) to receive data from an EHR system in HL7 (ER7) format and transforms it to JSON following the FHIR specification [version 1.0.2 (DSTU2)](https://www.hl7.org/FHIR/DSTU2/index.html). 

HL7 to FHIR EHR Event Handler is part of the Healthcare Templates Solution. This template contains HL7 MLLP connector which listens for HL7 events from EHR system. When message is received, it is asynchronously transformed to HL7 XML representation by HL7 Encoding transformer and depending on the type of event, various actions are triggered. The received HL7 message is acknowledged back to the originating system.

This template contains transformations for 2 FHIR resources - Patient and Observation. Please note that the events chosen for these transformations are just informational and must be verified for the concrete integration case. This template was developed using HL7 messages of version 2.3.1. If you are using different version of HL7, you must change the transformations accordingly.

Transformations for each resource are done in separate subflows. Each subflow contains the DataWeave transformer (HL7 XML to FHIR JSON) in order to create FHIR resource and HTTP request connector (configured using Salesforce EHR System API RAML) which sends the FHIR resource to the Salesforce Health Cloud System API in order for it to be saved. The DataWeave transformer contains the example XML payload so that the realtime preview of the transformation can be seen at the design time. XML schemas for different HL7 versions are available [here](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=214)

You can test the application by sending HL7 messages from [HAPI TestPanel](http://hl7api.sourceforge.net/hapi-testpanel/). HAPI TestPanel also allows you to convert between ER7 (pipe and hat) and XML representations of HL7 format.


# Considerations <a name="considerations"/>

To run this Anypoint Template, there are certain preconditions that must be considered. **Failling to do so could lead to unexpected behavior of the template.**

# Run it! <a name="runit"/>
Simple steps to get Healthcare HL7 to FHIR EHR Event Handler running.
See below.

## Running on premise <a name="runonopremise"/>
In this section we detail the way you should run your Anypoint Template on your computer.


### Where to Download Anypoint Studio and Mule ESB
First thing to know if you are a newcomer to Mule is where to get the tools.

+ You can download Mule Studio from this [Location](https://www.mulesoft.com/platform/studio)
+ You can download Mule ESB from this [Location](http://www.mulesoft.com/platform/soa/mule-esb-open-source-esb)

### Importing an Anypoint Template into Studio
Anypoint Studio offers several ways to import a project into the workspace, for instance: 

+ Anypoint Studio generated Deployable Archive (.zip)
+ Anypoint Studio Project from External Location
+ Maven-based Mule Project from pom.xml
+ Mule ESB Configuration XML from External Location

You can find a detailed description on how to do so in this [Documentation Page](http://www.mulesoft.org/documentation/display/current/Importing+and+Exporting+in+Studio).

### Running on Studio <a name="runonstudio"/>
Once you have imported you Anypoint Template into Anypoint Studio you need to follow these steps to run it:

+ Complete all properties in one of the property files, for example in mule.prod.properties and run your app with the corresponding environment variable. To follow the example, this will be `mule.env=prod`
+ Complete all the properties required as per the examples in the section [Properties to be configured](#propertiestobeconfigured)
+ Once that is done, right click on you Anypoint Template project folder 
+ Hover you mouse over `"Run as"`
+ Click on  `"Mule Application"`

### Running on Mule ESB stand alone <a name="runonmuleesbstandalone"/>
Complete all properties in [mule-app.properties](../master/src/main/app/mule-app.properties) and run your app. 

## Running on CloudHub <a name="runoncloudhub"/>
While [creating your application on CloudHub](http://www.mulesoft.org/documentation/display/current/Hello+World+on+CloudHub) (Or you can do it later as a next step), you need to go to `"Manage Application"` > `"Properties"` to set all environment variables detailed in **Properties to be configured**.
Follow other steps defined [here](#runonpremise) and once your app is all set and started, there is no need to do anything else.

### Deploying your Anypoint Template on CloudHub <a name="deployingyouranypointtemplateoncloudhub"/>
Anypoint Studio provides you with really easy way to deploy your Template directly to CloudHub, for the specific steps, please check this [link](http://www.mulesoft.org/documentation/display/current/Deploying+Mule+Applications#DeployingMuleApplications-DeploytoCloudHub)


## Properties to be configured (With examples) <a name="propertiestobeconfigured"/>
In order to use this Mule Anypoint Template you need to configure properties (Credentials, configurations, etc.) either in properties file or in CloudHub as Environment Variables. Detail list with examples:

### Application properties
 + hl7.host `0.0.0.0`
 + hl7.port `2575`
 + system-api.host `healthcare-fhir2sfdc-ehr-system-api.cloudhub.io`
 + system-api.port `80`