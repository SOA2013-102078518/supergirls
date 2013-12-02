Feature: User can search the product on the website
As a buyer on the shopping website
I want to search some product that available on the website
Background: User wants to find some product
Given I am on the Super Girls Shopping website
When I logged in
And chose “I want to buy something”
Then I should see the searching bar function
Scenario: Try to find some product by searching them
When I go to the Super Girls Closet website
Then I type some keyword at the searching bar
And I will see the product list of the related to the keyword

