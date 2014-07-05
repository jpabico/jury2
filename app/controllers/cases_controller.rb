class CasesController < ApplicationController
  def new
    @case = Case.new
  end

  def create
    Case.create(title: title[:params], summary: summary[:params])
    CasesUser.create(party: session[:id])
    redirect_to dashboard_path
  end
end
