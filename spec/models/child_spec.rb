require 'rails_helper'

RSpec.describe Child, type: :model do

  describe 'validations'
    it "should not be valid" do
      child = Child.new
      expect(child).to_not be_valid
    end

    it "should be valid" do
      house = House.create
      child = Child.create(name: Faker::Name.name, age: Faker::Number.number(digits: 2), house: house)
      expect(child).to be_valid
    end

end
