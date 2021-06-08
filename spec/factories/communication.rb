# spec/factories/communication.rb
FactoryBot.define do
  factory :communication do
    title { Faker::Lorem.word }
    content { Faker::Lorem.words }
    person_id { Person.last.id }
  end
end