require 'rails_helper'

describe "delete a dog route", :type => :request do
  let!(:dogs) { FactoryBot.create_list(:dog, 20)}
  before do
    @d_id = Dog.first.id
    delete "/api/v1/dogs/#{@d_id}"
  end
  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end

  it 'returns an deleted success status message' do
    expect(JSON.parse(response.body)['message']).to eq("This dog has been deleted successfully.")
  end
end