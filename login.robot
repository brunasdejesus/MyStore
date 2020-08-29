***Settings***
Documentation       Test Suite For User Login

***Test Cases***

#Scenario 1: The User enters correct email and correct password, given that the user has already registered 
Correct Email and Correct Password
    Given I access the main page
    When I submit my email "bruna.mec51@yahoo.com.br"
    And I submit my password "548407"
    And I click in "Sign in" button
    Then I should see my account

#Scenario 2: The User enters incorrect email and correct password, given that the user has already registered
Incorrect Email And Correct Password
    Given I access the main page
    When I submit my email "bruna.mec51*yahoo.com.br" 
    And I submit my password "548407"
    And I click in "Sign in" button
    Then I should see the message "Invalid email address."

#Scenario 3: The User enters correct email and incorrect password, given that the user has already registered
Correct Email And Incorrect Password
    Given I access the main page
    When I submit my email "bruna.mec51@yahoo.com.br" 
    And I submit my password "12345"
    Then I should see the message "Authentication failed."

#Scenario 4: The User does not enter email, but inserts the correct password,given that the user has already registered
Empty Email Field And Correct Password
    Given I access the main page
    When I don't enter my email
    And I submit my password "548407"
    Then I should see the message "An email address required." 

#Scenario 5: The User enters email, but does not enter password,given that the user has already registered
Correct Email And Empty Password Field
    Given I access the main page
    When I submit my email "bruna.mec51@yahoo.com.br"
    And I don't enter my password
    Then I should see the message "Password is required."   

