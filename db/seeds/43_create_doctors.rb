# Doctor
Doctor.delete_all

# INTERNIS
internis = Specialist.where("name ->> :key ILIKE :value", key: I18n.locale.to_s, value: "MEDICAL CHECK UP").first

# Pradana Soewondo
d = Doctor.new(full_name: "Pradana Soewondo", profesional_name: "PROF. DR. dr. Pradana Soewondo, Sp.PD–KEMD", email: "pradana.soewondo@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Internal Medicine Specialist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/pradana-soewondo.png")), filename: "pradana-soewondo.png")
d.specialists << internis
d.save!
sc = d.schedules.build(day_code: 1, start_time: "15:00", end_time: "18:00")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "15:00", end_time: "18:00")
sc.save!
sc = d.schedules.build(day_code: 5, start_time: "15:00", end_time: "18:00")
sc.save!
sc = d.schedules.build(day_code: 6, start_time: "07:00", end_time: "09:00")
sc.save!

# Budiman D
d = Doctor.new(full_name: "Budiman D", profesional_name: "DR. dr. Budiman D., Sp.PD-KEMD", email: "budiman@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Internal Medicine Specialist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.specialists << internis
d.save!
sc = d.schedules.build(day_code: 2, start_time: "17:00", end_time: "18:30")
sc.save!

# Ladiswara
d = Doctor.new(full_name: "Ladiswara", profesional_name: "dr. Ladiswara, Sp.PD", email: "ladiswara@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Internal Medicine Specialist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/ladiswara.png")), filename: "ladiswara.png")
d.specialists << internis
d.save!
sc = d.schedules.build(day_code: 1, start_time: "09:00", end_time: "11:00")
sc.save!
sc = d.schedules.build(day_code: 2, start_time: "09:00", end_time: "11:00")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "09:00", end_time: "11:00")
sc.save!
sc = d.schedules.build(day_code: 4, start_time: "09:00", end_time: "11:00")
sc.save!

# Adiatmo Pratomo
d = Doctor.new(full_name: "Adiatmo Pratomo", profesional_name: "dr. Adiatmo Pratomo, Sp.PD", email: "adiatmo.pratomo@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Internal Medicine Specialist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/adiatmo-pratomo.png")), filename: "adiatmo-pratomo.png")
d.specialists << internis
d.save!
sc = d.schedules.build(day_code: 1, start_time: "16:00", end_time: "19:00")
sc.save!
sc = d.schedules.build(day_code: 2, start_time: "16:00", end_time: "19:00")
sc.save!
sc = d.schedules.build(day_code: 4, start_time: "16:00", end_time: "19:00")
sc.save!

# Meryl Pulcheria
d = Doctor.new(full_name: "Meryl Pulcheria", profesional_name: "dr. Meryl Pulcheria, Sp.PD", email: "meryl.pulcheria@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Internal Medicine Specialist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/meryl-pulcheria.png")), filename: "meryl-pulcheria.png")
d.specialists << internis
d.save!
sc = d.schedules.build(day_code: 1, start_time: "08:00", end_time: "14:00")
sc.save!
sc = d.schedules.build(day_code: 1, start_time: "18:00", end_time: "20:00")
sc.save!
sc = d.schedules.build(day_code: 2, start_time: "08:00", end_time: "13:00")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "08:00", end_time: "14:00")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "18:00", end_time: "20:00")
sc.save!
sc = d.schedules.build(day_code: 4, start_time: "08:00", end_time: "14:00")
sc.save!
sc = d.schedules.build(day_code: 5, start_time: "08:00", end_time: "13:00")
sc.save!
sc = d.schedules.build(day_code: 5, start_time: "18:00", end_time: "20:00")
sc.save!
sc = d.schedules.build(day_code: 6, start_time: "08:00", end_time: "14:00")
sc.save!

# ANAK
anak = Specialist.where("name ->> :key ILIKE :value", key: I18n.locale.to_s, value: "PEDIATRIC").first

