require 'rails_helper'

describe "get all dogs route", :type => :request do
  Dog.destroy_all
  let!(:dogs) {FactoryBot.create_list(:dog, 9)}

  it 'returns 5 dogs page 1' do
    get '/dogs'
    expect(JSON.parse(response.body).size).to eq(5)
  end
  it 'returns 4 dogs page 1' do
    get '/dogs?page=2'
    expect(JSON.parse(response.body).size).to eq(4)
  end
  it 'returns status code 200' do
    get '/dogs'
    expect(response).to have_http_status(:success)
  end
end