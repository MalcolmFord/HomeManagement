class RenameColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :housing_units, :zip, :zipcode
  end
end
