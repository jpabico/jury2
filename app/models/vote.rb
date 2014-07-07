class Vote < ActiveRecord::Base
  attr_accessible :direction, :comment_id, :user_id
  belongs_to :comment
  belongs_to :user
  validates :direction, presence: true
  validates :comment_id, presence: true
  validates :user_id, uniqueness: {scope: :comment_id}

end
