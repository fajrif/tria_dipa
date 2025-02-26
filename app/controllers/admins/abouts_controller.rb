class Admins::AboutsController < Admins::BaseController
  before_action :set_about

  def show
  end

  def edit
  end

  def update
    if @about.update(params_about)
      redirect_to admins_about_path, :notice  => "Successfully updated about."
    else
      render :action => 'edit'
    end
  end

  private

  def params_about
		params.require(:about).permit(:title, :description1, :description2, :vision, :mission)
  end

	def set_about
    @about = About.first
	end

end
