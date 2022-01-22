require 'rails_helper'

describe "get all cats route", :type => :request do
  Cat.destroy_all
  let!(:cats) { FactoryBot.create_list(:cat, 10)}

  it 'returns 5 cats page 1' do
    get '/api/v1/cats?page=1'
    expect(JSON.parse(response.body).size).to eq(5)
  end
  it 'returns 5 cats page 2' do
    get '/api/v1/cats?page=2'
    expect(JSON.parse(response.body).size).to eq(5)
  end
  
  it 'returns status code 200' do
    get '/api/v1/cats'
    expect(response).to have_http_status(:success)
  end
end