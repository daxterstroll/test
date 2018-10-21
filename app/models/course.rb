class Course < ApplicationRecord
  has_many :users
  has_and_belongs_to_many :class_schedules
end
