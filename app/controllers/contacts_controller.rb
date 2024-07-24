class InvestorInquiriesController < ApplicationController

  def create
		@success = false
		@investor_inquiry = InvestorInquiry.new(params_investor_inquiry)

		if @investor_inquiry.valid?

			unless @investor_inquiry.use_v2.blank?
				unless TriaDipa::Recaptcha.verify_recaptcha_v2?(params['g-recaptcha-response'], 'investor_inquiry')
					flash[:alert] = t('global.recaptcha_failed')
					@show_recaptcha_v2 = true
				else
					create_data
				end
			else
				unless TriaDipa::Recaptcha.verify_recaptcha?(params[:recaptcha_token], 'investor_inquiry')
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

  def params_investor_inquiry
    params.require(:investor_inquiry).permit(:name, :email, :phone, :message, :subject, :company_name, :use_v2)
  end

	def create_data
		if @investor_inquiry.save
			flash[:notice] = t('inquiries.success')
			@success = true
			@investor_inquiry = InvestorInquiry.new
		else
			flash[:alert] = t('inquiries.errors')
		end
	end
end
