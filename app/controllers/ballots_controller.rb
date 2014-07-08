class BallotsController < ApplicationController

  def create
    if params[:role] == "plaintiff"
      Ballot.create(user_id: session[:id], case_id: params[:case_id], role: params[:role])
    end
    if params[:role] == "defendant"
      Ballot.create(user_id: session[:id], case_id: params[:case_id], role: params[:role])
    end
    redirect_to :back
  end


end
