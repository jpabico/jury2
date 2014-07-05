class CasesController < ApplicationController
  def new
    @case = Case.new
  end

  def show
    # @case = Case.find(params[:id])

  end

end
