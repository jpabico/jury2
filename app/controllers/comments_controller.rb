class CommentsController < ApplicationController

  def create
    p "###----------------------------"
    p params
    Comment.create(content: params[:comment], case_id: params[:case_id], user_id: session[:id])
    # redirect_to :back
  end

end

