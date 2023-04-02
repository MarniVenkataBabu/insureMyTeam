# Insurance Management Platform

Objective
    
    The objective of this project is to build an insurance management platform using Spring Boot and Java that enables users to manage insurance policies, clients, and claims.
    
    
Technologies Used
    
       1.Spring Boot
       2.Spring Data JPA
       3.Mysql Database
       4.Hibernate
       5.Java
			 
			 
Setup Instructions

            1.Clone the repository to your local machine.
	    2.Install Maven and Java if not already installed.
	    3.Run the following command to start the server: mvn spring-boot:run
	    4.Open a web browser and go to http://localhost:8080/ to access the insurance management platform.
	   
	    or
	    
	    run the springboot main application from the project `src/main/java/com/insuremyteam/insuranceplatform/InsuranceplatformApplication.java
	    	
			
Project Structure


       1.src/main/java/com/insuremyteam/insuranceplatform/ contains the main application code.
       2.src/main/resources/ contains the application properties and database configuration.
       3.src/test/java/com/insuremyteam/insuranceplatform contains the test cases for the application.
			 
	
	
Domain Models


    The following domain models were created for the application:
        
	create database tables from file create-database-tables.sql
	
	 1.`Client`: Represents a client with properties such as name, date of birth, address, and contact information.
         2.`InsurancePolicy`:Represents an insurance policy with properties like policy number, type, coverage amount, premium, start date, and end date. Each policy                                should be associated with a client.
         3.`Claim`: Represents an insurance claim with properties like claim number, description, claim date, and claim status. Each claim should be associated with an                    insurance policy.
			
			
			
RESTful APIs



    The following RESTful APIs were implemented for managing clients, insurance policies, and claims:
	
    Clients
     . GET `http://localhost:8080/api/clients`: Fetch all clients.
     . GET `http://localhost:8080/api/clients/{id}`: Fetch a specific client by ID.
     . POST `http://localhost:8080/api/clients`: Create a new client.
     . PUT `http://localhost:8080/api/clients/{id}`: Update a client's information.
     . DELETE http://localhost:8080/api/clients/{id}`: Delete a client.
			
    Insurance Policies
      . GET `http://localhost:8080/api/policies`: Fetch all insurance policies.
      . GET `http://localhost:8080/api/policies/{id}`: Fetch a specific insurance policy by ID.
      . POST `http://localhost:8080/api/policies`: Create a new insurance policy.
      . PUT `http://localhost:8080/api/policies/{id}`: Update an insurance policy.
      . DELETE `http://localhost:8080/api/policies/{id}`: Delete an insurance policy.
			
    Claims
      . GET `http://localhost:8080/api/claims`: Fetch all claims.
      . GET `http://localhost:8080/api/claims/{id}`: Fetch a specific claim by ID.
      . POST `http://localhost:8080/api/claims`: Create a new claim.
      . PUT `http://localhost:8080/api/claims/{id}`: Update a claim's information.
      . DELETE `http://localhost:8080/api/claims/{id}`: Delete a claim.
		
		
Conclusion:

     This insurance management platform provides users with the ability to manage their insurance-related tasks easily. With the use of Spring Boot and Java, project is easily scalable and maintainable.	
		
		
		
