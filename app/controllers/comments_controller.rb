class CommentsController < ApplicationController

  def create
    newcomment = Comment.create(body: params[:comment]["body"], case_id: params[:case_id], user_id: session[:id])
    if session[:id]
      render partial: 'new_comment', locals: { comment: newcomment, username: User.find(session[:id]).user_name }
    else
      render json: {status: 404}
    end
  end
end

