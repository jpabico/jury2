class BallotsController < ApplicationController

  respond_to :json

  def create
    if params[:role] == "defendant"
      Ballot.create(user_id: session[:id], case_id: params[:case_id], role: params[:role])
      @myresult =  Ballot.where(:role => "defendant", :case_id => params[:case_id]).count

    elsif params[:role] == "plaintiff"
      Ballot.create(user_id: session[:id], case_id: params[:case_id], role: params[:role])
      @myresult =  Ballot.where(:role => "plaintiff", :case_id => params[:case_id]).count

    end
    render json: @myresult

  end
end
