class EvidencesController < ApplicationController

  def new
    session[:case_user_plaintiff] = params[:case_user_plaintiff]
  end

  def create
    if params[:case_id].blank?
      @evidence = Evidence.create!({
        argument: params["argument"],
        video_url: params["video_url"],
        photo_url: params["photo_url"],
        cases_user_id: params["case_user_plaintiff"]
      })

      redirect_to dashboard_path
    else
      cases_user = CasesUser.find_by_user_id_and_case_id(session[:id], params[:case_id])

      @evidence = Evidence.create!({
        argument: params["argument"],
        video_url: params["video_url"],
        photo_url: params["photo_url"],
        cases_user_id: cases_user.id
      })

      kase = Case.find(params[:case_id])
      kase.update_attributes!(status: "active", active_start: Time.now)

      redirect_to dashboard_path
    end
  end

end
