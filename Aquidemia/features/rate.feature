Feature: Favoritar academias
   As a User
   I want to favorite a gym
   To save it on the favorites page
   
Scenario: Avaliar positivamente
   Given I am logged in
   Given I am on the details page
   When I click on the like button
   Then I should see the positive vote confirmation

Scenario: Avaliar negativamente
   Given I am logged in
   Given I am on the details page
   When I click on the dislike button
   Then I should see the negative vote confirmation
   
Scenario: Remover avaliação positiva
   Given I am logged in
   Given I have already liked the gym
   When I click on the like button
   Then I should not see the positive vote confirmation
   
Scenario: Remover avaliação negativa
   Given I am logged in
   Given I have already disliked the gym
   When I click on the dislike button
   Then I should not see the negative vote confirmation