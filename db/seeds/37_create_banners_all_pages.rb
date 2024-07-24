## Create Banners for All Pages

#Banner.delete_all

#banner = Banner.new(title: "Indonesia’s Premier Emerging Energy Group", description: "We are an independent energy company bringing Indonesian Energy to the World")
#banner.image.attach(io: Rails.root.join("vendor/assets/images/banners/banner-homepage.png").open, filename: "banner-homepage.png")
#banner.banner_section = @bs1
#Mobility.with_locale(:cn) {
	#banner.title = "印度尼西亚首屈一指的新兴能源集团"
	#banner.description = "我们是一家独立的能源公司，将印度尼西亚能源推向世界"
#}
#banner.save
#puts "Create Banner: #{banner.title}"

#banner = Banner.new(title: "Meet our team of<br/>Industry Experts")
#banner.image.attach(io: Rails.root.join("vendor/assets/images/banners/banner-about.png").open, filename: "banner-about.png")
#banner.banner_section = @bs2
#Mobility.with_locale(:cn) {
	#banner.title = "认识我们的团队 <br/>行业专家"
#}
#banner.save
#puts "Create Banner: #{banner.title}"
