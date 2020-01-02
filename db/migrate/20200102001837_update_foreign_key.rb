class UpdateForeignKey < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key(:lists, :children, on_delete: :cascade)
    add_foreign_key(:lists, :children)
  end
end
