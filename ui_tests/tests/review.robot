***Settings***
Documentation      Here We Will Have The Test Cases That Will Validate The Sending Of Product Information By Email AND
...                We Will Have Test Cases That Will Validate The Printing Of Product Information                  AND
...                We Will Have Test Cases That Will Validate The Sending Of Product Reviews                       AND

***Test Cases***

#Scenario 1: The User chooses an item from the store and send by email to any friend 
Send Any Products Informations By Email 
    Given I click in "Send to a friend" button
    When I input a name and an email
    And click in "Send" button
    Then the informations should be send properly And i should see a message "Your e-mail has been sent successfully"

#Scenario 2: The User tries to send the informations about any product, but does not enter an email or a name
Empty Email Field And/ Or Empty Name Field
    Given I click in "Send to a friend" button
    When I do not input a name or an email
    And click in "Send" button
    Then I should see a message "You did not fill required fields"


#Scenario 3: The User tries to print the informations about any product
Print The Informations About A Product
    Give I choose an item 
    When I click in "Print" button
    Then the informations requested should be printed properly


#Scenario 3: The User tries to post informations about any product, feeling about the product
Write A Review
    Give I choose an item 
    When I click in "Write a review" button or "Be the first to write your review !" button
    And I input a Title and input a Comment
    And I click in "Send" button
    Then I should see a message "Your comment has been added and will be available once approved by a moderator"