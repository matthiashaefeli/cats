# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


susi=User.create(email: "test@test.com", password: "123456")
eva=User.create(email: "test2@test.com", password: "123456")
susi.update(first_name: "susi",
							last_name: "chiflada",
							street: "9011 woodlane blv",
							zip_code: "77354",
							city: "Houston",
							state: "TX",
							tel: "123456789",
							mobile: "123456789",
							getcat: true
							)
eva.update(first_name: "eva",
							last_name: "chismosa",
							street: "31911 Fm 2978 Rd",
							zip_code: "77354",
							city: "Houston",
							state: "TX",
							tel: "123456789",
							mobile: "123456789",
							getcat: true
							)
estupido=Cat.create(name: "estupido", breed: "whoknows", age: "12", comment: "yes she eats", user_id: susi.id)
tonta=Cat.create(name: "tonta", breed: "everybody", age: "56", comment: "to old to live", user_id: susi.id)
falso=Cat.create(name: "falso", breed: "fake", age: "1", comment: "yes it's not true", user_id: eva.id)
superman=Cat.create(name: "superman", breed: "super", age: "2", comment: "can fly", user_id: eva.id)

