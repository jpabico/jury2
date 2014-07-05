class CasesController < ApplicationController
  def new
    @case = Case.new
  end

  def create
    new_case = Case.create(title: params[:title], summary: params[:summary])
    CasesUser.create(case_id: new_case.id, user_id: session[:id], party: "plaintiff")
    CasesUser.create(case_id: new_case.id, user_id: User.find_by_user_name(params[:defendant_user_name]).id, party: "defendant")
    redirect_to dashboard_path
  end
end
