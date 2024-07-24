class Contact < ApplicationRecord

	default_scope { order(created_at: :desc) }

	attr_accessor :use_v2

  # Validations
  validates_presence_of :name, :email, :phone, :message
	validates :email, email: true

	after_create :send_notification_email

	def send_notification_email
		if setting = Setting.first
			email = setting.admin_contact
			unless email.blank?
				begin
					SystemMailer.user_inquiry_notification(self.email, "Thank You For Your Inquiry").deliver
				rescue Exception => e
					puts e.message
					puts e.backtrace.inspect
				end
				begin
					SystemMailer.contact_inquiry_notification(self.id, email, "#{self.name} [Contact Inquiry]").deliver
				rescue Exception => e
					puts e.message
					puts e.backtrace.inspect
				end
			end
		end
	end

end
