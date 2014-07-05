class Case < ActiveRecord::Base
  attr_accessible :title, :status, :winner, :user_1_count, :user_2_count
  has_many :users_cases
  has_many :users, through: :users_cases

  validates :title, presence: true
  validates :status, presence: true



end
