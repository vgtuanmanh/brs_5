User.create!(name:  "Vuong Tuan Manh",
             email: "vgtuanmanh@gmail.com",
             password:              "bjmbimcay",
             password_confirmation: "bjmbimcay",
             admin:     true)

User.create!(name:  "Nguyen Sinh Hiep",
             email: "nguyensinhhiep@gmail.com",
             password:              "bjmbimcay",
             password_confirmation: "bjmbimcay",
             admin:     true)

User.create!(name:  "Vuong Tuan Manh",
             email: "nguyensinhhiep@gmail.com",
             password:              "bjmbimcay",
             password_confirmation: "bjmbimcay",
             admin:     true)

10.times do |n|
  name = Faker::Name.name
  email = "user-#{n+3}@gmail.com"
  password = "bjmbimcay"
  User.create!(name: name,
              email: email,
              password:              password,
              password_confirmation: password,
              admin:    false)
end
