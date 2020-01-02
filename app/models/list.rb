class List < ApplicationRecord
  has_one :child
  has_many :gifts, dependent: :destroy
  has_many :gift_infos, through: :gifts
  accepts_nested_attributes_for :gift_infos

# IL faudra gérer une liste de gift
  def add_gift!(gift_info, child)
    Gift.create!(gift_info_id: gift_info.id, child_id: child.id, list_id: self.id)
  end

end
