class AddColumnToChildren < ActiveRecord::Migration[6.0]
  def change
    add_column :children, :behavior, :string, default: "wise"
  end
end
