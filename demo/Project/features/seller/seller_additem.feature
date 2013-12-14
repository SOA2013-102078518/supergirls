Feature: user can upload the item they want to sell on supergirls’ closet website
As a member of Supergirls’ closet.
User can upload the item they want to sell on the website.
User can upload the item after they log in.

Background: start form logging in website
Given I log in, I can see a web page to choose “to sell” or  “to buy”
When I choose “to sell”
Then the webpage will link to user management page
Then I can see all items I have upload and choose function Add
Scenario: Add new product correctly 
(happy path)
Given I am on the User management page
When I press “add new product”
Then I should be on the Upload new item page
When I fill In product information correctly
And I press save
Then I will be asked to confirm
When I confirm the change
Then I should be on the new item page
And I should see the product information that I upload

Scenario: Add new product with wrong information(sad path) 
Given I am on the User management page
When I press “add new product”
Then I should be on the Upload new item page
When I fill product information with “incorrect information”
And I press save
Then I should be back on Upload new item page
And I should see “Please check that the information you entered is correct”

