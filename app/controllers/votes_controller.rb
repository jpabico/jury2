class VotesController < ApplicationController


  def create
    Vote.create(comment_id: params[:comment_id], direction: params[:direction], user_id: params[:user_id])
    redirect_to :back
  end
end