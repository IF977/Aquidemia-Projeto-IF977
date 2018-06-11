Feature: Busca por endereço
   As a User
   I want to search by my address
   To find nearby gyms
   
Scenario: O endereço é válido
   Given I am on the search page
   When I search with a valid address
   Then I should see my position on the map

Scenario: O endereço é invalido
   Given I am on the search page
   When I search with an invalid address
   Then I should not see my position on the map
   