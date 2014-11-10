require 'rails_helper'

RSpec.describe HomeController, :type => :controller do
  describe "GET index" do
    describe "data retrieval" do
      it "asks the Station model to get a list of all stations" do
        expect(Station).to receive(:all)

        get :index
      end
    end

    describe "response" do
      before :each do
        get :index
      end

      it "assign to @stations the list of stations that are in the db" do
        # expect the controller to set an instance variable
        # @stations, which has an array of stations
        expect(assigns(:stations)).to be_an(ActiveRecord::Relation)
      end

      it "should be ok" do
        expect(response.status).to eq(200)
      end

      it "renders the index template" do
        expect(response).to render_template('home/index')
      end
    end
  end
end
