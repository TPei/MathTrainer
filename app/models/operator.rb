class Operator < ActiveRecord::Base
  validates :title, :operator_name, :sign, :min_number, :max_number, presence: true
  after_create :post_init

  def post_init
    self.is_unary = false if self.is_unary.nil?
    self.floats_allowed = false if self.floats_allowed.nil?
  end
end
