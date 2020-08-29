***Settings***
Documentation       Test Case Suite For Changing Products In The Cart

***Test Cases***

#Scenario 1: The User chooses an item from the store and to add to cart
Add An Item To The Cart
    Given I already logged in
    And I searched for dresses or blouses
    When I choose more than one item in results
    And I click in "Add to Cart" button
    Then all items should be added to the cart and the number of items added should be shown


#Scenario 2: The User tries to delete an item from the cart, when there are more than one item
Delete An Item From To The Cart
    Give I add more than one item to the cart 
    When I try to delete an item from to the cart
    Then the item should be deleted to the cart And the mumber of the items should be reduced


#Scenario 3: The User tries to delete an item from the cart, when there are more than one item
Delete all Itens From To The Cart
    Give I add only one item to the cart 
    When I try to delete an item from to the cart
    Then the item should be deleted to the cart And I should see a message "Your shopping cart is empty."

