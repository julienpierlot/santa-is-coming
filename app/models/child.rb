class Child < ApplicationRecord
  has_one :list
  has_many :gifts
  belongs_to :house

  def self.create!(child_params, house_id)
    child = Child.new(child_params)
    child.house_id = house_id
    child.save!
  end
end
