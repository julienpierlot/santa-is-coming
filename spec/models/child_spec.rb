require 'rails_helper'

RSpec.describe Child, type: :model do

  it "has none to begin with" do
    expect(Child.count).to eq 0
  end

end
