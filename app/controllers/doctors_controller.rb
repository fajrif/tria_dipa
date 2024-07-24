class DoctorsController < ApplicationController

  def index
		unless params[:search]
			criteria = Doctor.all
		else
			criteria = Specialist.where("professional_name LIKE ? or full_name LIKE ? or title LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
		end
    @doctors = criteria.page(params[:page]).per(12)

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  def show
		@doctor = Doctor.friendly.find(params[:id])
		# Other Doctors
		@doctors = []
		if @doctor
			@doctors = @doctor.find_other_doctors(4)
		end
  end

end
