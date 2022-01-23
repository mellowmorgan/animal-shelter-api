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
describe "get cats by breed route", :type => :request do
  Cat.destroy_all
  it 'returns 2 cats with Persian breed' do
    post "/api/v1/cats", params: { :name => 'Bop', :breed => 'Persian',
    :age => 5 } 
    post "/api/v1/cats", params: { :name => 'Bop', :breed => 'Persian',
    :age => 5 } 
    post "/api/v1/cats", params: { :name => 'Bop', :breed => 'Tabby',
    :age => 5 } 
    get '/api/v1/cats?breed=Persian'
    expect(JSON.parse(response.body).size).to eq(2)
  end
end