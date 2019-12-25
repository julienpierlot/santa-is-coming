require 'rails_helper'

RSpec.describe Gift, type: :model do

  it "should be closed by default" do
    gift = Gift.new
    expect(gift.open).to eq(false)
  end

end
