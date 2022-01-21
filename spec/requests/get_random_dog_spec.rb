require 'rails_helper'

describe "get a random dog route", :type => :request do
  Dog.destroy_all
  let!(:dogs) { FactoryBot.create_list(:dog, 20)}

  before { get '/dogs/random'}

  it 'returns one random dog' do
    expect(JSON.parse(response.body).size).to eq(5)
    expect(JSON.parse(response.body)['name']).to_not eq(nil)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end