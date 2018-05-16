Then("I should see the time of the classes") do
    expect(page).to have_css("th", :text => 'Horário')
end