class Event < ApplicationRecord

	default_scope { order(date: :desc) }

	validates_presence_of :date, :title

end
