class Person < ApplicationRecord
  has_many :communications, dependent: :destroy
  validates_presence_of :name
  scope :adults, -> { where('date_of_birth < ?', (Time.now - 18.year).to_date).all }
end
