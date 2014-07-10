class CasesController < ApplicationController
  def new
    if session[:id]
      @target_user = User.find(session[:id])
      @my_cases = User.find(session[:id]).cases.order('status').order('created_at')

      @my_invites = User.find(session[:id]).cases.where(status: "pending")

    end
      @active_cases = Case.where(status: "active")
      @closed_cases = Case.where(status: "closed")

  end

  def create
    if User.find_by_user_name(params["defendant_user_name"]) == nil
      redirect_to new_case_path
    else
    new_case = Case.create(title: params[:title], summary: params[:summary])
    @case_user_plaintiff = CasesUser.create(case_id: new_case.id, user_id: session[:id], party: "plaintiff")
    CasesUser.create(case_id: new_case.id, user_id: User.find_by_user_name(params[:defendant_user_name]).id, party: "defendant")
    redirect_to new_evidence_path(:case_user_plaintiff => @case_user_plaintiff)
    end
  end

  def show
    if session[:id]
      @target_user = User.find(session[:id])
      @my_cases = User.find(session[:id]).cases.order('status').order('created_at')

      @my_invites = User.find(session[:id]).cases.where(status: "pending")

    end
      @active_cases = Case.where(status: "active")
      @closed_cases = Case.where(status: "closed")
      @case = Case.find(params[:id])
      session[:case_id] = params[:id]

  end

end

