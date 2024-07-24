class Facility < ApplicationRecord
	extend Mobility
  translates :headline, :description, :description1, :description2

	extend FriendlyId
  friendly_id :name, use: :slugged

	has_one_attached :thumbnail, dependent: :purge
	has_one_attached :image, dependent: :purge
	has_one_attached :image1, dependent: :purge
	has_one_attached :image2, dependent: :purge

  # Validations
  validates_presence_of :name
  validates_presence_of :description
	validates :thumbnail, attached: true
	validates :image, attached: true

	def should_generate_new_friendly_id?
		self.name_changed?
	end

end
