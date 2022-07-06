class CreateApiV1Tabs < ActiveRecord::Migration[6.1]
  def change
    create_table :api_v1_tabs do |t|
      t.integer :item_number
      t.string :item_name
      t.integer :item_quantity
      t.integer :item_price
      t.timestamps
    end
  end
end
