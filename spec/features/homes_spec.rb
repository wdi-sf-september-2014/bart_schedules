require 'rails_helper'

feature "Home", :type => :feature do
  scenario "visiting the home page" do
    # create a new station, based on the definition
    # of the station factory
    station = create(:station)

    visit root_path    

    expect(page).to have_text("Departures by station")
    expect(page).to have_text(station.name)
    save_and_open_page
  end
end
