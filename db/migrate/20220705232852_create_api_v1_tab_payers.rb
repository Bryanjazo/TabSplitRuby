class CreateApiV1TabPayers < ActiveRecord::Migration[6.1]
  def change
    create_table :api_v1_tab_payers do |t|
      t.string :name
      t.string :email
      t.integer :phone_number
      t.integer :amount_of_people
      t.integer :confirmation_number
      t.timestamps
    end
  end
end
