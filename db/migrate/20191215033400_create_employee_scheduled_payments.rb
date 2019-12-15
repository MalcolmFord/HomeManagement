class CreateEmployeeScheduledPayments < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_scheduled_payments, id: :uuid do |t|
      t.references :employee, foreign_key: true
      t.date :payment_date
      t.integer :payment_amount

      t.timestamps
    end
  end
end
