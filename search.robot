***Settings***
Documentation       Test Suite To Search For Store Products

***Test Cases***

#Scenario 1: The user enters a keyword in the "search" field that is not available on the website
Clothes Not Available
    Given I access the main page
    When I input a exemplo incorrect keyword "jeans"
    And I click in search button
    Then I should see the message "No results were found for your search "jeans""

#Scenario 2: The user enters a keyword in the "search" field for a type of dress not available on the website
Dress Not Available
    Given I access the main page
    When I input a exemplo incorrect keyword "tight dress"
    And I click in search button
    Then I should see the message "No results were found for your search "tight dress""

#Scenario 3: The user enters a keyword in the "search" field that is available on the website
Correct Email And Incorrect Password
    Given I access the main page
    When I input a exemplo correct keyword "dress"
    And I click in search button
    Then I should see the options requested
