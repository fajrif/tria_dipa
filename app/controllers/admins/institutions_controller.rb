class Admins::InstitutionsController < Admins::BaseController
	before_action :set_institution, except: [:index, :new, :create]

  def index
		criteria = Institution.where("name ILIKE ?", "%#{params[:search]}%")
    @institutions = criteria.page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @institutions }
      format.js
    end
  end

  def new
    @institution = Institution.new
  end

  def create
    @institution = Institution.new(params_institution)
    if @institution.save
			redirect_to admins_institution_path(@institution.id), :notice => "Successfully created institution."
    else
      render :action => 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @institution.update(params_institution)
			redirect_to admins_institution_path(@institution.id), :notice  => "Successfully updated institution."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @institution.destroy
    redirect_to admins_institutions_url, :notice => "Successfully destroyed institution."
  end

  private

  def params_institution
    params.require(:institution).permit(:name, :headline, :description, :description1, :description2, :thumbnail, :image, :image1, :image2)
  end

  def set_institution
		@institution = Institution.find(params[:id])
  end
end
