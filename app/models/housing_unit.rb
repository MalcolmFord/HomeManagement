class HousingUnit < ApplicationRecord
  belongs_to :unit_type
  belongs_to :user
end
