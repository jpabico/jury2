class Evidence < ActiveRecord::Base
  attr_accessible :argument, :mediatype, :party, :cases_user_id
  belongs_to :cases_user

  validates :argument, presence: true
  validates :mediatype, presence: true
  validates :party, presence: true

  validates :cases_user_id, presence: true
end
