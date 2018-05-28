Feature: Página de detalhes
   As a User
   I want to see the details of a gym
   To have more information about it
   
Scenario: Usuário não está logado
   Given I am on the gyms page
   When I click on the details button
   Then I should see the details and the login link
   
Scenario: Visualizar detalhes
   Given I am logged in
   When I click on the details button
   Then I should see the details and the rating options
   