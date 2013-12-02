Feature: User can check their product favorite list
As a buyer on the shopping website
I want to check the product in my favorite list
Background: Try to find a product user have viewed and interesting in 
Given I am on the personal profile page
Then I will see “my favorite list”
Scenario: Try to check out the product in favorite list
When I am on the “personal profile page”
And click “my favorite list”
Then I should see the product list that I am interesting in and add into “my favorite list” 

