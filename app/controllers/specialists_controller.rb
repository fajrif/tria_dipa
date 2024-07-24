class SpecialistsController < ApplicationController

  def index
		unless params[:search]
			criteria = Specialist.all
		else
			criteria = Specialist.where("name LIKE ? or headline LIKE ? or description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
		end
    @specialists = criteria

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  def show
		@specialist = Specialist.friendly.find(params[:id])
		@doctors = @specialist.doctors
  end

end
