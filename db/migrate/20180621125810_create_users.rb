class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :password_digest
      t.bigint :phone
      t.boolean :administrator
      t.string :ip
      t.boolean :active

      t.timestamps
    end
  end
end