# Nurifah
d = Doctor.new(full_name: "Nurifah", profesional_name: "dr. Nurifah, Sp.A", email: "nurifah@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Pediatric Specialist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/nurifah.png")), filename: "nurifah.png")
d.specialists << anak
d.save!
sc = d.schedules.build(day_code: 1, start_time: "13:00", end_time: "15:00")
sc.save!
sc = d.schedules.build(day_code: 2, start_time: "13:00", end_time: "15:00")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "13:00", end_time: "15:00")
sc.save!
sc = d.schedules.build(day_code: 4, start_time: "13:00", end_time: "15:00")
sc.save!

# Irene Akasia Oktariana
d = Doctor.new(full_name: "Irene Akasia Oktariana", profesional_name: "dr. Irene Akasia Oktariana, Sp.A", email: "irene.akasia@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Pediatric Specialist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.specialists << anak
d.save!
sc = d.schedules.build(day_code: 1, start_time: "18:00", end_time: "19:00")
sc.save!
sc = d.schedules.build(day_code: 2, start_time: "12:00", end_time: "13:00")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "18:00", end_time: "19:00")
sc.save!
sc = d.schedules.build(day_code: 4, start_time: "12:00", end_time: "15:00")
sc.save!
sc = d.schedules.build(day_code: 5, start_time: "18:00", end_time: "19:00")
sc.save!
sc = d.schedules.build(day_code: 6, start_time: "07:00", end_time: "09:00")
sc.save!

# OBGYN
obgyn = Specialist.where("name ->> :key ILIKE :value", key: I18n.locale.to_s, value: "OBGYN").first

# Ari Kusuma Januarto
d = Doctor.new(full_name: "Ari Kusuma Januarto", profesional_name: "dr. Ari Kusuma Januarto, Sp.OG", email: "ari.kusuma@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Obstetrician Gynecologist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.specialists << obgyn
d.save!
sc = d.schedules.build(day_code: 1, start_time: "16:00", end_time: "17:00")
sc.save!
sc = d.schedules.build(day_code: 2, start_time: "16:00", end_time: "17:00")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "16:00", end_time: "17:00")
sc.save!

# Aulia Zesario
d = Doctor.new(full_name: "Aulia Zesario", profesional_name: "dr. Aulia Zesario, Sp.OG", email: "aulia.zesario@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Obstetrician Gynecologist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/aulia-zesario.png")), filename: "aulia-zesario.png")
d.specialists << obgyn
d.save!
sc = d.schedules.build(day_code: 1, start_time: "08:00", end_time: "12:00")
sc.save!
sc = d.schedules.build(day_code: 2, start_time: "08:00", end_time: "10:00")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "08:00", end_time: "12:00")
sc.save!
sc = d.schedules.build(day_code: 4, start_time: "16:00", end_time: "20:00")
sc.save!
sc = d.schedules.build(day_code: 5, start_time: "16:00", end_time: "20:00")
sc.save!
sc = d.schedules.build(day_code: 6, start_time: "08:00", end_time: "11:00")
sc.save!

# Muhammad Syah Reza Anwar
d = Doctor.new(full_name: "Muhammad Syah Reza Anwar", profesional_name: "dr. Muhammad Syah Reza Anwar, Sp.OG", email: "msyahanwar@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Obstetrician Gynecologist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/muhammad-reza-syah-anwar.png")), filename: "muhammad-reza-syah-anwar.png")
d.specialists << obgyn
d.save!
sc = d.schedules.build(day_code: 1, start_time: "08:00", end_time: "12:00")
sc.save!
sc = d.schedules.build(day_code: 2, start_time: "08:00", end_time: "10:00")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "08:00", end_time: "12:00")
sc.save!
sc = d.schedules.build(day_code: 4, start_time: "16:00", end_time: "20:00")
sc.save!
sc = d.schedules.build(day_code: 5, start_time: "16:00", end_time: "20:00")
sc.save!
sc = d.schedules.build(day_code: 6, start_time: "08:00", end_time: "11:00")
sc.save!

# BEDAH UMUM
bedah_umum = Specialist.where("name ->> :key ILIKE :value", key: I18n.locale.to_s, value: "GENERAL SURGERY").first

