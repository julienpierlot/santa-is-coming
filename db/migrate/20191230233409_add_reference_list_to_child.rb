class AddReferenceListToChild < ActiveRecord::Migration[6.0]
  def change
    add_reference :children, :list, foreign_key: true
  end
end
