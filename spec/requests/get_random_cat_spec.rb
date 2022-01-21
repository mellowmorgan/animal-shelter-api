require 'rails_helper'

describe "get a random cat route", :type => :request do
  Cat.destroy_all
  let!(:cats) { FactoryBot.create_list(:cat, 20)}

  before { get '/cats/random'}

  it 'returns one random cat' do
    expect(JSON.parse(response.body).size).to eq(4)
    expect(JSON.parse(response.body)['name']).to_not eq(nil)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end