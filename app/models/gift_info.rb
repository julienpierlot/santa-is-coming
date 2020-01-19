class GiftInfo < ApplicationRecord
  has_many :gifts, dependent: :destroy
  has_many :lists, through: :gifts

  validates :name, presence: true
end
