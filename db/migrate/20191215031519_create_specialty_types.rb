class CreateSpecialtyTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :specialty_types, id: :uuid do |t|
      t.string :type

      t.timestamps
    end
  end
end
