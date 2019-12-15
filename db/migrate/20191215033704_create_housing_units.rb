class CreateHousingUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :housing_units, id: :uuid do |t|
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :spft
      t.integer :beds
      t.integer :baths
      t.text :description
      t.integer :rooms
      t.references :unit_type, foreign_key: true
      t.references :user, foreign_key: true
      t.date :available_date
      t.integer :rent

      t.timestamps
    end
  end
end
