require 'rails_helper'

RSpec.describe Station, :type => :model do  
  it "should have a name" do
    expect(Station.new).to have_db_column(:name)
  end
end