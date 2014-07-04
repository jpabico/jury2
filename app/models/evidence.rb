class Evidence < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :users_cases
end
