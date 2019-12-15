class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees, id: :uuid do |t|
      t.references :user, foreign_key: true
      t.integer :hourly_rate
      t.string :working_hours
      t.boolean :emergence_standby
      t.date :start_date
      t.date :termination_date
      t.references :specialty_type, foreign_key: true

      t.timestamps
    end
  end
end
