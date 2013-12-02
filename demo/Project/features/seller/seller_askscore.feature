Feature: User can request score from buyer

As a Seller of supergirls’ closet website.
I can request a buyer to give me a score
I can do this after I log in


Background: Start from logging in the website

Given I have already sold my product
Then I can ask for a score from the buyer

Scenario:  Request score
When I click on buyer’s profile
Then I click on ‘Request Score’
And I will send out the evaluation request to buyer

