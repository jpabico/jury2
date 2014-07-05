class UsersCases < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :evidences
  belongs_to :user
  belongs_to :case
end
