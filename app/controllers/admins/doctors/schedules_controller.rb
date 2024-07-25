class Admins::Doctors::SchedulesController < Admins::BaseController
	before_action :set_doctor

	def new
		@schedule = @doctor.schedules.build

    respond_to do |format|
      format.js { render :action => :form }
    end
	end

  def create
		@success = false
		@schedule = @doctor.schedules.build(params_schedule)
    if @schedule.save
      flash[:notice] = "Successfully add schedule"
			@success = true
			set_schedules
    end

    respond_to do |format|
      format.js { render :action => (@success == true ? :update : :form) }
    end
  end

	def edit
		@schedule = @doctor.schedules.find(params[:id])

    respond_to do |format|
      format.js { render :action => :form }
    end
	end

  def update
		@success = false
		@schedule = @doctor.schedules.find(params[:id])
    if @schedule.update(params_schedule)
      flash[:notice] = "Successfully update schedule"
			@success = true
    end

    respond_to do |format|
      format.js { render :action => (@success == true ? :update : :form) }
    end
  end

  def destroy
		@schedule = @doctor.schedules.find(params[:id])
		@schedule.destroy
		set_schedules
		flash[:notice] = "Schedule deleted."

    respond_to do |format|
      format.js { render :action => :update }
    end
  end

  private

  def params_schedule
		params.require(:schedule).permit(:day_code, :start_time, :end_time)
  end

	def set_doctor
		@doctor = Doctor.find(params[:doctor_id])
	end

	def set_schedules
		@schedules = @doctor.schedules
	end

end
