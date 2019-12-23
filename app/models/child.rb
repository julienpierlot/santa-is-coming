class Child < ApplicationRecord
  has_one :list
  has_many :gifts
  belongs_to :house
end
