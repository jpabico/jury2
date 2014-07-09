class CasesController < ApplicationController
  # def new
  #   @my_case = Case.new
  # end

  def create
    if User.find_by_user_name(params["defendant_user_name"]) == nil
      redirect_to new_case_path
    else
      get_case_params
      @new_case = Case.create(@case_params)
      get_case_user_params("plaintiff")
      @case_user_plaintiff = CasesUser.create(@case_user_params)
      get_case_user_params("defendant")
      CasesUser.create(@case_user_params)
      redirect_to new_evidence_path(:case_user_plaintiff => @case_user_plaintiff)
    end
  end

  def show
    @case = Case.find(params[:id])
    session[:case_id] = params[:id]
  end

  private

  def get_case_params
    @case_params = {title: params[:title], summary: params[:summary]}
  end

  def get_case_user_params(party)
    @case_user_params = {case_id: @new_case.id, user_id: session[:id], party: party}
  end

end

