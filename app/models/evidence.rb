class Evidence < ActiveRecord::Base
  attr_accessible :argument, :video_url, :photo_url, :cases_user_id

  validates :argument, presence: true
  validates :cases_user_id, presence: true
end
