class Case < ActiveRecord::Base
  attr_accessible :title, :status, :winner, :user_1_count, :user_2_count
  has_many :cases_users
  has_many :users, through: :cases_users

  validates :title, presence: true
  validates :status, presence: true



end
