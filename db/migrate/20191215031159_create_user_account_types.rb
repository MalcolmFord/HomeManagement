class CreateUserAccountTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_account_types, id: :uuid do |t|
      t.string :type

      t.timestamps
    end
  end
end
