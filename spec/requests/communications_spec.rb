# spec/requests/communication_spec.rb
require 'rails_helper'

RSpec.describe 'Communications API', type: :request do
  # initialize test data
  let!(:person) { create(:person) }
  let!(:communications) { create_list(:communication, 10) }
  let(:person_id) { people.first.id }

  # Test suite for GET /communications
  describe 'GET /communications' do
    # make HTTP get request before each example
    before { get '/communications' }

    it 'returns people' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

end