class AddReferencesToChild < ActiveRecord::Migration[6.0]
  def change
    add_reference :child, :house, foreign_key: true
    add_reference :child, :list, foreign_key: true 
  end
end
