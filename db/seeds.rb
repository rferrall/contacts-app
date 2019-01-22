# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
contact = Contact.new(first_name: "Mike", last_name: "Haggar", email: "mhaggar@gmail.com", phone_number: "444-123-4567")

contact.save
contact = Contact.new(first_name: "Jules", last_name: "Verne", email: "julesboats4life@gmail.com", phone_number: "222-666-4567")
contact.save

contact = Contact.new(first_name: "Esmeralda", last_name: "Jones", email: "wisheswerehorses@gmail.com", phone_number: "987-654-4567")
contact.save
