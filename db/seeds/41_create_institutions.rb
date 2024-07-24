# Institution
Institution.delete_all
["TRIA DIPA HOSPITAL", "X HOSPITAL", "X WELLNESS CENTER", "X INSTITUTION"].each_with_index do |name, num|
	i = Institution.new(name: name)
	i.headline = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis."
	desc = ""
	2.times do
		desc += "<p>#{ FFaker::Lorem.paragraphs(5).join(" ") }</p>"
	end
	i.description = desc
	i.description1 = desc
	i.description2 = desc
	i.image.attach(io: File.open(Rails.root.join("vendor/assets/images/facilities/1-#{num+1}.png")), filename: "1-#{num+1}.png")
	i.image1.attach(io: File.open(Rails.root.join("vendor/assets/images/facilities/image1.png")), filename: "image1.png")
	i.image2.attach(io: File.open(Rails.root.join("vendor/assets/images/facilities/image2.png")), filename: "image2.png")
	i.save!
end
