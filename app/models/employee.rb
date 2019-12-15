class Employee < ApplicationRecord
  belongs_to :user
  belongs_to :specialty_type
end
