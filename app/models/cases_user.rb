class CasesUser < ActiveRecord::Base
  attr_accessible :case_id,:user_id,:party
  has_one :evidence
  belongs_to :user
  belongs_to :case
  before_save :make_sure_user_exists

  def make_sure_user_exists
    if User.all.map{|x|x.id}.include?(self.user_id)
      return
    end
  end
end
