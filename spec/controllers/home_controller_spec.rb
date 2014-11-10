require 'rails_helper'

RSpec.describe HomeController, :type => :controller do
  describe "GET index" do
    describe "data retrieval" do
      it "asks the Station model to get a list of all stations" do
        # see https://relishapp.com/rspec/rspec-mocks/docs
        expect(Station).to receive(:all)

        get :index
      end
    end

    describe "response" do
      before :each do
        get :index
      end

      it "assign to @stations the list of stations that are in the db" do
        # we'll test that this array will contain our stations
        # after we push a bunch of newly created stations into it
        stations = []

        # create 4 stations via the factory
        # we picked the number 4 arbitrarily
        # see spec/factories/stations.rb
        4.times do
          # each of these times, we create a station in the database
          # and the result of that creation is pushed into the stations array
          stations << create(:station)
        end
        # see https://www.relishapp.com/rspec/rspec-rails/v/3-1/docs/matchers/activerecord-relation-match-array
        expect(assigns(:stations)).to match_array(stations)
      end

      it "should be ok" do
        # see https://www.relishapp.com/rspec/rspec-rails/docs/matchers/have-http-status-matcher
        expect(response.status).to eq(200)
      end

      it "renders the index template" do
        # see https://www.relishapp.com/rspec/rspec-rails/docs/matchers/render-template-matcher
        expect(response).to render_template('home/index')
      end
    end
  end
end
