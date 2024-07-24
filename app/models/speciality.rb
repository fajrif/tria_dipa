class Speciality < ApplicationRecord
	belongs_to :doctor
	belongs_to :specialist
end
