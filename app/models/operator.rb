class Operator < ActiveRecord::Base
  has_and_belongs_to_many :exercise_types
end