# Tri Dewo Asmoro
d = Doctor.new(full_name: "Tri Dewo Asmoro", profesional_name: "dr. Tri Dewo Asmoro, Sp.B", email: "tri.dewo@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "General Surgeon"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/tri-dewo-asmoro.png")), filename: "tri-dewo-asmoro.png")
d.specialists << bedah_umum
d.save!
sc = d.schedules.build(day_code: 1, start_time: "08:00", end_time: "10:00")
sc.save!
sc = d.schedules.build(day_code: 2, start_time: "09:00", end_time: "12:00")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "08:00", end_time: "10:00")
sc.save!
sc = d.schedules.build(day_code: 4, start_time: "09:00", end_time: "12:00")
sc.save!
sc = d.schedules.build(day_code: 5, start_time: "08:00", end_time: "10:00")
sc.save!
sc = d.schedules.build(day_code: 6, start_time: "09:00", end_time: "12:00")
sc.save!

# Harry Sugiarto
d = Doctor.new(full_name: "Harry Sugiarto", profesional_name: "dr. Harry Sugiarto, Sp.B", email: "harry.sugiarto@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "General Surgeon"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/harry-sugiarto.png")), filename: "harry-sugiarto.png")
d.specialists << bedah_umum
d.save!
sc = d.schedules.build(day_code: 3, start_time: "15:00", end_time: "16:00")
sc.save!
sc = d.schedules.build(day_code: 5, start_time: "15:00", end_time: "16:00")
sc.save!

# Syamsu Alam
d = Doctor.new(full_name: "Syamsu Alam", profesional_name: "dr. Syamsu Alam, Sp.B", email: "syamsu.alam@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "General Surgeon"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/syamsu-alam.png")), filename: "syamsu-alam.png")
d.specialists << bedah_umum
d.save!
sc = d.schedules.build(day_code: 1, start_time: "16:00", end_time: "19:00")
sc.save!
sc = d.schedules.build(day_code: 2, start_time: "16:00", end_time: "19:00")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "16:00", end_time: "19:00")
sc.save!
sc = d.schedules.build(day_code: 4, start_time: "16:00", end_time: "19:00")
sc.save!
sc = d.schedules.build(day_code: 5, start_time: "16:00", end_time: "17:45")
sc.save!

# BEDAH UMUM
ortopedi = Specialist.where("name ->> :key ILIKE :value", key: I18n.locale.to_s, value: "ORTHOPAEDICS").first

# Nanda Perdana
d = Doctor.new(full_name: "Nanda Perdana", profesional_name: "dr. M. F Nanda Perdana, Sp.OT", email: "nanda.perdana@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Orthopedy Specialist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.specialists << ortopedi
d.save!
sc = d.schedules.build(day_code: 2, start_time: "16:00", end_time: "18:00")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "16:00", end_time: "18:00")
sc.save!
sc = d.schedules.build(day_code: 4, start_time: "16:00", end_time: "18:00")
sc.save!
sc = d.schedules.build(day_code: 5, start_time: "16:00", end_time: "18:00")
sc.save!

# THT
tht = Specialist.where("name ->> :key ILIKE :value", key: I18n.locale.to_s, value: "OTOLARYNGOLOGY").first

# Dewi Aksoro
d = Doctor.new(full_name: "Dewi Aksoro", profesional_name: "dr. Dewo Aksoro, Sp.THT-KL", email: "dewo.aksoro@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "ENT Specialist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.specialists << tht
d.save!
sc = d.schedules.build(day_code: 1, start_time: "09:00", end_time: "10:00")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "09:00", end_time: "10:00")
sc.save!
sc = d.schedules.build(day_code: 5, start_time: "09:00", end_time: "10:00")
sc.save!

