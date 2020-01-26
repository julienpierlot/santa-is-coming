class House < ApplicationRecord
  has_many :children, dependent: :delete_all

  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
