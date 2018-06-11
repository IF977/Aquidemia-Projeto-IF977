When("I search with a valid address") do
  fill_in 'address', :with => 'Av. Jorn. Aníbal Fernandes, 500'
end

Then("I should see my position on the map") do
  expect(page).to have_xpath "//script[contains(., marker)]", visible: false
end

When("I search with an invalid address") do
  fill_in 'address', :with => 'zzzzzzzzzzzzzzz'
end

Then("I should not see my position on the map") do
  expect(page).not_to have_xpath "//script[contains(., marker)]"
end