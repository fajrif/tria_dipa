# Facility
facilities = [{
	name: "24 HR EMERGENCY SERVICES",
	headline: "Around the clock emergency services to treat any illnesses, or major or minor injuries.",
	description: %q{
		<p>The 24-hour emergency services at Tria Dipa Hospital are committed to respond swiftly and effectively to unforeseen medical crises. We operate around the clock and act as the frontline in medical emergencies, providing immediate care to individuals facing life-threatening situations. Our emergency services are also available to patients who need to be evaluated by a physician beyond regular examination hours.</p>
		<p>Our team of dedicated healthcare professionals, including doctors, nurses, and support staff, are trained to handle a wide range of emergencies. Their expertise helps them make quick decisions, communicate effectively, and have the ability to prioritize cases based on urgency. This multidisciplinary approach ensures that patients receive the timely and comprehensive care needed during critical moments.</p>
		<p>Emergency services are crucial for those experiencing sudden and severe health issues, from trauma and accidents to acute illnesses. Having the ability to stabilize patients in an emergency helps lay the foundation for further treatment and recovery. Our emergency services are equipped with:</p>
		<ul>
			<li>Nurse Station</li>
			<li>Waiting area</li>
			<li>Restroom</li>
			<li>Examination Rooms</li>
			<li>Trauma Rooms</li>
			<li>Ambulance Bay</li>
		</ul>
	}
}, {
	name: "PATIENT ROOMS",
	headline: "Comfortable patient rooms that facilitate an enjoyable stay while you heal.",
	description: %q{
		<p>Tria Dipa Hospital patient rooms serve as more than just spaces for medical care, they are sanctuaries where healing and comfort intertwine. Designed with the well-being of patients in mind, these rooms play a crucial role in fostering an environment for recovery. From the layout to the amenities, it is crafted to provide not only the necessary medical care but also a sense of tranquility that aids in the healing process.</p>
		<p>The patient room experience emphasizes privacy and comfort. We prioritize creating individual spaces where patients can receive personalized care without compromising their confidentiality. This dedication to privacy contributes to a peaceful atmosphere that encourages rest and recovery.</p>
		<p>The design of patient rooms incorporates a welcoming atmosphere for our patients to have visitors during their stay. Our rooms are equipped with state-of-the-art medical technology to ensure that healthcare professionals have the tools they need. Our patient rooms also have interactive entertainment systems to bedside controls for lighting and temperature, to help our patients stay comfortable during their stay.</p>
	}
}, {
	name: "PHARMACY",
	headline: "Our pharmacists are here to help our patients sort their medicine and advise them on their use.",
	description: %q{
		<p>Our pharmacy is the central hub for medication management and we make sure that patients receive safe and effective pharmaceutical interventions. From prescription processing to drug dispensing and patient education, the pharmacy is a critical component to our patient care.</p>
		<p>The pharmacists and pharmacy technicians at Tria Dipa Hospital meticulously review each prescription, verify dosage, potential interactions, and patient-specific considerations. This not only safeguards against errors but also contributes to the hospital's commitment to patient safety and quality care.</p>
		<p>Our pharmacy works closely with other departments in the hospital, to develop and implement medication regimens tailored to individual patient needs and ensure that medications are aligned with their treatment plans. We also make sure our pharmacy provides a comprehensive patient education. Our pharmacists educate patients about their prescribed medications, including proper administration, potential side effects, and the importance of adherence.</p>
	}
}, {
	name: "MEDICAL CHECK UP",
	headline: "Hassle-free medical check ups to help you with prevention and immediate care.",
	description: %q{
		<p>Medical check-ups serve as proactive measures to detect and address potential health issues before they escalate. At Tria Dipa Hospital, our healthcare professionals use these examinations to advise on preventive healthcare, early intervention, and overall well-being.</p>
		<p>During these medical check-ups, our physicians also address both the mental and emotional aspects of our patients' well-being. Our comprehensive check-ups include assessments of mental health, stress levels, and lifestyle factors and gives a complete understanding of their overall health status.Our healthcare professionals provide guidance on healthy lifestyle choices, nutrition, exercise, and stress management. This educational component allows our patients to make informed decisions about their health.</p>
	}
}, {
	name: "OPERATION ROOM",
	headline: "State of the art operation rooms for all kinds of surgical procedures.",
	description: %q{
		<p>The Operating rooms in Tria Dipa Hospital are the epicenters of surgical precision, where our medical teams orchestrate intricate procedures with the utmost care and expertise. These specialized environments are designed to provide a sterile, controlled setting that optimizes conditions for successful surgeries, ensuring the safety and well-being of patients undergoing various medical interventions.</p>
		<p>The layout and design of our operating rooms are planned to accommodate the specific needs of surgical procedures. Sterility is very important, and everything from the ventilation system to the materials used in construction is chosen to minimize the risk of infection. We are equipped with advanced surgical technology.</p>
		<p>Surgeons, anesthesiologists, nurses, and technicians work seamlessly to execute precise and complex procedures.</p>
	}
}, {
	name: "REHABILITATION",
	headline: "Rehabilitation services for in-patient and out-patient care.",
	description: %q{
		<p>Rehabilitation services within Tria Dipa Hospital are focused on the restoration of physical, mental, and emotional well-being for individuals facing a range of health challenges. These services are given to patients recovering from surgeries, injuries, or chronic conditions, offering comprehensive programs designed to enhance functionality, independence, and overall quality of life.</p>
		<p>Our first step is to bring together a team of healthcare professionals with diverse expertise. Physiatrists, physical therapists, occupational therapists, and other specialists collaborate to create personalized rehabilitation plans tailored to the needs of each patient. This results in a patient-centered approach to recovery.</p>
		<p>The psychological and emotional well-being of our patients are important components of rehabilitation services, and our counselors and therapists are available both for in-patient and out-patient care.</p>
	}
}]

Facility.delete_all
facilities.each_with_index do |obj, num|
	f = Facility.new(name: obj[:name])
	f.headline = obj[:headline]
	f.description = obj[:description]
	f.thumbnail.attach(io: File.open(Rails.root.join("vendor/assets/images/facilities/thumb#{num+1}.png")), filename: "thumb#{num+1}.png")
	f.image.attach(io: File.open(Rails.root.join("vendor/assets/images/facilities/#{num+1}.png")), filename: "#{num+1}.png")
	f.save!
end
