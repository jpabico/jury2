class Evidence < ActiveRecord::Base
  attr_accessible :argument, :mediatype, :party, :users_cases_id
  belongs_to :users_cases

  validates :argument, presence: true
  validates :mediatype, presence: true
  validates :party, presence: true

  validates :users_cases_id, presence: true
end
