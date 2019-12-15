class CreateEmployeePaymentHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_payment_histories, id: :uuid do |t|
      t.references :employee, foreign_key: true
      t.integer :amount_owed
      t.integer :amount_payed
      t.date :date_payed
      t.string :payment_method
      t.string :description

      t.timestamps
    end
  end
end
