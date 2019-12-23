class Gift < ApplicationRecord
  belongs_to :child, :list, :giftInfo
end
