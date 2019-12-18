class ChangeColumnNameOnUnitTypeTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :unit_types, :type, :property_style
  end
end
