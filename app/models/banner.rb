class Banner < ApplicationRecord

	default_scope { order(order_no: :asc) }

	has_one_attached :image, dependent: :purge
	has_one_attached :video, dependent: :purge

	validates :image, attached: true, content_type: ['image/gif', 'image/png', 'image/jpg', 'image/jpeg'],
										size: { less_than: 50.megabytes, message: 'Image maximum 50MB' }
	validates :video, content_type: ['video/mp4', 'video/webm', 'video/quicktime'],
										size: { less_than: 50.megabytes, message: 'File maximum 50MB' }
	validates_presence_of :title

	def is_video?
		self.video.attached?
	end

end