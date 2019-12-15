class CreateUnitMaintenances < ActiveRecord::Migration[5.2]
  def change
    create_table :unit_maintenances, id: :uuid do |t|
      t.references :maintenance_type, foreign_key: true
      t.references :housing_unit, foreign_key: true
      t.integer :cost_of_supplies
      t.integer :cost_of_labor
      t.date :date_reported
      t.date :date_fixed
      t.time :start_time
      t.time :end_time
      t.string :assigned_workers , array: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
