class CasesUser < ActiveRecord::Base
  attr_accessible :case_id,:user_id,:party
  has_many :evidences
  belongs_to :user
  belongs_to :case
end
