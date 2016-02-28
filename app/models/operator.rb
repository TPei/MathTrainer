class Operator < ActiveRecord::Base
  validates :title, :level_id, :operator_name, :sign, :min_number, :max_number, presence: true
  validate :number_logic
  after_create :post_init

  def post_init
    self.is_unary = false if self.is_unary.nil?
    self.floats_allowed = false if self.floats_allowed.nil?
  end

  def number_logic
    if self.max_number.nil? || self.min_number.nil?
      self.errors[:numbers] = 'max_number and min_number cannot be nil'
      return
    end
    unless self.max_number >= self.min_number
      self.errors[:numbers] = 'max_number must be >= min_number'
    end
  end
end
