User.create!(email: "vgtuanmanh@gmail.com",
             password:              "bjmbimcay",
             password_confirmation: "bjmbimcay",
             name:  "Vuong Tuan Manh",
             role: "admin")

User.create!(email: "nguyensinhhiep@gmail.com",
             password:              "bjmbimcay",
             password_confirmation: "bjmbimcay",
             name:  "Nguyen Sinh Hiep",
             role: "admin")

User.create!(email: "tathithuy@gmail.com",
             password:              "bjmbimcay",
             password_confirmation: "bjmbimcay",
             name: "Ta Thi Thuy",
             role: "admin")

5.times do |n|
  email = "user-#{n+4}@gmail.com"
  password = "bjmbimcay"
  name = Faker::Name.name
  User.create!(email: email,
              password:              password,
              password_confirmation: password,
              name: name)
end