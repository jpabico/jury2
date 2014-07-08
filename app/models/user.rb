require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :email, :user_name, :password
  # linking should be available for both models
  has_many :cases_users
  has_many :cases, through: :cases_users

  has_many :comments

  # users.password_hash in the database is a :string

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  # Additions for Google oAuth
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

end

