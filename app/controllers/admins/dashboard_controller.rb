class Admins::DashboardController < Admins::BaseController

  def index
		@total_articles = Article.count
		@total_events = Event.count
		@total_testimonials = Testimonial.count
		@total_facilities = Facility.count
  end

end
