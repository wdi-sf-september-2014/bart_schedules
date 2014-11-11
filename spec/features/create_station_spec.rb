require 'rails_helper'

feature "Create station", :type => :feature do
  scenario "Creating a station" do
    visit new_station_path 

    # see https://github.com/jnicklas/capybara#interacting-with-forms
    # and see http://www.rubydoc.info/github/jnicklas/capybara/master/Capybara/Node/Actions
    fill_in 'Name', with: 'My new station'
    click_button 'Create'

    expect(page).to have_text 'My new station'
  end
end
