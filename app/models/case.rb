class Case < ActiveRecord::Base
  attr_accessible :title, :status, :winner, :summary
  has_many :cases_users
  has_many :users, through: :cases_users
  has_many :comments
  validates :title, presence: true

end
