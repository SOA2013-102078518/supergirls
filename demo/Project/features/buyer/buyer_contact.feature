Feature: User can contact seller by leaving a message
As a buyer on the shopping website
I want to check the product information with the seller
Background: Asking product status and buying product 
Given I am on the product page
Then I will see “Contact seller”
Scenario: Try to contact to seller
(Happy path)
When browsing the product web page
And want to ask seller for product
Then click “contact to seller” 
And type the message I want to send for seller and click “send”
Then I will leave a message in seller’s message inbox 
(Sad path)
When browsing the product web page
And want to ask seller for product
Then click “contact to seller”
And type the message I want to send for seller and click “send”
Then I will see a message window “failure sending, please try it again”
