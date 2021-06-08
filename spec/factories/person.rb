# spec/factories/person.rb
FactoryBot.define do
  factory :person do
    name { Faker::Lorem.word }
    date_of_birth { Faker::Date.in_date_period(month: 12, year: 2000) }
  end
end