# Dini Widiarni
d = Doctor.new(full_name: "Dini Widiarni", profesional_name: "dr. Dini Widiarni P. Sp.THT-KLK", email: "dini.widiarni@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "ENT Specialist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.specialists << tht
d.save!
sc = d.schedules.build(day_code: 2, start_time: "17:00", end_time: "19:00")
sc.save!
sc = d.schedules.build(day_code: 5, start_time: "17:00", end_time: "19:00")
sc.save!

# Eva Miranda Fitri
d = Doctor.new(full_name: "Eva Miranda Fitri", profesional_name: "dr. Eva Miranda Fitri, Sp.THT-KLK", email: "evamfitri@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "ENT Specialist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.specialists << tht
d.save!
sc = d.schedules.build(day_code: 1, start_time: "13:00", end_time: "20:00")
sc.save!
sc = d.schedules.build(day_code: 2, start_time: "08:00", end_time: "14:00")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "13:00", end_time: "20:00")
sc.save!
sc = d.schedules.build(day_code: 4, start_time: "08:00", end_time: "14:00")
sc.save!
sc = d.schedules.build(day_code: 4, start_time: "18:00", end_time: "20:00")
sc.save!
sc = d.schedules.build(day_code: 5, start_time: "14:00", end_time: "17:00")
sc.save!
sc = d.schedules.build(day_code: 6, start_time: "08:00", end_time: "16:00")
sc.save!

# saraf
saraf = Specialist.where("name ->> :key ILIKE :value", key: I18n.locale.to_s, value: "NEUROLOGY").first

# Ronny Yoesyanto
d = Doctor.new(full_name: "Ronny Yoesyanto", profesional_name: "dr. Ronny Yoesyanto, Sp.S", email: "ronny.yoesyanto@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Neurologist Specialist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/ronny-yoesyanto.png")), filename: "ronny-yoesyanto.png")
d.specialists << saraf
d.save!
sc = d.schedules.build(day_code: 2, start_time: "08:00", end_time: "09:00")
sc.save!
sc = d.schedules.build(day_code: 6, start_time: "08:00", end_time: "09:30")
sc.save!

# Satya Hanura
d = Doctor.new(full_name: "Satya Hanura", profesional_name: "dr. Satya Hanura, Sp.N", email: "satya.hanura@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Neurologist Specialist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/satya-hanura.png")), filename: "satya-hanura.png")
d.specialists << saraf
d.save!
sc = d.schedules.build(day_code: 1, start_time: "14:30", end_time: "16:00")
sc.save!
sc = d.schedules.build(day_code: 2, start_time: "14:30", end_time: "16:00")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "14:30", end_time: "16:00")
sc.save!
sc = d.schedules.build(day_code: 4, start_time: "14:30", end_time: "16:00")
sc.save!
sc = d.schedules.build(day_code: 5, start_time: "14:30", end_time: "16:00")
sc.save!

# Ahdinar Rosdiana
d = Doctor.new(full_name: "Ahdinar Rosdiana", profesional_name: "dr. Ahdinar Rosdiana Dewi Sp.N", email: "ahdinar.rosdiana@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Neurologist Specialist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/ahdinar-rosdiana.png")), filename: "ahdinar-rosdiana.png")
d.specialists << saraf
d.save!
sc = d.schedules.build(day_code: 1, start_time: "08:00", end_time: "11:00")
sc.save!
sc = d.schedules.build(day_code: 2, start_time: "16:30", end_time: "19:30")
sc.save!
sc = d.schedules.build(day_code: 4, start_time: "16:30", end_time: "19:30")
sc.save!

# jantung
jantung = Specialist.where("name ->> :key ILIKE :value", key: I18n.locale.to_s, value: "CARDIOLOGY").first

# Siti Masmu'ah
d = Doctor.new(full_name: "Siti Masmu'ah", profesional_name: "dr. Siti Masmu'ah, Sp.JP", email: "siti.masmuah@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Cardiovascular Specialist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/siti-masmuah.png")), filename: "siti-masmuah.png")
d.specialists << jantung
d.save!
sc = d.schedules.build(day_code: 1, start_time: "08:30", end_time: "09:30")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "08:30", end_time: "09:30")
sc.save!

