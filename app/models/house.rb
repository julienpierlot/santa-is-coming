class House < ApplicationRecord
  has_many :children, dependent: :delete_all

  validates :address, :city, presence: true

end
