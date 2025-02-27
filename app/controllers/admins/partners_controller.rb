class Admins::PartnersController < Admins::BaseController
	before_action :set_partner, except: [:index, :new, :create]

  def index
    criteria = Partner.all
    @partners = criteria.page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @partners }
      format.js
    end
  end

  def show
  end

  def new
    @partner = Partner.new
  end

  def create
    @partner = Partner.new(params_partner)
    if @partner.save
      redirect_to admins_partner_path(@partner), :notice => "Successfully created partner."
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    if @partner.update(params_partner)
      redirect_to admins_partner_path(@partner), :notice  => "Successfully updated partner."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @partner.destroy
    redirect_to admins_partners_url, :notice => "Successfully destroyed partner."
  end

  private

  def params_partner
    params.require(:partner).permit(:name, :image)
  end

	def set_partner
		@partner = Partner.find(params[:id])
	end

end
