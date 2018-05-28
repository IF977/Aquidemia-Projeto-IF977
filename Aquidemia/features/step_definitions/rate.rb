When("I click on the like button") do 
  click_link('Like')
end

Then("I should see the positive vote confirmation") do
  expect(page).to have_content('Você avaliou essa academia positivamente')
end

When("I click on the dislike button") do
  click_link('Dislike')
end

Then("I should see the negative vote confirmation") do
  expect(page).to have_content('Você avaliou essa academia negativamente')
end

Given("I have already liked the gym") do
  visit('/gyms/1')
  click_link('Like')
end

Then("I should not see the positive vote confirmation") do
  expect(page).to have_no_content('Você avaliou essa academia positivamente')
end

Given("I have already disliked the gym") do
  visit('/gyms/1')
  click_link('Dislike')
end

Then("I should not see the negative vote confirmation") do
  expect(page).to have_no_content('Você avaliou essa academia negativamente')
end