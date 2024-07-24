class Admins::SpecialistsController < Admins::BaseController
	before_action :set_specialist, except: [:index, :new, :create]

  def index
		if params[:search].blank?
			criteria = Specialist.all
		else
			criteria = Specialist.where("name ->> :key ILIKE :value", key: I18n.locale.to_s, value: "%#{params[:search]}%")
		end

    @specialists = criteria.page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @specialists }
      format.js
    end
  end

  def new
    @specialist = Specialist.new
  end

  def create
    @specialist = Specialist.new(params_specialist)
    if @specialist.save
			redirect_to admins_specialist_path(@specialist.id), :notice => "Successfully created specialist."
    else
      render :action => 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @specialist.update(params_specialist)
			redirect_to admins_specialist_path(@specialist.id), :notice  => "Successfully updated specialist."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @specialist.destroy
    redirect_to admins_specialists_url, :notice => "Successfully destroyed specialist."
  end

  private

  def params_specialist
    params.require(:specialist).permit(:image, :name, :headline, :description)
  end

  def set_specialist
		@specialist = Specialist.find(params[:id])
  end
end
