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

    # Countdown timer feature
    if @case.active_end == nil
      @starting_seconds = 0
    else
      @starting_seconds = @case.active_end - Time.now
    end

    if @starting_seconds <= 0
      @remaining_days = 0
      @remaining_hours = 0
      @remaining_minutes = 0
      @remaining_seconds = 0
    else
      @remaining_days = @starting_seconds.divmod(84000)[0]
      @remaining_hours = @starting_seconds.divmod(84000)[1].divmod(3600)[0]
      @remaining_minutes = @starting_seconds.divmod(84000)[1].divmod(3600)[1].divmod(60)[0]
      @remaining_seconds = @starting_seconds.divmod(84000)[1].divmod(3600)[1].divmod(60)[1].to_int
    end
    
  end

end

