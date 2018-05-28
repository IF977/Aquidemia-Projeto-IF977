Given("I am on the details page") do
  visit ('/gyms/1')
end

When("I click on the favorite button") do
  click_on('Adicione aos favoritos')
end

Then("I should see the gym in my favorites") do
  visit ('/')
  visit ('pages/favorites')
  expect(page).to have_content('POLO ESEF')
end

Then("I should see the option to remove the gym from my favorites") do
  expect(page).to have_link('Remova dos favoritos')
end