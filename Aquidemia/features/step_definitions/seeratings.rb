When("I click on the Gyms button") do
  click_link("Academias")
end

Then("I should see the grades") do
    expect(page).to have_css("th", :text => 'Avaliação')
end
