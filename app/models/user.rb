<<<<<<< HEAD
require 'bcrypt'

class User < ActiveRecord::Base
  # users.password_hash in the database is a :string
    attr_accessible :email, :user_name

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
=======

>>>>>>> 9b843ee346dcbc3c38edea4130de573b7b3b1b6d
