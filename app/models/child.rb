class Child < ApplicationRecord
  has_one :list
  has_many :gifts, dependent: :delete_all
  belongs_to :house

  def self.create!(child_params, house_id)
    child = Child.new(child_params)
    child.house_id = house_id
    child.save!
  end

  def add_gifts_to_list!(gift_infos)
    gift_infos.each do |value|
      gift_info = GiftInfo.find_or_create_by(value)
      gift = Git.create(gift_info: gift_info)
      self.list.gifts << gift
      self.gifts << gift
    end
    self.list.update
    self.update
  end


end
