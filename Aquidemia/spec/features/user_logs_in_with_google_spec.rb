require 'rails_helper'

RSpec.feature "user logs in" do
  scenario "using google oauth2" do
    hash_gen_ominiauth
    visit home_path
    expect(page).to have_link("Login com Google")
    click_link "Login com Google"
    expect(page).to have_content("Gabriel MacHamilton")
    expect(page).to have_link("Sair")
  end
end

def hash_gen_ominiauth
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
      expires_at: DateTime.now,
    }
  })
end