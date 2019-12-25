class House < ApplicationRecord
  has_many :children

  validates :address, :city, presence: true

end
