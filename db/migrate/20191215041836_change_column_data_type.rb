class ChangeColumnDataType < ActiveRecord::Migration[5.2]
  def change
    change_column :unit_maintenances, :assigned_workers, :string,  array: true
  end
end
