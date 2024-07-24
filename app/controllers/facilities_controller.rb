class FacilitiesController < ApplicationController

  def index
		criteria = Facility.all
    @facilities = criteria.page(params[:page]).per(6)

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  def show
		@facility = Facility.friendly.find(params[:id])
  end

end
