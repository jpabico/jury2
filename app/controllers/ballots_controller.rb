class BallotsController < ApplicationController

  def create
    if params[:role] == "plaintiff"
      user_id = Case.find(params[:case_id]).users[0].id
      Ballot.create(user_id: user_id, case_id: params[:case_id], role: params[:role])
    end
    if params[:role] == "defendant"
      user_id = Case.find(params[:case_id]).users[1].id
      Ballot.create(user_id: user_id, case_id: params[:case_id], role: params[:role])
    end
    redirect_to :back
  end


end
