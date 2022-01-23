require 'rails_helper'

describe "get all dogs route", :type => :request do
  Dog.destroy_all
  let!(:dogs) {FactoryBot.create_list(:dog, 9)}

  it 'returns 5 dogs page 1' do
    get '/api/v1/dogs'
    expect(JSON.parse(response.body).size).to eq(5)
  end
  it 'returns 4 dogs page 1' do
    get '/api/v1/dogs?page=2'
    expect(JSON.parse(response.body).size).to eq(4)
  end
  it 'returns status code 200' do
    get '/api/v1/dogs'
    expect(response).to have_http_status(:success)
  end
end
describe "get dogs by breed route", :type => :request do
  Dog.destroy_all
  it 'returns 2 dogs with German Shepard breed' do
    post "/api/v1/dogs", params: { :name => 'Bop', :breed => 'German Shepard',
    :age => 5 } 
    post "/api/v1/dogs", params: { :name => 'Bop', :breed => 'Bulldog',
    :age => 5 } 
    post "/api/v1/dogs", params: { :name => 'Bop', :breed => 'German Shepard',
    :age => 5 } 
    get '/api/v1/dogs?breed=German Shepard'
    expect(JSON.parse(response.body).size).to eq(2)
  end
end