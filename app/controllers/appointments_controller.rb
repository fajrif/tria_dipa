class AppointmentsController < ApplicationController

	def new
		@appointment = Appointment.new

		unless params[:date].blank?
			dateStr = params[:date]
			date = Date.parse(dateStr)
			day_of_week = date.strftime("%w")
			@appointment.session_date = date

			unless params[:doctor_id].blank?
				if @doctor = Doctor.find_by_id(params[:doctor_id])
					@appointment.doctor = @doctor
					if @schedule = @doctor.schedules.where(day_code: day_of_week).first
						@appointment.session_time = @schedule.get_session_time
					end
				end
			end
		end

    respond_to do |format|
      format.js { render :action => :form }
    end
	end

  def create
		@success = false
		@appointment = Appointment.new(params_appointment)
		@doctor = @appointment.doctor

		unless check_appointment = Appointment.where(email: @appointment.email, session_date: @appointment.session_date, doctor_id: @appointment.doctor_id).first
			if @appointment.save
				@success = true
			end
		else
			@success = true
			@message = "You already made booking with our Specialists"
		end

    respond_to do |format|
      format.js { render :action => (@success == true ? :update : :form) }
    end
  end

  private

  def params_appointment
    params.require(:appointment).permit(:full_name, :email, :phone, :message, :session_date, :session_time, :doctor_id)
  end

	def create_data
	end
end
