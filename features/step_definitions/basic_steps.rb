When("I visit the site") do
    visit root_path
end

Then("I should see {string}") do |content|
    expect(page).to have_content content
end

When("I fill in {string} with {string}") do |element, value|
    fill_in element, with: value
end

When("I click {string}") do |element|
    click_on element
end
