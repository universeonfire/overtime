AdminUser.create!(email: "adminwizard@test.com" , password: "asdasd" , password_confirmation: "asdasd", first_name: "Gandalf" , last_name: "The White" , full_name: "Gandalf The White", ssn: 1, company: "Fellowship")
Employee.create!(email: "kingofgondor@test.com" , password: "asdasd" , password_confirmation: "asdasd", first_name: "Aragorn" , last_name: "Son of Arathorn", full_name: "Aragorn Son of Arathorn", ssn: 2, company: "Fellowship")
Employee.create!(email: "princeelf@test.com" , password: "asdasd" , password_confirmation: "asdasd", first_name: "Legolas" , last_name: "Son of Thranduil", full_name: "Legolas Son of Thranduil", ssn: 3, company: "Fellowship")
Employee.create!(email: "dwarf@test.com" , password: "asdasd" , password_confirmation: "asdasd", first_name: "Gimli" , last_name: "Son of Gloin", full_name: "Gimli Son of Gloin", ssn: 4, company: "Fellowship")
Employee.create!(email: "captain@test.com" , password: "asdasd" , password_confirmation: "asdasd", first_name: "Boromir" , last_name: "Son of Denethor", full_name: "Boromir Son of Denethor", ssn: 5, company: "Fellowship")
Employee.create!(email: "kingofrohan@test.com" , password: "asdasd" , password_confirmation: "asdasd", first_name: "Eomer" , last_name: "Son of Eomund", full_name: "Eomer Son of Eomund", ssn: 6, company: "Rohan")



 
Post.create!(date: Date.today, work_performed: "#{1} work_performed content" ,user_id: 2, daily_hours: 2.5)
Auditlog.create!(user_id: 2, status: 0, start_date: (Date.today - 6.days))


Post.create!(date: Date.today, work_performed: "#{21} work_performed content" ,user_id: 3, daily_hours: 1.5)
Auditlog.create!(user_id: 3, status: 0, start_date: (Date.today - 6.days))


Post.create!(date: Date.today, work_performed: "#{41} work_performed content" ,user_id: 4, daily_hours: 3.5)
Auditlog.create!(user_id: 4, status: 0, start_date: (Date.today - 6.days))


Post.create!(date: Date.today, work_performed: "#{61} work_performed content" ,user_id: 5, daily_hours: 2.5)
Auditlog.create!(user_id: 5, status: 0, start_date: (Date.today - 6.days))


Post.create!(date: Date.today, work_performed: "#{81} work_performed content" ,user_id: 6, daily_hours: 5.5)
Auditlog.create!(user_id: 6, status: 0, start_date: (Date.today - 6.days))


