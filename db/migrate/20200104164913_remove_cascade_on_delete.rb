class RemoveCascadeOnDelete < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key(:children, :houses, on_delete: :cascade)
    add_foreign_key "children", "houses"

    remove_foreign_key(:gifts, :children, on_delete: :cascade)
    add_foreign_key "gifts", "children"

    remove_foreign_key(:gifts, :gift_infos, on_delete: :cascade)
    add_foreign_key "gifts", "gift_infos"

    remove_foreign_key(:gifts, :lists, on_delete: :cascade)
    add_foreign_key "gifts", "lists"

    remove_foreign_key(:lists, :gifts, on_delete: :cascade)
    add_foreign_key "lists", "gifts"
  end
end
