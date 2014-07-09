class GoogleController < ApplicationController
  def create

    if session[:case_user_plaintiff]
      #When user is coming from a create new case/evidence (starting a new case)
      user = User.from_omniauth(env["omniauth.auth"])
      session[:user_id] = user.id
      # Redirect back to original plaintiff url
      redirect_to :controller => 'evidences', :action => 'new', :case_user_plaintiff => session[:case_user_plaintiff]
    else
      # When user is coming from a case page (responding to a new case)
      user = User.from_omniauth(env["omniauth.auth"])
      session[:user_id] = user.id
      # Redirect back to case/:id page user was on
      redirect_to case_path(session[:case_id])      
    end

  end


  def destroy

    if session[:case_user_plaintiff]
      session[:user_id] = nil
      redirect_to :controller => 'evidences', :action => 'new', :case_user_plaintiff => session[:case_user_plaintiff]
     
    else
      session[:user_id] = nil
      # Redirect back to case/:id page user was on
      redirect_to case_path(session[:case_id])    
    end

  end

end

