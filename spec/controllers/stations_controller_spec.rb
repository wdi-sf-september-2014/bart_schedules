require 'rails_helper'

RSpec.describe StationsController, :type => :controller do

  describe "GET new" do
    before :each do
      get :new
    end

    it "returns http success" do
      # see https://www.relishapp.com/rspec/rspec-rails/v/3-1/docs/matchers/have-http-status-matcher
      expect(response).to have_http_status(:success)
    end

    it "assigns a new @station" do
      expect(assigns(:station)).to be_a_new(Station)
    end
  end

  describe "POST create" do
    it "should redirect to the newly created station" do
      post :create, station: { name: "new station" }

      # expect the controller to redirect to the 
      # show_station route (by convention)
      # see: https://www.relishapp.com/rspec/rspec-rails/v/3-1/docs/matchers/redirect-to-matcher
      expect(response).to redirect_to(assigns(:station))
    end
  end

  describe "GET show" do
    it "should assign @station" do
      station = create(:station)
      get :show, id: station.id
      expect(assigns(:station).id).to eq(station.id)
    end
  end

end
