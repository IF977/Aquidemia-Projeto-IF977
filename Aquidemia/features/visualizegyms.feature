Feature: Academias no mapa
   As a User
   I want to know gym locations
   To know where should I go
   
Scenario: Existem academias próximas
   Given I am on the home page
   When I click on the search button
   And there are gyms near me
   Then I should see the gym pin
   
Scenario: Não existem academias próximas
   Given I am on the home page
   When I click on the search button
   And there are no gyms near me
   Then I should not see the gym pin
