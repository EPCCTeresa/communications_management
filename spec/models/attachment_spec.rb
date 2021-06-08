# spec/models/todo_spec.rb
require 'rails_helper'

# Test suite for the Todo model
RSpec.describe Attachment, type: :model do
  # Association test
  # ensure Attachment model has a m:1 relationship with the Attachment model
  # Validation tests
  # ensure columns communication_id is present before saving
  it { should validate_presence_of(:communication_id) }

  it { should belong_to(:communication) }
end
