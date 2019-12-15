class ChangeColumnDataType < ActiveRecord::Migration[5.2]
  def change
    change_column :unit_maintenances, :assigned_workers, :array true
  end
end
