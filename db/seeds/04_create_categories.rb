# CREATE Category
Category.delete_all

# Category
Category.delete_all
["Medical & Healthcare", "Nutirion / Dietary", "Obesity / Weight Loss", "Supplements"].each do |name|
	Category.create!(name: name)
end
