# spec/models/todo_spec.rb
require 'rails_helper'

# Test suite for the Todo model
RSpec.describe Communication, type: :model do
  # Association test
  # ensure Communication model has a 1:m relationship with the Attachment model
  it { should have_many(:attachment).dependent(:destroy) }
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:title) }

  it { should validate_presence_of(:content) }

  it { should belong_to(:person) }
end
