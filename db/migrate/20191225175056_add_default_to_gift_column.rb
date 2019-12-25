class AddDefaultToGiftColumn < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:gifts, :open, from: nil, to: false)
  end
end
