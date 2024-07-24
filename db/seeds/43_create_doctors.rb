# Doctor
Doctor.delete_all
d = Doctor.new(profesional_name: "Dr. Ira Kusumawati, ScC, Og", full_name: "Ira Kusumawati")
d.email = "ira.kusuma@triadipa.com"
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Cardiovascular Consultant Internal Medicine Specialist"
d.content = FFaker::Lorem.paragraphs(5).join(" ")
d.str_no = "500020300032"
d.alumni = "Univeristy of Indonesia (2011) S.Ked"
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/news/thumb2.png")), filename: "thumb2.png")
d.save!
