class BallotsController < ApplicationController

  respond_to :json

  def create

    p "got the message from JS"
    p params
    if params[:role] == "defendant"
      p "at defendant"
      # user_id = Case.find(params[:case_id]).users[1].id
      Ballot.create(user_id: session[:id], case_id: params[:case_id], role: params[:role])
      @myresult =  Ballot.where(:role => "defendant", :case_id => params[:case_id]).count

    elsif params[:role] == "plaintiff"
      p "at plaintiff"
      # user_id = Case.find(params[:case_id]).users[0].id
      Ballot.create(user_id: session[:id], case_id: params[:case_id], role: params[:role])
      @myresult =  Ballot.where(:role => "plaintiff", :case_id => params[:case_id]).count

    end
    p @myresult
    render json: @myresult

  end
end
