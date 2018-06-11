When("I click on the like button") do 
  find(:xpath, "/html/body/div[2]/div/div/div/div[1]/div/a[1]").click
end

Then("I should see the positive vote confirmation") do
  expect(page).to have_content('Você avaliou essa academia positivamente')
end

When("I click on the dislike button") do
  find(:xpath, "/html/body/div[2]/div/div/div/div[1]/div/a[2]").click
end

Then("I should see the negative vote confirmation") do
  expect(page).to have_content('Você avaliou essa academia negativamente')
end

Given("I have already liked the gym") do
  visit('/gyms/1')
  find(:xpath, "/html/body/div[2]/div/div/div/div[1]/div/a[1]").click
end

Then("I should not see the positive vote confirmation") do
  expect(page).to have_no_content('Você avaliou essa academia positivamente')
end

Given("I have already disliked the gym") do
  visit('/gyms/1')
  find(:xpath, "/html/body/div[2]/div/div/div/div[1]/div/a[2]").click
end

Then("I should not see the negative vote confirmation") do
  expect(page).to have_no_content('Você avaliou essa academia negativamente')
end