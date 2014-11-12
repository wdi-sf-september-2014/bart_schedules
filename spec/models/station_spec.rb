require 'rails_helper'

RSpec.describe Station, :type => :model do  
  it "should have a name" do
    expect(Station.new).to have_db_column(:name)
  end

  describe "#schedule" do
    it "should return a comma separated schedule of times" do
        station = create(:station)
        departures = []
        4.times do
          departures << create(:departure, station: station)
        end 

        expect(station.schedule).to eq('2:00PM, 2:00PM, 2:00PM, 2:00PM')
    end
  end
end