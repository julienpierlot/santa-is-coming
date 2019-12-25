class AddReferenceToChild < ActiveRecord::Migration[6.0]
  def change
    add_reference :children, :house, foreign_key: true
  end
end
