class HomeController < ApplicationController

  def index
		# get public home
		@articles = Article.first(4)
		@facilities = Facility.all
  end

  def about
		# get public about
  end

  def terms
		# get public terms
  end

  def privacy
		# get public privacy
  end

  def faq
		# get public faq
		@faqs = Question.all
  end

	def search_schedules
		dateStr = params[:date]
		date = Date.parse(dateStr)
		day_of_week = date.strftime("%w")

		schedules = Schedule.where(day_code: day_of_week)
		unless schedules.empty?
			doctors = schedules.map(&:doctor)
			doctors.uniq!
			@specialist_schedules = doctors.map(&:specialists)
			@specialist_schedules.flatten!
			@specialist_schedules.uniq!

			if params[:specialist_id].blank?
				if @specialist_current = @specialist_schedules.first
					@doctor_schedules = doctors.select { |d| d.specialists.include? @specialist_current }
				end
			else
				specialist_id = params[:specialist_id]
				if @specialist_current = @specialist_schedules.select { |s| s.id == specialist_id.to_i }.first
					@doctor_schedules = doctors.select { |d| d.specialists.include? @specialist_current }
				end
			end
		end

    respond_to do |format|
      format.js
    end
	end

end
