class UnitMaintenance < ApplicationRecord
  belongs_to :maintenance_type
  belongs_to :housing_unit
  belongs_to :user
end
