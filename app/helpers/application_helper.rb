module ApplicationHelper

	def mobile_device?
		request.user_agent =~ /Mobile|webOS/
	end

	def get_latest_year_options(num=5)
		current_year = Date.today.year
		years = []
		num.times do |n|
			years << current_year - n
		end
		years
	end

	def truncate_text(title, length=30)
		truncate(title, length: length, omission: "...")
  end

	def truncate_paragraph(desc, length=0)
		if length > 0
			truncate(Nokogiri::HTML.parse(desc).css('div')[0].text, length: length, omission: "...")
		else
			Nokogiri::HTML.parse(desc).css('div')[0].text
		end
  end

	def get_address
		@address ||= Address.first
	end

	def is_home_page?
		controller.controller_name == "home" && controller.action_name == "index"
	end

	def is_about_page?
		controller.controller_name == "home" && controller.action_name == "about"
	end

	def is_facilities_page?
		controller.controller_name == "facilities"
	end

	def is_institutions_page?
		controller.controller_name == "institutions"
	end

	def is_news_page?
		controller.controller_name == "articles"
	end

	def is_specialists_page?
		controller.controller_name == "specialists" ||
		controller.controller_name == "doctors"
	end

	def is_contact_page?
		controller.controller_name == "contacts"
	end

end
