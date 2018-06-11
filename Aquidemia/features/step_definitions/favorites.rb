When("I click on the favorites button") do
  click_link("Favoritos")
end

Then("I should see my favorites") do
  visit('/pages/favorites')
end

When("I am not logged in") do
  visit('/logout')
end

Then("I should see the log in link") do
  expect(page).to have_content('Login com Google')
end