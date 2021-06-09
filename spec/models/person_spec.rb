# spec/models/person_spec.rb
require 'rails_helper'

# Test suite for the Person model
RSpec.describe Person, type: :model do
  # Association test
  # ensure Person model has a 1:m relationship with the Communication model
  it { should have_many(:communications).dependent(:destroy) }
  # Validation tests
  # ensure columns name is present before saving
  it { should validate_presence_of(:name) }
end