class Schedule < ApplicationRecord

	default_scope { order(day_code: :asc) }

	belongs_to :doctor

	validates_presence_of :day_name, :day_code

	before_validation :set_day_name

	def set_day_name
		self.day_name = Date::DAYNAMES[self.day_code]
	end

	def get_session_time
		"#{self.start_time} - #{self.end_time}"
	end

end
