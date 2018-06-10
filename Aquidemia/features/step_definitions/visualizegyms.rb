When("there are gyms near me") do
  expect(page).to have_xpath "//script[contains(., marker)]", visible: false
end

Then("I should see the gym pin") do
  expect(page).to have_xpath "//script[contains(., marker)]", visible: false
end

Given("I am on the search page") do
  visit 'pages/search'
end

When("there are no gyms near me") do
  expect(page).not_to have_xpath "//script[contains(., marker)]"
end

Then("I should not see the gym pin") do
  expect(page).not_to have_xpath "//script[contains(., marker)]"
end
