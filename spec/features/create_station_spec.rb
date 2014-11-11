require 'rails_helper'

feature "Create station", :type => :feature do
  scenario "Creating a station" do
    visit new_station_path 

    fill_in 'Name', with: 'My new station'
    click_button 'Create'

    expect(page).to have_text 'My new station'
  end
end
