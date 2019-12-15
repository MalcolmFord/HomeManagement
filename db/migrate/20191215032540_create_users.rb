class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, id: :uuid do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :dob
      t.string :email , unique: true
      t.string :password_digest
      t.string :address
      t.string :phone
      t.references :user_account_type, foreign_key: true

      t.timestamps
    end
  end
end
