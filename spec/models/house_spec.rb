require 'rails_helper'

RSpec.describe House, type: :model do

  describe "validations"

    it "should not be valid" do
      house = House.new
      expect(house).to_not be_valid
    end
    
    it "should be valid" do
      house = House.new(address: Faker::Address.street_address, city: Faker::Address.city)
      expect(house).to be_valid
    end

end
