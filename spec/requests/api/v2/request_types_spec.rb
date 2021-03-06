# frozen_string_literal: true

require 'rails_helper'

describe 'RequestTypes API', with: :api_v2 do
  context 'with multiple request_types' do
    before do
      create_list(:request_type, 5)
    end

    it 'sends a list of request_types' do
      api_get '/api/v2/request_types'
      # test for the 200 status-code
      expect(response).to have_http_status(:success)
      # check to make sure the right amount of messages are returned
      expect(json['data'].length).to eq(RequestType.count)
    end

    # Check filters, ESPECIALLY if they aren't simple attribute filters
  end

  context 'with a request_type' do
    let(:resource_model) { create :request_type }

    it 'sends an individual request_type' do
      api_get "/api/v2/request_types/#{resource_model.id}"
      expect(response).to have_http_status(:success)
      expect(json.dig('data', 'type')).to eq('request_types')
    end
  end
end
