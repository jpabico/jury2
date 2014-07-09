class Ballot < ActiveRecord::Base
  attr_accessible :role, :case_id, :user_id
  validates :case_id, uniqueness: {scope: :user_id}
  belongs_to :user
  belongs_to :case
  validates :user_id, presence: true
end

