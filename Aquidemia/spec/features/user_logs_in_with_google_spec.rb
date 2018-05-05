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
  # Generates fake oauth data for login
  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[:google] = OmniAuth::AuthHash.new({

  })
end