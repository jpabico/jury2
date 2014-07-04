class Case < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :users_cases
  has_many :users through :users_cases

end
