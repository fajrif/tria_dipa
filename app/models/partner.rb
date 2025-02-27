class Partner < ApplicationRecord

	default_scope { order(id: :asc) }

	validates_presence_of :name
	validates_uniqueness_of :name
	validates :image, attached: true, content_type: ['image/gif', 'image/png', 'image/jpg', 'image/jpeg'],
										size: { less_than: 50.megabytes, message: 'Image maximum 50MB' }

	has_one_attached :image, dependent: :purge

end
