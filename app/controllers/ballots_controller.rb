class BallotsController < ApplicationController

  respond_to :json

  def create
    Ballot.create(user_id: session[:id], case_id: params[:case_id], role: params[:role])
    if params[:role] == "defendant"
      @myresult =  Ballot.where(:role => "defendant", :case_id => params[:case_id]).count
    elsif params[:role] == "plaintiff"
      @myresult =  Ballot.where(:role => "plaintiff", :case_id => params[:case_id]).count
    end
    render json: {myresult: @myresult}

  end
end
