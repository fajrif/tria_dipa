class ContactsController < ApplicationController

	def show
	end

  def create
		@success = false
		@inquiry = Contact.new(params_contact)

		if @inquiry.valid?

			unless @inquiry.use_v2.blank?
				unless TriaDipa::Recaptcha.verify_recaptcha_v2?(params['g-recaptcha-response'], 'contact')
					flash[:alert] = t('global.recaptcha_failed')
					@show_recaptcha_v2 = true
				else
					create_data
				end
			else
				unless TriaDipa::Recaptcha.verify_recaptcha?(params[:recaptcha_token], 'contact')
					flash[:alert] = t('global.recaptcha_failed')
					@show_recaptcha_v2 = true
				else
					create_data
				end
			end

		else
			flash[:alert] = t('inquiries.errors')
		end

    respond_to do |format|
      format.js
    end
  end

  private

  def params_contact
    params.require(:investor_inquiry).permit(:name, :email, :phone, :message, :subject, :use_v2)
  end

	def create_data
		if @inquiry.save
			flash[:notice] = t('inquiries.success')
			@success = true
			@inquiry = Contact.new
		else
			flash[:alert] = t('inquiries.errors')
		end
	end
end
