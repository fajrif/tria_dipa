# Article
Article.delete_all
4.times do |num|
	a = Article.new(title: FFaker::Book.unique.title)
	desc = ""
	cnt = rand(3)+2
	cnt.times do
		desc += "<p>#{ FFaker::Lorem.paragraphs(5).join(" ") }</p>"
	end
	a.content = desc
	a.category = Category.order(Arel.sql('RANDOM()')).first
	a.image.attach(io: File.open(Rails.root.join("vendor/assets/images/news/banner.png")), filename: "banner.png")
	a.thumbnail.attach(io: File.open(Rails.root.join("vendor/assets/images/news/thumb#{num+1}.png")), filename: "#{num+1}.png")
	a.save!
end
