class Comment < ActiveRecord::Base
  attr_accessible :content, :parent_comment_id, :user_id, :case_id
  has_many :subordinate_comments, class_name: "Comment", foreign_key: "parent_comment_id"
  belongs_to :parent_comment, class_name: "Comment"
  has_many :votes

end
`