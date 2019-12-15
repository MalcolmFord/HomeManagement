class CreateUnitTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :unit_types, id: :uuid do |t|
      t.string :type

      t.timestamps
    end
  end
end
