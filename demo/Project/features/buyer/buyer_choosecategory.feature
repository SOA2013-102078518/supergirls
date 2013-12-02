Feature: User can list the product by different sort
As a buyer on the shopping website
I want to check the product list by specific sort
Background: User is browsing the shopping web page
Given I am on the Super Girls Closet website
When I logged in
And chose “I want to buy something”
Then I should go to Super Girls Shopping page
Scenario: Try to list product by price/ upload date/ product-checking rate
When I go to the Super Girls Closet Shopping page
And I want to list product in different kind of sort
Then I click “list by price(high-low)”/ “list by price(low-high)”/ “list by product upload date”/ “list by product-checking rate”

