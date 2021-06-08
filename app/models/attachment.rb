class Attachment < ApplicationRecord
  belongs_to :communication, dependent: :destroy

  validates_presence_of :communication_id
end