# Fidiaji Hiltono Santoso
d = Doctor.new(full_name: "Fidiaji Hiltono Santoso", profesional_name: "dr. R. Fidiaji Hiltono Santoso, Sp.PD-KKV", email: "fidiaji@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Cardiovascular Specialist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.specialists << jantung
d.save!
sc = d.schedules.build(day_code: 1, start_time: "18:00", end_time: "19:00")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "18:00", end_time: "19:00")
sc.save!
sc = d.schedules.build(day_code: 5, start_time: "18:00", end_time: "19:00")
sc.save!

# GIGI & MULUT
gigi_mulut = Specialist.where("name ->> :key ILIKE :value", key: I18n.locale.to_s, value: "DENTISTRY").first

# Anindya Athalia Putri Asmoro
d = Doctor.new(full_name: "Anindya Athalia Putri Asmoro", profesional_name: "drg. Anindya Athalia Putri Asmoro, MM-MARS", email: "anindya@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Dentist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.specialists << gigi_mulut
d.save!
sc = d.schedules.build(day_code: 1, start_time: "12:00", end_time: "15:00")
sc.save!
sc = d.schedules.build(day_code: 2, start_time: "12:00", end_time: "15:00")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "10:00", end_time: "15:00")
sc.save!
sc = d.schedules.build(day_code: 4, start_time: "10:00", end_time: "15:00")
sc.save!
sc = d.schedules.build(day_code: 5, start_time: "10:00", end_time: "15:00")
sc.save!
sc = d.schedules.build(day_code: 6, start_time: "09:00", end_time: "13:00")
sc.save!

# Anny Tri Dewo
d = Doctor.new(full_name: "Anny Tri Dewo", profesional_name: "drg. Anny Tri Dewo, Sp.KGA", email: "anny-tri-dewo@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Dentist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.specialists << gigi_mulut
d.save!
sc = d.schedules.build(day_code: 1, start_time: "09:00", end_time: "12:00")
sc.save!
sc = d.schedules.build(day_code: 2, start_time: "09:00", end_time: "12:00")
sc.save!
sc = d.schedules.build(day_code: 6, start_time: "13:00", end_time: "15:00")
sc.save!

# Dinda Putri Husni Lubis
d = Doctor.new(full_name: "Dinda Putri Husni Lubis", profesional_name: "drg. Dinda Putri Husni Lubis, MM", email: "dinda.lubis@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Dentist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/dinda-putri-husni-lubis.png")), filename: "dinda-putri-husni-lubis.png")
d.specialists << gigi_mulut
d.save!
sc = d.schedules.build(day_code: 2, start_time: "17:00", end_time: "20:00")
sc.save!
sc = d.schedules.build(day_code: 4, start_time: "17:00", end_time: "20:00")
sc.save!
sc = d.schedules.build(day_code: 6, start_time: "16:00", end_time: "18:00")
sc.save!

# Nirwan Husni Lubis
d = Doctor.new(full_name: "Nirwan Husni Lubis", profesional_name: "drg. Nirwan Husni Lubis, Sp.BM-MARS", email: "nirwan.lubis@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Dentist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/nirwan-husni-lubis.png")), filename: "nirwan-husni-lubis.png")
d.specialists << gigi_mulut
d.save!
sc = d.schedules.build(day_code: 1, start_time: "16:00", end_time: "18:00")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "16:00", end_time: "18:00")
sc.save!
sc = d.schedules.build(day_code: 5, start_time: "16:00", end_time: "18:00")
sc.save!

# PARU
paru = Specialist.where("name ->> :key ILIKE :value", key: I18n.locale.to_s, value: "PULMONOLOGY").first

