class AddForeignKeyForDestroy < ActiveRecord::Migration[6.0]
  def change

    remove_foreign_key :children, :houses
    remove_foreign_key :children, :lists
    remove_foreign_key :gifts, :children
    remove_foreign_key :gifts, :gift_infos
    remove_foreign_key :gifts, :lists
    remove_foreign_key :lists, :children
    remove_foreign_key :lists, :gifts

    add_foreign_key(:children, :houses, on_delete: :cascade)
    add_foreign_key(:children, :lists, on_delete: :cascade)
    add_foreign_key(:gifts, :children, on_delete: :cascade)
    add_foreign_key(:gifts, :gift_infos, on_delete: :cascade)
    add_foreign_key(:gifts, :lists, on_delete: :cascade)
    add_foreign_key(:lists, :children, on_delete: :cascade)
    add_foreign_key(:lists, :gifts, on_delete: :cascade)
  end
end
