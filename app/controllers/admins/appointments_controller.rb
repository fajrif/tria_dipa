class Admins::AppointmentsController < Admins::BaseController
	before_action :set_appointment, except: [:index, :new, :create]

  def index
		criteria = Appointment.where("full_name ILIKE ?", "%#{params[:search]}%")
    @appointments = criteria.page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @appointments }
      format.js
    end
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(params_appointment)
    if @appointment.save
			redirect_to admins_appointment_path(@appointment.id), :notice => "Successfully created appointment."
    else
      render :action => 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @appointment.update(params_appointment)
			redirect_to admins_appointment_path(@appointment.id), :notice  => "Successfully updated appointment."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @appointment.destroy
    redirect_to admins_appointments_url, :notice => "Successfully destroyed appointment."
  end

  private

  def params_appointment
    params.require(:appointment).permit(:full_name, :email, :phone, :message, :doctor_id, :session_date, :session_time)
  end

  def set_appointment
		@appointment = Appointment.find(params[:id])
  end
end
