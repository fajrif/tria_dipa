class Admins::DoctorsController < Admins::BaseController
	before_action :set_doctor, except: [:index, :new, :create]

  def index
		criteria = Doctor.where("full_name ILIKE ?", "%#{params[:search]}%")

    @doctors = criteria.page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @doctors }
      format.js
    end
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(params_doctor)
    if @doctor.save
			redirect_to admins_doctor_path(@doctor.id), :notice => "Successfully created doctor."
    else
      render :action => 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @doctor.update(params_doctor)
			redirect_to admins_doctor_path(@doctor.id), :notice  => "Successfully updated doctor."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @doctor.destroy
    redirect_to admins_doctors_url, :notice => "Successfully destroyed doctor."
  end

	def delete_attachment_image
		if @asset = ActiveStorage::Attachment.find(params[:asset_id])
			flash[:notice] = "Successfully delete image."
			@doctor.photo.purge
		end
		redirect_to admins_doctor_path(@doctor.id)
	end

  private

  def params_doctor
    params.require(:doctor).permit(:email, :str_no, :profesional_name, :full_name, :title, :phone, :alumni, :photo, :content, specialist_ids: [])
  end

  def set_doctor
		@doctor = Doctor.find(params[:id])
  end
end
