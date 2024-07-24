# Article
Article.delete_all

articles = [{
	category_id: 1,
	title: "Breakthrough Discovery in Cancer Research",
	short_description: "New research shows gene therapy may be the key to beating all types of cancers",
	content: %q{
		<p>In a groundbreaking development that is reshaping the landscape of cancer research, recent studies have unveiled the potential of gene therapy as a transformative approach to combat various types of cancers. This breakthrough brings renewed hope to patients and the medical community alike, as scientists delve into the intricate world of genetics to unlock new avenues for more effective and targeted cancer treatments.</p>
		<p>The research, conducted by a team of leading oncologists and geneticists, reveals that gene therapy holds the key to addressing the underlying genetic abnormalities that fuel the growth of cancer cells. Unlike traditional treatments such as chemotherapy and radiation, gene therapy aims to correct or replace faulty genes, offering a more precise and tailored approach to cancer treatment.</p>
		<p>One of the most promising aspects of this breakthrough is its potential applicability across diverse types of cancers. Rather than focusing on specific cancer types, gene therapy targets the fundamental genetic irregularities shared by many cancers, presenting a universal solution that transcends traditional boundaries. This versatility could mark a paradigm shift in cancer treatment, providing a unified approach that streamlines research efforts and offers new hope to patients facing a wide range of malignancies.</p>
	}
}, {
	category_id: 1,
	title: "Revolutionary Vaccine Development",
	short_description: "Doctors have found new applications for malaria vaccines",
	content: %q{
		<p>In a remarkable stride forward for vaccine development, the medical community is witnessing an unprecedented breakthrough as malaria vaccines take center stage in the fight against this ancient and pervasive disease. Traditionally associated with preventing malaria infections, these vaccines are now revealing new and unexpected applications, sparking a revolution in the field and offering hope for addressing global health challenges beyond malaria.</p>
		<p>Historically, malaria vaccines have been primarily designed to provide protection against Plasmodium falciparum, the deadliest malaria parasite prevalent in many parts of the world. However, recent research has uncovered that these vaccines exhibit unexpected benefits beyond their original scope. Medical experts have observed that the immune responses triggered by malaria vaccines might have broader implications for the immune system, demonstrating potential efficacy against other infectious diseases.</p>
		<p>The newfound applications of malaria vaccines are prompting researchers to explore their adaptability and effectiveness in combatting a range of infections. This revolutionary shift in perspective is not only expanding the horizons of malaria vaccine research but also offering a novel approach to developing vaccines for other diseases. The cross-functional immune responses induced by these vaccines are proving to be a valuable asset in the ongoing quest for versatile and effective preventive measures against various pathogens.</p>
	}
}, {
	category_id: 2,
	title: "Groundbreaking Study Reveals Surprising Link",
	short_description: "Scientists have discovered that there is a connection between food and the common flu",
	content: %q{
		<p>In a paradigm-shifting revelation, the scientific community is buzzing with excitement over a groundbreaking study that unearths an unexpected connection between our dietary choices and susceptibility to the common flu. Contrary to conventional wisdom that attributes flu vulnerability solely to viral exposure, this pioneering research illuminates the intricate interplay between our food habits and the body's immune response, offering a fresh perspective on influenza prevention and management.</p>
		<p>The study, led by a team of interdisciplinary researchers, delves into the intricate relationship between nutrition and immune function. Results indicate that certain dietary components have a discernible impact on the immune system's ability to mount a robust defense against influenza viruses. Understanding this link opens new avenues for both preventive measures and therapeutic interventions, potentially reshaping public health strategies related to seasonal flu outbreaks.</p>
		<p>One surprising finding of the study is the role of micronutrients, such as vitamins and minerals, in fortifying the body's defenses against the flu. Researchers discovered that deficiencies in key micronutrients compromise the immune system's effectiveness, rendering individuals more susceptible to influenza infections. This insight underscores the importance of a well-balanced diet in bolstering the body's natural defenses and highlights the potential role of nutritional supplementation in flu prevention.</p>
	}
}, {
	category_id: 2,
	title: "Global Collaboration in Medicine",
	short_description: "European countries are working together on a new global initiative in the distribution of medicine in developing countries",
	content: %q{
		<p>In a powerful demonstration of solidarity and shared commitment to global health, European countries are spearheading a collaborative initiative to transform the distribution of medicine in developing nations. This groundbreaking effort marks a significant step towards addressing healthcare disparities and fostering a collective response to the challenges faced by underserved communities around the world.</p>
		<p>The collaborative initiative, born out of the shared recognition of the urgent need for equitable access to essential medicines, brings together European nations in a unified front. This alliance aims not only to streamline the distribution process but also to enhance the efficiency of medical supply chains, ensuring that life-saving medications reach those who need them most in a timely manner.</p>
		<p>One key aspect of this global collaboration is the pooling of resources and expertise. European countries are leveraging their collective knowledge in medicine production, logistics, and public health to create a comprehensive and sustainable approach to medicine distribution. By sharing best practices, optimizing supply chain management, and coordinating efforts, these nations are working together to overcome logistical challenges and maximize the impact of their collective resources.</p>
	}
}]

articles.each_with_index do |obj, num|
	a = Article.new(title: obj[:title])
	a.category_id = obj[:category_id]
	a.short_description = obj[:short_description]
	a.content = obj[:content]
	a.image.attach(io: File.open(Rails.root.join("vendor/assets/images/news/banner.png")), filename: "banner.png")
	a.thumbnail.attach(io: File.open(Rails.root.join("vendor/assets/images/news/thumb#{num+1}.png")), filename: "#{num+1}.png")
	a.save!
end
