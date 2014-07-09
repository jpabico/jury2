class CommentsController < ApplicationController

  def create
    newcomment = Comment.create(body: params[:comment]["body"], case_id: params[:case_id], user_id: session[:id])
    render partial: 'new_comment', locals: { comment: newcomment, username: User.find(session[:id]).user_name }
  end
end

