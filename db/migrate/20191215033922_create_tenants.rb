class CreateTenants < ActiveRecord::Migration[5.2]
  def change
    create_table :tenants, id: :uuid do |t|
      t.references :user
      t.references :housing_unit, foreign_key: true
      t.integer :monthly_rent
      t.date :move_in
      t.date :move_out
      t.string :notes

      t.timestamps
    end
  end
end
