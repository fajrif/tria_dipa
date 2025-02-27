class CareersController < ApplicationController

  def index
		criteria = Career.all
    @careers = criteria.page(params[:page]).per(6)

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  def show
		@career = Career.find(params[:id])
  end

end
