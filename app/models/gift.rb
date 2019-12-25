class Gift < ApplicationRecord
  belongs_to :child
  belongs_to :list
  belongs_to :giftInfo
end
