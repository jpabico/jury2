class CasesController < ApplicationController
  layout "special", except: [:new,:create,:create_case_params,:create_plaintiff_params,:create_defendant_params]

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
    create_case_params
    @new_case = Case.create(@case_params)
    create_plaintiff_params
    create_defendant_params
    @case_user_plaintiff = CasesUser.create(@plaintiff_params)
    CasesUser.create(@defendant_params)
    redirect_to new_evidence_path(:case_user_plaintiff => @case_user_plaintiff)
    end
  end


  def create_case_params
    @case_params = {title: params[:title], summary: params[:summary]}
  end

  def create_plaintiff_params
    @plaintiff_params = {case_id: @new_case.id, user_id: session[:id], party: "plaintiff"}
  end

  def create_defendant_params
    @defendant_params = {case_id: @new_case.id, user_id: User.find_by_user_name(params[:defendant_user_name]).id, party: "defendant"}
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

