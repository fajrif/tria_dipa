class Admins::EventsController < Admins::BaseController
	before_action :set_event, except: [:index, :new, :create]

  def index
		criteria = Event.where("title ILIKE ?", "%#{params[:search]}%")
    @events = criteria.page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @events }
      format.js
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params_event)
    if @event.save
			redirect_to admins_event_path(@event.id), :notice => "Successfully created event."
    else
      render :action => 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @event.update(params_event)
			redirect_to admins_event_path(@event.id), :notice  => "Successfully updated event."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @event.destroy
    redirect_to admins_events_url, :notice => "Successfully destroyed event."
  end

  private

  def params_event
    params.require(:event).permit(:date, :title, :description)
  end

  def set_event
		@event = Event.find(params[:id])
  end
end
