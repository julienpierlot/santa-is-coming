class AddColumnsToModels < ActiveRecord::Migration[6.0]
  def change
    add_column :children, :name, :string
    add_column :children, :age, :integer
    add_column :gift_infos, :name, :string
    add_column :gifts, :open, :boolean
    add_column :houses, :chimney, :boolean
    add_reference :lists, :child, foreign_key: true
    add_reference :lists, :gift, foreign_key: true
  end
end
