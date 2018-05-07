Given("I am on the home page") do
    visit "/"
end

When("I click on the about button") do
  click_link("About")
end

Then("I should see the information on a new page") do
  visit "/pages/about"
end
