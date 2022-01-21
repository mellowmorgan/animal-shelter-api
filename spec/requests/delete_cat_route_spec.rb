require 'rails_helper'

describe "delete a cat route", :type => :request do
  let!(:cats) { FactoryBot.create_list(:cat, 20)}
  before do
    @c_id = Cat.first.id
    delete "/cats/#{@c_id}"
  end
  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end

  it 'returns an deleted success status message' do
    expect(JSON.parse(response.body)['message']).to eq("This cat has been deleted successfully.")
  end
end