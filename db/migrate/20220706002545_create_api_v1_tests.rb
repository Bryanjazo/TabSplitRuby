class CreateApiV1Tests < ActiveRecord::Migration[6.1]
  def change
    create_table :api_v1_tests do |t|

      t.timestamps
    end
  end
end
