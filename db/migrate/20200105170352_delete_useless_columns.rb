class DeleteUselessColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column(:lists, :gift_id)
  end
end
