class VotesController < ApplicationController


  def create
    Vote.create(comment_id: params[:comment_id], direction: params[:direction], user_id: params[:user_id])
    @like_vote = Vote.where(comment_id: params[:comment_id], direction: "up" ).count
    @dislike_vote = Vote.where(comment_id: params[:comment_id], direction: "down" ).count
    render json: [@like_vote, @dislike_vote, params[:user_id]]
  end
end
