specialists = [
	{ name: 'NEUROLOGY', headline: 'Our neurology team helps patients who are dealing with disorders of the nervous system, including the brain and spinal cord' },
	{ name: 'CARDIOLOGY', headline: 'Our cardiologists treat patients who may have diseases and abnormalities of the heart' },
	{ name: 'DENTISTRY', headline: 'Our dentists diagnose, prevent, and treat diseases, disorders, and conditions of the mouth' },
	{ name: 'DERMATOLOGY', headline: 'Our dermatologists are experts of skin, nails, hair, and its diseases' },
	{ name: 'OPHTHALMOLOGY', headline: 'Our ophthalmology team medicates patients with diseases of the eye' },
	{ name: 'GASTROENTEROLOGY', headline: 'Patients who have problems with their digestive system and its disorders, are seen by our team of gastric specialists' },
	{ name: 'GENERAL SURGERY', headline: 'Our general surgeons are equipped to perform all kinds of medical procedures' },
	{ name: 'HAEMATOLOGY', headline: 'Our hematology department can study blood samples to determine specific diseases and treat them' },
	{ name: 'PEDIATRIC', headline: 'Pediatric specialists to support the health and medical care of infants, children, and adolescents' },
	{ name: 'UROLOGY', headline: 'Specialists that deal with the male and female urinary tract and the male reproductive organs' },
	{ name: 'ONCOLOGY', headline: 'Oncology specialists to advise in the prevention, diagnosis, and treatment of cancer' },
	{ name: 'NEFROLOGY', headline: 'Advising our patients in the treatment of the kidneys are what our team of nephrologists can help with' },
	{ name: 'RADIOTHERAPY', headline: 'Treating diseases with our radiotherapy specialists' },
	{ name: 'PEDIATRIC SURGERY', headline: 'Our pediatric surgical team is top of their field in performing surgical procedures on infants, children, and adolescents' },
	{ name: 'MOUTH SURGERY', headline: 'Surgeons who perform surgical procedures involving the mouth, jaw, and related structures' },
	{ name: 'PULMONOLOGY', headline: 'Our pulmonology team deals with diseases of the respiratory system' },
	{ name: 'NUTRITION', headline: 'Visit our nutritionists to learn about food and its effects on health, and the different ways it is providing nourishment' },
	{ name: 'OBGYN', headline: 'Our specialists are here to advise patients on pregnancy, childbirth, and the postpartum period, as well as the health of the female reproductive system' },
	{ name: 'PLASTIC SURGERY', headline: 'A visit to our team of plastic surgeons to get the best advice and options on elective procedures' },
	{ name: 'MEDICAL CHECK UP', headline: 'We are prepared to give our patients a comprehensive examination on their health status' },
	{ name: 'PSYCHIATRY', headline: 'Our Psychiatry department deals with the diagnosis, treatment, and prevention of mental illness' },
	{ name: 'RADIOLOGY', headline: 'Our radiologists use medical imaging to diagnose and treat diseases' },
	{ name: 'ORTHOPAEDICS', headline: 'Orthopedics surgeons to help patients with the preservation and restoration of the musculoskeletal system' },
	{ name: 'OTOLARYNGOLOGY', headline: 'The department has specialists that deal with ear, nose, and throat (ENT) and related structures' },
	{ name: 'PALLIATIVE CARE', headline: 'Our services also include specialized medical care focused on providing relief from the symptoms and stress of a serious illness' },
	{ name: 'PHYSICAL THERAPY', headline: 'Physical therapists that create specialized treatment plans that will fit the needs of a patients’ condition and help them heal' },
	{ name: 'ENDOCRINOLOGY', headline: 'Specialists that deal with endocrine glands and hormones' },
	{ name: 'TROPICAL INFECTION', headline: 'We have specialists that diagnose and treat infections that are commonly found in tropical or subtropical regions' },
	{ name: 'NUCLEAR MEDICINE', headline: 'Our hospital is equipped with medical imaging using radioactive substances to diagnose and treat diseases' },
	{ name: 'PHARMACY', headline: 'Our pharmacists prepare and dispense the drugs and medications of our patients, and help advise them on their use' }
]

Specialist.delete_all
specialists.each_with_index do |obj, num|
	i = Specialist.new(name: obj[:name])
	i.headline = obj[:headline]
	desc = ""
	2.times do
		desc += "<p>#{ FFaker::Lorem.paragraphs(5).join(" ") }</p>"
	end
	i.description = desc
	i.image.attach(io: File.open(Rails.root.join("vendor/assets/images/specialists/1-#{num+1}.png")), filename: "1-#{num+1}.png")
	i.save!
end
