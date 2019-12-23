class CreateGifts < ActiveRecord::Migration[6.0]
  def change
    create_table :gifts do |t|
      t.boolean :open
      t.timestamps
    end
  end
end
