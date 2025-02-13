class SpecialistsController < ApplicationController

  def index
		@meta_title = "Medical specialities at RS Triadipa"
		@meta_desc = "Explore our wide range of medical specialities, including general medicine, pediatrics, gynecology, cardiology, and more."

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
		@specialists = Specialist.all
		@specialist = Specialist.friendly.find(params[:id])
		@doctors = @specialist.doctors

		@meta_title = "#{@specialist.name} specialities | RS Triadipa"
		@meta_desc = "Explore our wide range of medical specialities, including general medicine, pediatrics, gynecology, cardiology, and more."
  end

end
