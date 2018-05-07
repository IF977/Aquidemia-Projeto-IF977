When("I click on the Github link button") do
  find_link('Github link').visible?
end

Then("I should see the Github page") do
  href = "https://github.com/gmachamilton/Aquidemia-Projeto-IF977"
  expect(page).to have_selector "a[href='#{href}']", text: "Github link"
end