class PagesController < ApplicationController

  def main
    @user = User.new
  end

  def test

  end

  def dashboard
    @mycases = User.find(session[:id]).cases

  end

end
