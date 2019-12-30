class AddReferencesToGifts < ActiveRecord::Migration[6.0]
  def change
    add_reference :gifts, :list, foreign_key: true
    add_reference :gifts, :child, foreign_key: true
    add_reference :gifts, :gift_info, foreign_key: true
  end
end
