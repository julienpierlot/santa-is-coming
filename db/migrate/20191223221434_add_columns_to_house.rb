class AddColumnsToHouse < ActiveRecord::Migration[6.0]
  def change
    add_column :houses, :address, :string
    add_column :houses, :city, :string
  end
end
