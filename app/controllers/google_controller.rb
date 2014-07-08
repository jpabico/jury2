class GoogleController < ApplicationController
  def create

    if params[:case_id] == "" || params[:case_id] == nil
      user = User.from_omniauth(env["omniauth.auth"])
      session[:user_id] = user.id

      # Redirect back to original plaintiff url
      redirect_to :controller => 'evidences', :action => 'new', :case_user_plaintiff => session[:case_user_plaintiff]
    else
      user = User.from_omniauth(env["omniauth.auth"])
      session[:user_id] = user.id

      # Redirect back to case/:id page user was on
      redirect_to case_path(session[:case_id])
    end
  end

  def destroy
    if params[:case_id] == "" || params[:case_id] == nil
      # Redirect back to original plaintiff url
      session[:user_id] = nil
      redirect_to :controller => 'evidences', :action => 'new', :case_user_plaintiff => session[:case_user_plaintiff]
    else
      session[:user_id] = nil
      # Redirect back to case/:id page user was on
      redirect_to case_path(session[:case_id])

    end
  end
end

