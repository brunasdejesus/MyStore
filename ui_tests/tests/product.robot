***Settings***
Documentation      Test Case Suite For Product Purchase, Sharing And Wishlisting

***Test Cases***

#Scenario 1: User chooses an item from the store and tries to add to cart
Add Dresses And Blouses To The Cart 
    Given I already logged in
    And I searched for dresses or blouses
    When I choose an item in results
    And I click in "Add to Cart" button
    Then the item should be added to the cart

#Scenario 2: The user tries to buy an item that has been added to the cart
Buy Dresses And Blouses
    Given I already logged in
    And I added an item to the cart
    When I click in "Proceed to checkout" button
    And I do all the purchase steps
    Then I should see all the purchase information in my order history

#Scenario 3: The user tries to share an item in social network
Share An Item In Social Network
    Given I already logged in any Social Network
    When I choose an item 
    And I share a choose item 
    Then sharing should be done properly

 #Scenario 3: The user tries to add an item to the wish list
Add An Item To The Wish List
    Given I already logged in
    When I choose an item 
    And I click in "Add to wishlist" button
    Then the item should be added to the my wishlist and i should see a message "Added to your wishlist."

