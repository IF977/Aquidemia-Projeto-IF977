Given("I am on the gyms page") do
  visit ('pages/gyms')
end

When("I click on the details button") do
  click_link('Detalhes', match: :first)
end

Then("I should see the details and the login link") do
  expect(page).to have_content('Nome')
  expect(page).to have_link('Faça login para avaliar a academia')
end

Given("I am logged in") do
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:google] = OmniAuth::AuthHash.new({
    provider: "google",
    uid: "12345678910",
    info: {
      email: "email@detestes.com",
      first_name: "Gabriel",
      last_name: "MacHamilton"
    },
    credentials: {
      token: "abcdefg12345",
      refresh_token: "12345abcdefg",
      expires_at: Time.current.round,
    }
  })
    visit ('/')
    click_on("Login com Google")
    visit ('pages/gyms')
end

Then("I should see the details and the rating options") do
  expect(page).to have_link('Adicione aos favoritos') or expect(page).to have_link('Remova dos favoritos') 
  expect(page).to have_link('Like')
  expect(page).to have_link('Dislike') 
end