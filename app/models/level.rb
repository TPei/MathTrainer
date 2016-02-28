class Level < ActiveRecord::Base
  validates :title, presence: true
end
