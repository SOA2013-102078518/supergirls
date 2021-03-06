Feature: Seller evaluates the buyer after the transaction
As a Seller of supergirls’ closet website.
I can give a score to the buyer of the product
I can do this after I log in
Background: start from evaluation page
Given I have already sold my product
Then I can evaluate the buyer by giving them a score

(happy path)
Scenario:  Give score to buyer correctly 
When I click on buyer’s profile
Then I click on ‘Give Score’
And I can give a score and comment about the buyer
Then the evaluation will be shown for other to see

(sad path)
Scenario:  Give score to buyer incorrectly 
When I click on buyer’s profile
Then I click on ‘Give Score’
And I fill in score and comment about the buyer with “incorrect information”
Then I should be back on Give Score Page
And I should see “That is not a valid score or comment”