# Muhammad Syaifullah
d = Doctor.new(full_name: "Muhammad Syaifullah", profesional_name: "dr. Muhammad Syaifullah, Sp.P", email: "syaifullah@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Pulmonologist Specialist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.specialists << paru
d.save!
sc = d.schedules.build(day_code: 2, start_time: "17:00", end_time: "18:00")
sc.save!
sc = d.schedules.build(day_code: 4, start_time: "17:00", end_time: "18:00")
sc.save!

# MATA
mata = Specialist.where("name ->> :key ILIKE :value", key: I18n.locale.to_s, value: "OPHTHALMOLOGY").first

# Andreas Noerdin
d = Doctor.new(full_name: "Andreas Noerdin", profesional_name: "dr. Andreas Noerdin, Sp.M", email: "andreasnoerdin@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Ophthalmologist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/andreas-noerdin.png")), filename: "andreas-noerdin.png")
d.specialists << mata
d.save!
sc = d.schedules.build(day_code: 1, start_time: "16:00", end_time: "18:00")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "09:00", end_time: "10:30")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "15:00", end_time: "17:00")
sc.save!
sc = d.schedules.build(day_code: 5, start_time: "15:00", end_time: "17:00")
sc.save!
sc = d.schedules.build(day_code: 6, start_time: "10:00", end_time: "12:00")
sc.save!

# Sumarini Markoem
d = Doctor.new(full_name: "Sumarini Markoem", profesional_name: "dr. Sumarini Markoem, Sp.M", email: "sumarini@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Ophthalmologist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/sumarini-markoem.png")), filename: "sumarini-markoem.png")
d.specialists << mata
d.save!
sc = d.schedules.build(day_code: 1, start_time: "14:00", end_time: "16:00")
sc.save!
sc = d.schedules.build(day_code: 4, start_time: "14:00", end_time: "16:00")
sc.save!

# KULIT & KELAMIN
kulit = Specialist.where("name ->> :key ILIKE :value", key: I18n.locale.to_s, value: "DERMATOLOGY").first

# Indro Poerwanto
d = Doctor.new(full_name: "Indro Poerwanto", profesional_name: "dr. Indro Poerwanto, Sp.KK", email: "indro@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Dermatologist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/indro-poerwanto.png")), filename: "indro-poerwanto.png")
d.specialists << kulit
d.save!
sc = d.schedules.build(day_code: 2, start_time: "11:30", end_time: "13:00")
sc.save!
sc = d.schedules.build(day_code: 4, start_time: "11:30", end_time: "13:00")
sc.save!
sc = d.schedules.build(day_code: 6, start_time: "11:30", end_time: "13:00")
sc.save!

# Chasanah Gatam Joesoef
d = Doctor.new(full_name: "Chasanah Gatam Joesoef", profesional_name: "dr. Chasanah Gatam Joesoef, Sp.KK", email: "chasanah@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Dermatologist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.specialists << kulit
d.save!
sc = d.schedules.build(day_code: 2, start_time: "14:00", end_time: "15:00")
sc.save!
sc = d.schedules.build(day_code: 5, start_time: "14:00", end_time: "15:00")
sc.save!

# Reza Edward
d = Doctor.new(full_name: "Reza Edward", profesional_name: "dr. Reza Edward, Sp.DV", email: "reza.edward@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Dermatologist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/reza-edward.png")), filename: "reza-edward.png")
d.specialists << kulit
d.save!
sc = d.schedules.build(day_code: 1, start_time: "18:00", end_time: "19:00")
sc.save!
sc = d.schedules.build(day_code: 3, start_time: "18:00", end_time: "19:00")
sc.save!

# FISIOTERAPI
fisioterapi = Specialist.where("name ->> :key ILIKE :value", key: I18n.locale.to_s, value: "PHYSICAL THERAPY").first

# Aziz Djunaidi
d = Doctor.new(full_name: "Aziz Djunaidi", profesional_name: "dr. Aziz Djunaidi, Sp.KFR", email: "aziz-djunaidi@triadipa.com")
d.phone = FFaker::PhoneNumber.phone_number
d.title = "Physiotherapist"
d.str_no = "STR-500020300032"
d.content = FFaker::Lorem.paragraphs(rand(3)+2).join(" ")
d.photo.attach(io: File.open(Rails.root.join("vendor/assets/images/doctors/aziz-djunaidi.png")), filename: "aziz-djunaidi.png")
d.specialists << fisioterapi
d.save!
sc = d.schedules.build(day_code: 1, start_time: "14:00", end_time: "15:30")
sc.save!
sc = d.schedules.build(day_code: 4, start_time: "14:00", end_time: "15:30")
sc.save!

