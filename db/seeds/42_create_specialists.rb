specialists = [
"NEUROLOGY",
"CARDIOLOGY",
"DENTISTRY",
"DERMATOLOGY",
"OPHTHALMOLOGY",
"GASTROENTEROLOGY",
"GENERAL SURGERY",
"HAEMATOLOGY",
"PEDIATRIC",
"UROLOGY",
"ONCOLOGY",
"NEFROLOGY",
"RADIOTHERAPY",
"PEDIATRIC SURGERY",
"MOUTH SURGERY",
"PULMONOLOGY",
"NUTRITION",
"OBGYN",
"PLASTIC SURGERY",
"MEDICAL CHECK UP",
"PSYCHIATRY",
"RADIOLOGY",
"ORTHOPAEDICS",
"OTOLARYNGOLOGY",
"PALLIATIVE CARE",
"PHYSICAL THERAPY",
"ENDOCRINOLOGY",
"TROPICAL INFECTION",
"NUCLEAR MEDICINE",
"PHARMACY"
]
Specialist.delete_all
specialists.each_with_index do |name, num|
	i = Specialist.new(name: name)
	i.headline = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis."
	desc = ""
	2.times do
		desc += "<p>#{ FFaker::Lorem.paragraphs(5).join(" ") }</p>"
	end
	i.description = desc
	i.image.attach(io: File.open(Rails.root.join("vendor/assets/images/specialists/1-#{num+1}.png")), filename: "1-#{num+1}.png")
	i.save!
end
