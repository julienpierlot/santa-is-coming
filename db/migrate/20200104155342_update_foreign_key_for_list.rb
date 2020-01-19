class UpdateForeignKeyForList < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key(:children, :lists, on_delete: :cascade)
    add_foreign_key(:children, :lists)
  end
end
