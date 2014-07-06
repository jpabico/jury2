class PagesController < ApplicationController

  def main
    @user = User.new
  end

  def test

  end

  def dashboard
  	@target_user = User.find(session[:id])

  	@my_cases = User.find(session[:id]).cases
  	@my_invites = User.find(session[:id]).cases.where(status: "pending")
    
    @active_cases = Case.where(status: "active")
		@closed_cases = Case.where(status: "closed")
  end

end
