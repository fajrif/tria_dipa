partners = [
	{ name: 'Takaful Keluarga' },
	{ name: 'BNI Life' },
	{ name: 'AIA' },
	{ name: 'Manulife' },
	{ name: 'AXA' },
	{ name: 'Halodoc' },
	{ name: 'Hanwha' },
	{ name: 'Prudential' },
	{ name: 'Generali Indonesia' },
	{ name: 'astra life' },
	{ name: 'Allianz' },
	{ name: 'PLN Insurance' },
	{ name: 'AdMedika' },
	{ name: 'Asuransi MAG' },
	{ name: 'Great Eastern' },
	{ name: 'Equity' },
	{ name: 'Fullerton Health' },
	{ name: 'avrist' },
	{ name: 'BRI Life' },
	{ name: 'ACA' },
	{ name: 'Lippo Insurance' },
	{ name: 'Zurich' },
	{ name: 'MSIG' },
	{ name: 'BCA life' },
	{ name: 'Sinarmas' },
	{ name: 'ABDA' },
	{ name: 'Garda Medika' },
	{ name: 'OWLEXA HealthCare' },
  { name: 'PT. Medilink Digital Medika' },
	{ name: 'JASINDO HEATH CARE' },
	{ name: 'Meditap' },
	{ name: 'asuransi astra' },
	{ name: 'Cynergy Care' },
	{ name: 'CAR Life Insurance' },
	{ name: 'syntech' },
	{ name: 'docdoc' },
	{ name: 'MEGA INSURANCE' },
	{ name: 'FWD Insurance' },
	{ name: 'MANDIRI inhealth' },
	{ name: 'SmiLynks' },
	{ name: 'BOSOWA' },
	{ name: 'NAYAKA' },
	{ name: 'MAXIMUS' },
	{ name: 'MEdika Plaza Indonesia' },
	{ name: 'Sequislife' },
	{ name: 'Across Asia Assist' }
]

Partner.delete_all
num = 1
partners.each_with_index do |obj, index|
	p = Partner.new(name: obj[:name])
	p.image.attach(io: File.open(Rails.root.join("vendor/assets/images/partners/Artboard #{index+num+1}.png")), filename: "1-#{index+num+1}.png")
	p.save!
end
