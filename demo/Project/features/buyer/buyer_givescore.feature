Feature: User can give seller an evaluation score of their shopping experience
As a buyer on the shopping website
I can give the evaluation score to the product seller 
Background: After buying the product
Given the seller sending the evaluation request to the buyer
Then I can give the evaluation score to the seller
Scenario: Try to give seller evaluation score and comment
(Happy path)
When I will receive the evaluation invitation
And I can give a score and comment of my trading experience
Then I click “send”
And my message will be showed on seller’s evaluation score history
(Sad path)
When I will receive the evaluation invitation
And I can give a score and comment of my trading experience
Then I click “send”
Then I will see a message window “failure sending, please try it again”
