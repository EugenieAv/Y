puts "restaurants destruction ..."
Restaurant.destroy_all if Rails.env.development?

Restaurant.create!(name: "Chez Mamie", address: "La Garde", category: "chinese", phone_number: "04 94 22 33 44 ")
Restaurant.create!(name: "Chez Maman", address: "La Garde Le Thouar" , category: "french", phone_number: "04 94 22 33 44 ")
Restaurant.create!(name: "A la Casa", address: "Montpellier", category: "chinese", phone_number: "04 94 22 33 44 ")
Restaurant.create!(name: "Les frères Poulard", address: "Rue du Courreau", category: "belgian", phone_number: "04 94 22 33 44 ")
Restaurant.create!(name: "Italia", address: "Les halles Plaza", category: "italian" , phone_number: "04 94 22 33 44 ")

puts "#{Restaurant.count} crés"
