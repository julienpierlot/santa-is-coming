class AddDefaultValueForChimney < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:houses, :chimney, from: nil, to: false)
  end
end
