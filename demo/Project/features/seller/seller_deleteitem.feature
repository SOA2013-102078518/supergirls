Feature: User can delete the item they want to sell on supergirls’ closet website
As a member of supergirls’ closet.
I can delete the an item that was sold already
I delete the item after log in

Background: start form logging in website
After user log in, user can see a web page to choose to sell or to buy
When I choose to sell
Then the webpage will link to user profile
In this page, user can see all items they have upload and choose function Delete

Scenario: Delete a product
Given I am on the User management page
When I press “delete product”
Then I will be asked to confirm
When I confirm to delete the product
Then I should be on the product list page
And I should not see the item on the list

