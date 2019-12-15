class CreateScheduledMaintenances < ActiveRecord::Migration[5.2]
  def change
    create_table :scheduled_maintenances, id: :uuid do |t|
      t.references :housing_unit, foreign_key: true
      t.references :maintenance_type, foreign_key: true
      t.date :date
      t.time :time
      t.string :assigned_workers , array: true
      t.boolean :completed
      t.date :date_completed
      t.text :description

      t.timestamps
    end
  end
end
