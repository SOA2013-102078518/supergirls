Feature: user can edit the item they want to sell on supergirls’ closet website
As a member of supergirls’ closet.
I can edit the item Iwant to sell on the website.
I edit the item after I log in

Background: start form logging in website
After I log in, I can see a web page to choose to “sell” or to “buy”
When I choose “to sell”
Then the webpage will link to user profile
In this page, I can see all items I have upload and choose function Edit

Scenario: Edit product information
Given I am on the User management page
When I press “edit product”
Then I should be on the change product information page
When I fill the new item information
And I press Save
Then I will be asked to confirm
When I confirm the change
Then I should be on the new item page
And I should see the new product information that I changed

