class Child < ApplicationRecord
  has_one :list
  has_many :gifts, dependent: :delete_all
  belongs_to :house

  def self.create!(child_params, house_id)
    child = Child.new(child_params)
    child.house_id = house_id
    child.save!
  end

  def create_list!(gifts)
    gifts.each do |gift|
      gift_info = GiftInfo.find_or_create_by(name: gift.name)
      self.list.gifts << gift
    end
    self.list.save!
  end


end
