class CreateTenantPaymentHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :tenant_payment_histories, id: :uuid do |t|
      t.references :tenant, foreign_key: true
      t.date :date_received
      t.integer :amount_payed
      t.integer :amount_due
      t.string :payment_method
      t.string :confirmation_id

      t.timestamps
    end
  end
end
