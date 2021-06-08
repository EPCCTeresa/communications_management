# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Person.find_or_create_by(name: 'María', date_of_birth: (Time.now - 21.year).to_date)
Person.find_or_create_by(name: 'David', date_of_birth: (Time.now - 14.year).to_date)
Person.find_or_create_by(name: 'Fernando', date_of_birth: (Time.now - 28.year).to_date)
Communication.find_or_create_by(person_id: Person.last.id, creator_id: Person.first.id, title: 'First notification', content: "First person notification")
Communication.find_or_create_by(person_id: Person.last.id, title: 'First notification', content: "First person notification")
Communication.find_or_create_by(person_id: Person.second.id, title: 'Second notification', content: "Second person notification")
Attachment.find_or_create_by(communication_id: Communication.second.id)
Attachment.find_or_create_by(communication_id: Communication.second.id)
Attachment.find_or_create_by(communication_id: Communication.second.id)
