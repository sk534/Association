# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create(name: "kumar",mobile:"9177382092")

tenth = Degree.create(name: "Tenth")
plustwo = Degree.create(name: "Plus2")
bachelors = Degree.create(name: "BTech")
masters = Degree.create(name: "MTech")

UserDegree.create(user_id: user.id, degree_id: tenth.id)
UserDegree.create(user_id: user.id, degree_id: plustwo.id)
UserDegree.create(user_id: user.id, degree_id: bachelors.id)
UserDegree.create(user_id: user.id, degree_id: masters.id)

