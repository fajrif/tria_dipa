class Testimonial < ApplicationRecord

	has_one_attached :photo, dependent: :purge

  # Validations
  validates_presence_of :full_name, :comment
	validates :photo, attached: true

end
