class UsersController < ApplicationController

  def create
    @user = User.new(user_name: params["user"]["user_name"],
                     email: params["user"]["email"]
                     )
    @user.password=(params['user']['password'])
    @user.save
    session[:id] = @user.id
    redirect_to dashboard_path

  end

end
