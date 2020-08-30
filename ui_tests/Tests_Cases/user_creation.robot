***Settings***
Documentation       Test Suite For User Account Creation

***Test Cases***

#Scenario 1: The User enters correct email
Correct Email
    Given I access the main page
    When I submit my email "bruna.mec51@yahoo.com.br"
    Then it must be authenticated

#Scenario 2: The User does not enter correct email
Incorrect Email
    Given I access the main page
    When I submit my email "bruna.mec51*yahoo.com.br" 
    Then I should see the message "Invalid email address"

#Scenario 3: The User does not enter email
Empty Email Field
    Given I access the main page
    When I don't enter my email
    Then I should see the message "Invalid email address"
    
    