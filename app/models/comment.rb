class Comment < ActiveRecord::Base
  attr_accessible :content, :users_cases_id
  has_many :subordinate_comments, class_name: "Comment", foreign_key: "parent_comment_id"
  belongs_to :users_cases
  belongs_to :parent_comment, class_name: "Comment"
  has_many :votes

  validates :users_cases_id, presence: true
end
