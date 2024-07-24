class InstitutionsController < ApplicationController

  def index
		criteria = Institution.all
    @institutions = criteria.page(params[:page]).per(6)

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  def show
		@institution = Institution.friendly.find(params[:id])
  end

end
