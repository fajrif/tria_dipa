class Appointment < ApplicationRecord

	default_scope { order(session_date: :desc) }

	belongs_to :doctor

	validates_presence_of :full_name, :email, :phone, :session_date, :session_time

end
