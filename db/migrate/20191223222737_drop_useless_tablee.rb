class DropUselessTablee < ActiveRecord::Migration[6.0]
  def change
    drop_table :tables_on_models
  end
end
