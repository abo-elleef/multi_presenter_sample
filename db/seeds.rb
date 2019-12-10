# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#


cat = Category.create(name: 'cat name', desc: 'cat desc')
10.times do |index|
  User.create({
                  phone: "phone_ #{index}",
                  email: "email_#{index}@gmail.com",
                  name: "name_#{index}",
                  address: "address_#{index}",
                  category_id: cat.id
              })
end
user_ids = User.pluck(:id)
100.times do |index| Post.create(title: "title #{index}", body: "body #{index}", user_id: user_ids.sample ) end
