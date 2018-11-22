AdminUser.create!(email: "adminwizard@test.com" , password: "asdasd" , password_confirmation: "asdasd", first_name: "Gandalf" , last_name: "The White" , full_name: "Gandalf The White")
User.create!(email: "kingofmiddleearht@test.com" , password: "asdasd" , password_confirmation: "asdasd", first_name: "Aragorn" , last_name: "Son of Arathorn", full_name: "Aragorn Son of Arathorn")
User.create!(email: "princeelf@test.com" , password: "asdasd" , password_confirmation: "asdasd", first_name: "Legolas" , last_name: "Son of Thranduil", full_name: "Legolas Son of Thranduil")
User.create!(email: "dwarf@test.com" , password: "asdasd" , password_confirmation: "asdasd", first_name: "Gimli" , last_name: "Son of Gloin", full_name: "Gimli Son of Gloin")
User.create!(email: "captain@test.com" , password: "asdasd" , password_confirmation: "asdasd", first_name: "Boromir" , last_name: "Son of Denethor", full_name: "Boromir Son of Denethor")
User.create!(email: "kingofrohan@test.com" , password: "asdasd" , password_confirmation: "asdasd", first_name: "Eomer" , last_name: "Son of Eomund", full_name: "Eomer Son of Eomund")



20.times do |p|
	Post.create!(date: Date.today, rationale: "#{p + 1} rationale content" ,user_id: 2)
end
20.times do |p|
	Post.create!(date: Date.today, rationale: "#{p + 21} rationale content" ,user_id: 3)
end
20.times do |p|
	Post.create!(date: Date.today, rationale: "#{p + 41} rationale content" ,user_id: 4)
end
20.times do |p|
	Post.create!(date: Date.today, rationale: "#{p + 61} rationale content" ,user_id: 5)
end
20.times do |p|
	Post.create!(date: Date.today, rationale: "#{p + 81} rationale content" ,user_id: 6)
end

