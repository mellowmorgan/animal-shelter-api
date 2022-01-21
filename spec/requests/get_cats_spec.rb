require 'rails_helper'

describe "get all cats route", :type => :request do
  Cat.destroy_all
  let!(:cats) { FactoryBot.create_list(:cat, 10)}

  it 'returns 10 cats' do
    get '/cats'
    expect(JSON.parse(response.body).size).to eq(10)
  end
  
  it 'returns status code 200' do
    get '/cats'
    expect(response).to have_http_status(:success)
  end
end