class Communication < ApplicationRecord
  belongs_to :person, dependent: :destroy
  has_many :attachment, dependent: :destroy

  validates_presence_of :title, :content
  scope :adults_com,  -> { where(person_id: Person.adults.pluck(:id)) }

end
