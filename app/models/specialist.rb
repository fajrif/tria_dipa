class Specialist < ApplicationRecord
	extend Mobility
  translates :name, :headline, :description

	extend FriendlyId
  friendly_id :name, use: :slugged

	validates_presence_of :name, :headline, :description
	validates_uniqueness_of :name
	validates :image, attached: true

	has_one_attached :image, dependent: :purge

	has_many :specialities
  has_many :doctors, :through => :specialities

	def should_generate_new_friendly_id?
		self.name_changed?
	end
end
