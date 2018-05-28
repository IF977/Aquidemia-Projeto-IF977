Feature: Favoritar academias
   As a User
   I want to favorite a gym
   To save it on the favorites page
   
Scenario: Adicionar favorito
   Given I am logged in
   Given I am on the details page
   When I click on the favorite button
   Then I should see the gym in my favorites

Scenario: Remover favorito
   Given I am logged in
   Given I am on the details page
   When I click on the favorite button
   Then I should see the option to remove the gym from my favorites