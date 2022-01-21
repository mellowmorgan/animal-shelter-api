require 'rails_helper'

describe "get all dogs route", :type => :request do
  Dog.destroy_all
  let!(:dogs) {FactoryBot.create_list(:dog, 9)}

  it 'returns 9 dogs' do
    get '/dogs'
    expect(JSON.parse(response.body).size).to eq(9)
  end
  it 'returns status code 200' do
    get '/dogs'
    expect(response).to have_http_status(:success)
  end
end