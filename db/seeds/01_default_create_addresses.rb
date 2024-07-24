Address.delete_all
puts "create addresses"

address = Address.new(name: "Hospital", complete_address: "<strong>Jl. Raya Pasar Minggu No.3A</strong><br/>Pancoran Jakarta Selatan<br/>Jakarta 12780", order_no: 1)
address.email1 = "info@triadipa.com"
address.phone1 = "(021) 797-4071"
address.phone2 = "(021) 797-4070"
address.save
puts "Create address: #{address.name}"
