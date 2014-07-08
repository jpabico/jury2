class CommentsController < ApplicationController

  def create
    p params[:comment]["body"]
    mycomment = Comment.create(body: params[:comment]["body"], case_id: params[:case_id], user_id: session[:id])
    render json: mycomment
  end
end

