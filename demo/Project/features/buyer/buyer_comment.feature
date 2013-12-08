Feature: User can give comment for the product
As a guest on the shopping website
I want to give some comment of the product
Background: User had used this product before or wants to give other buyer advice
Given I am on the product page 
Then I will see the discussion board under product information
Scenario: To give comment to the product I am interesting in
(Happy path)
When browsing the product web page
And I want to give comment to the product
Then I type my comment on the discussing board below the product web page 
And click “send”
Then my comment can be viewed on the discussion board
(Sad path)
When browsing the product web page
And I want to give comment to the product
Then I type my comment on the discussing board below the product web page 
And click “send”
Then I will see a message window “failure sending, please try it again”
