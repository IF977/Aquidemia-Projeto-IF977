Given("I am on the about page") do
  visit('pages/about')
end

When("I click on the Github link button") do
  find_link('GitHub').visible?
end

Then("I should see the Github page") do
  href = "https://github.com/gmachamilton/Aquidemia-Projeto-IF977"
  expect(page).to have_selector "a[href='#{href}']", text: "GitHub"
end