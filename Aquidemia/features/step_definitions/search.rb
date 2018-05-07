When("I click on the search button") do
  click_link("Busca")
end

Then("I should see the map") do
  visit('/pages/search')
end