# Facility
Facility.delete_all
["24 HR EMERGENCY SERVICES", "PATIENT ROOMS", "PHARMACY", "MEDICAL CHECK UP", "OPERATION ROOM", "REHABILITATION"].each_with_index do |name, num|
	f = Facility.new(name: name)
	f.headline = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis."
	desc = ""
	2.times do
		desc += "<p>#{ FFaker::Lorem.paragraphs(5).join(" ") }</p>"
	end
	f.description = desc
	f.description1 = desc
	f.description2 = desc
	f.thumbnail.attach(io: File.open(Rails.root.join("vendor/assets/images/facilities/thumb#{num+1}.png")), filename: "thumb#{num+1}.png")
	f.image.attach(io: File.open(Rails.root.join("vendor/assets/images/facilities/#{num+1}.png")), filename: "#{num+1}.png")
	f.image1.attach(io: File.open(Rails.root.join("vendor/assets/images/facilities/image1.png")), filename: "image1.png")
	f.image2.attach(io: File.open(Rails.root.join("vendor/assets/images/facilities/image2.png")), filename: "image2.png")
	f.save!
end
