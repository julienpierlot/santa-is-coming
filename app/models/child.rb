class Child < ApplicationRecord
  has_one :list, dependent: :destroy
  has_many :gifts
  belongs_to :house
  validates :name, :age, presence: true

  def self.create!(child_params, house_id)
    child = Child.new(child_params)
    child.house_id = house_id
    child.save!
  end

  def create_list!(gift_infos)
    self.list = List.create
    gift_infos.each do |gift_info|
      if gift_info[:name].empty?
        next
      else
        _gift_info = GiftInfo.find_or_create_by(gift_info)
        gift = Gift.create(gift_info: _gift_info, child: self, list: self.list)
        self.gifts << gift
      end
    end
    self.list.save!
    self.save!
  end


end
