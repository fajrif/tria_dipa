module PageHelper

	# Rendering Link to Url Helper
	def render_link_text_url(object, class_name="btn btn-medium btn-veritas btn-rounded", only_arrow=false)
		# check if object file downloadable
		if object.is_route_to_file?
			return render_link_file_url(object, class_name)
		else
			_target = object.is_open_new_tab? ? :_blank : :_self
			_text = object.link_text
			_text = get_text_from_object(_text, object)
			_text = t("global.read_more") if _text.blank?
			if only_arrow
				_content_with_icon = raw("#{content_tag(:i, nil, class: 'fa-solid fa-arrow-right icon-very-small ms-0')}")
			else
				if object.link_text != "download_now"
					_content_with_icon = raw("#{_text} #{content_tag(:i, nil, class: 'fa-solid fa-arrow-right icon-very-small')}")
				else
					_content_with_icon = _text
				end
			end
			link_to(get_link_from_link_button_object(object), class: class_name, target: _target) do
				_content_with_icon
			end
		end
	end

	# Rendering Link to File Helper (Downloadable Icon)
	def render_link_file_url(object, class_name="btn btn-medium btn-veritas btn-rounded")
		_text = object.link_text
		_text = get_text_from_object(_text, object)
		_text = t("global.download_now") if _text.blank?
		link_to(_text, get_link_from_link_button_object(object), class: class_name)
	end

	def get_text_from_object(text, object)
		_text = ""
		if text.include?("_")
			if text == "view_title"
				_text = object.try(:objectable).try(:title)
			else
				_text = t("global.#{object.link_text}")
			end
		else
			_text = text
		end
		return _text
	end

	def get_veritas_element_colors(bg_color)
	 if bg_color == 'bg-green' or bg_color == 'bg-black' or bg_color == "bg-dark-grey" or bg_color == "bg-green-gradient"
			return 'text-white-2', 'btn-veritas'
		elsif bg_color == 'bg-yellow' or bg_color == 'bg-grey'
			return 'text-extra-dark-gray', 'btn-veritas btn-border'
		else
			return 'text-extra-dark-gray', 'btn-veritas'
		end
	end

	def get_default_logo(class_logo)
		default_class = ""
		case class_logo
		when "logo-dark"
			default_class = "default" if @nav_link_color.empty?
		when "logo-light"
			default_class = "default" unless @nav_link_color.empty?
		end
		return "#{class_logo} #{default_class}".strip
	end

	# IF need to update recent file?
	#  some code need to be added
	def get_link_from_link_button_object(obj)
		case obj.route_category
		when 1
			obj.anchor.blank? ? obj.link_url : "#{obj.link_url}#{obj.anchor}"
		when 2
			case obj.objectable_type
			when "Page"
				"#{page_url(obj.objectable)}#{obj.anchor}"
			when "Article"
				article_path(obj.objectable)
			when "Report"
				request_downloadable_file(obj.objectable)
			when "Archive"
				request_downloadable_file(obj.objectable)
			end
		end
	rescue
		puts "Error get link from object"
		return ""
	end

	def request_downloadable_file(obj)
		if obj.private?
			document_inquiries_path(id: obj.id, type: obj.class.name.downcase)
		else
			# fallback to default :en file
			file = obj.file
			if obj.read_only?
				pdfjs.minimal_path(file: rails_storage_proxy_path(obj.file))
			else
				rails_blob_path(file, disposition: "attachment")
			end
		end
	end

	def render_link_download_file(object, class_name="btn btn-medium btn-veritas btn-rounded", text=t("global.download"))
		options = { class: class_name }
		if object.read_only?
			options[:target] = :_blank
			text = t('global.view')
		end
		link_to(text, request_downloadable_file(object), options)
	end

	def load_header_menu
		if data_menu = Menu.find_by(section: 1).try(:data)
			@header_menu = JSON.parse(data_menu)
			@right_menu = @header_menu["right"]
			@left_menu = @header_menu["left"]
		end
	end

	def load_footer_menu
		if data_menu = Menu.find_by(section: 2).try(:data)
			@footer_menu = JSON.parse(data_menu)
		end
	end

	def generate_navbar_menu(data)
		_menu = ""
		if data
			data.each do |menu|
				if menu["menu"]
					_menu += content_tag(:li) do
						content_tag(:button, menu["label"], type: "button", class: "open-wrap-menu", type: "button", "data-menu-id": "menu-content-#{menu['id']}")
					end
				else
					_menu += content_tag(:li) do
						link_to(menu["label"], menu["url"] ? menu["url"] : "#")
					end
				end
			end
		end
		return _menu
	end

	def generate_footer_link(data)
		_menu = ""
		data.each do |menu|
			_menu += content_tag(:li, class: "d-inline-block margin-10px-right") do
				link_to(menu["label"], menu["url"] ? menu["url"] : "#", class: "text-white-2")
			end
		end
		return _menu
	end

	def generate_footer_contact_us(data)
		menu = data.last
		_menu = link_to(menu["url"] ? menu["url"] : "#") do
			content_tag(:h5, menu["label"], class: "text-uppercase mb-0")
		end
		return _menu
	end

	def generate_popup_menus(*data)
		_content = ""
		_menu = []
		data.compact!
		data.each do |d|
			_menu << d.select {|m| m["menu"] }
		end
		_menu.flatten!
		_menu.each do |menu|
			_list = ""
			menu["menu"].each do |cm|
				_list += content_tag(:li) do
					link_to(cm["label"], cm["url"], class: "inner-link")
				end
			end
			_content += content_tag(:div, id: "menu-content-#{menu['id']}", class: "menu-wrap-content-menu") do
				content_tag(:div) do
					if menu["url"]
						content_tag(:h5, nil, class: "font-weight-400 text-uppercase") do
							link_to(menu["label"], menu["url"])
						end
					else
						content_tag(:h5, menu["label"], class: "font-weight-400 text-uppercase")
					end
				end +
				content_tag(:ul, class: "font-weight-400 no-padding-left mb-0") do
					raw(_list)
				end
			end
		end
		return _content
	end

	def generate_popup_menus_mobile(*data)
		_content = ""
		_menu = []
		data.compact!
		data.each do |d|
			_menu << d
		end
		_menu.flatten!
		_menu.each do |menu|
			if menu["menu"]
				_list = ""
				menu["menu"].each do |cm|
					_list += content_tag(:li) do
						link_to(cm["label"], cm["url"], class: "inner-link")
					end
				end
				_dropdown_menu = content_tag(:ul, class: "dropdown-menu") do
					raw(_list)
				end
				_content += content_tag(:li, class: "dropdown") do
					link_to(menu["label"], menu["url"] ? menu["url"] : "#", class: "text-uppercase") + content_tag(:span, nil, class: "dropdown-toggle", "data-bs-toggle": "dropdown") + _dropdown_menu
				end
			else
				_content += content_tag(:li) do
					link_to(menu["label"], menu["url"] ? menu["url"] : "#", class: "text-uppercase")
				end
			end
		end
		return _content
	end

end
