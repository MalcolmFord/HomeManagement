class ScheduledMaintenance < ApplicationRecord
  belongs_to :housing_unit
  belongs_to :maintenance_type
end
