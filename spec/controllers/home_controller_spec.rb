require 'rails_helper'

RSpec.describe HomeController, :type => :controller do
  describe "GET index" do
    it "asks the Station model to get a list of all stations" do
      expect(Station).to receive(:all)
      get :index
    end

    it "assign to @stations the list of stations that are in the db" do
      get :index

      # expect the controller to set an instance variable
      # @stations, which has an array of stations
      expect(assigns(:stations)).to be_an(ActiveRecord::Relation)
    end

    it "should be ok" do
      get :index
    end
  end
end
