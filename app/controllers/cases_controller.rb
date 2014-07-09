class CasesController < ApplicationController

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
    @case = Case.find(params[:id])
    session[:case_id] = params[:id]
  end

end

