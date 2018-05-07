When("I click on the favorites button") do
  click_link("Favoritos")
end

Then("I should see my favorites") do
  visit('/pages/favorites')
end