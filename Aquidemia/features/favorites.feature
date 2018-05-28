Feature: Pagina de favoritos
   As a User
   I want to see all my favorites
   To find gyms quickly

Scenario: Visualizar favoritos 
   Given I am on the home page
   When I click on the favorites button
   Then I should see my favorites
   
Scenario: Usuário precisa de login
   Given I am on the home page
   When I click on the favorites button
   Then I should see the log in link