class List < ApplicationRecord
  has_one :child
  has_many :gifts
end
