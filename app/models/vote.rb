class Vote < ActiveRecord::Base
  attr_accessible :direction
  belongs_to :comment
  validates :direction, presence: true

end
