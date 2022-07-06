class CreateApiV1Users < ActiveRecord::Migration[6.1]
  def change
    create_table :api_v1_users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :company_name
      
      t.timestamps
    end
  end
end
