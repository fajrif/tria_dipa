class Admins::FacilitiesController < Admins::BaseController
	before_action :set_facility, except: [:index, :new, :create]

  def index
		criteria = Facility.where("name ILIKE ?", "%#{params[:search]}%")
    @facilities = criteria.page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @facilities }
      format.js
    end
  end

  def new
    @facility = Facility.new
  end

  def create
    @facility = Facility.new(params_facility)
    if @facility.save
			redirect_to admins_facility_path(@facility.id), :notice => "Successfully created facility."
    else
      render :action => 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @facility.update(params_facility)
			redirect_to admins_facility_path(@facility.id), :notice  => "Successfully updated facility."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @facility.destroy
    redirect_to admins_facilities_url, :notice => "Successfully destroyed facility."
  end

	def delete_attachment_image
		if @asset = ActiveStorage::Attachment.find(params[:asset_id])
			if field = params[:field]
				if obj = @facility.try(field.to_sym)
					flash[:notice] = "Successfully delete image."
					obj.purge
				end
			end
		end
		redirect_to admins_facility_path(@facility.id)
	end

  private

  def params_facility
    params.require(:facility).permit(:name, :headline, :description, :description1, :description2, :thumbnail, :image, :image1, :image2)
  end

  def set_facility
		@facility = Facility.find(params[:id])
  end
end
