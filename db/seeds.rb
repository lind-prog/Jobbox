User.destroy_all

User.create!(
  name: "duke Kaboom",
  email: "tata@gmail.com",
  password: "password123",
  password_confirmation: "password123",
  role: 0
)

puts "User demandeur d'emploi créé avec succès !"
