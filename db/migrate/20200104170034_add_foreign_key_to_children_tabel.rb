class AddForeignKeyToChildrenTabel < ActiveRecord::Migration[6.0]
  def change
    # remove_foreign_key "children", "lists"
    # add_foreign_key "children", "lists", on_delete: :cascade
    # remove_foreign_key "gifts", "lists"
    # add_foreign_key "gifts", "lists", on_delete: :cascade
    remove_foreign_key "lists", "children"
    remove_foreign_key "gifts", "children"
  end
end
