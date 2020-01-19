class List < ApplicationRecord
  belongs_to :child
  has_many :gifts, dependent: :destroy
  has_many :gift_infos, through: :gifts
  accepts_nested_attributes_for :gift_infos, reject_if: :all_blank, allow_destroy: true

# IL faudra gérer une liste de gift
  def add_gift!(gift_info, child)
    Gift.create!(gift_info_id: gift_info.id, child_id: child.id, list_id: self.id)
  end

end
