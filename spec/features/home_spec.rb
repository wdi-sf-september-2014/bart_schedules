require 'rails_helper'

feature "Home", :type => :feature do
  scenario "visiting the home page" do
    # create a new station, based on the definition
    # of the station factory in spec/factories/stations.rb
    station = create(:station)
    departures = []
    4.times do
        departures << create(:departure, station: station)
    end

    # see https://github.com/jnicklas/capybara#navigating
    visit root_path    

    # see https://github.com/jnicklas/capybara#querying
    expect(page).to have_text("Departures by station")
    expect(page).to have_text(station.name)

    departures.each do |d|
        expect(page).to have_text d.time
    end
  end
end
