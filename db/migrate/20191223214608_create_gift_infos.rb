class CreateGiftInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :gift_infos do |t|
      t.string :name
      t.timestamps
    end
  end
end
