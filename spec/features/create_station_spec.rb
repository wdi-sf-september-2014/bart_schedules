require 'rails_helper'

feature "Create station", :type => :feature do
  scenario "Creating a station" do
    visit new_station_path 
  end
end
