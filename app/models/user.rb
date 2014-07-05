require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :email, :user_name
  # linking should be available for both models
  has_many :cases_users
  has_many :cases, through: :cases_users

  # users.password_hash in the database is a :string

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end

