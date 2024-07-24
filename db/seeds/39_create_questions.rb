# FAQ
Question.delete_all
5.times do
	Question.create(question: FFaker::Name.unique.name, answer: FFaker::Lorem.paragraphs(rand(5)+2).join(" "), category_name: "General")
end
