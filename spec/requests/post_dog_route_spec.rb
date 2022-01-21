require 'rails_helper'

describe "post a cat route", :type => :request do
  let!(:dogs) { FactoryBot.create_list(:dog, 20)}

  before do
    post '/dogs', params: { :name => 'test_name', :breed => 'test_breed',
    :age => 4 }
  end

  it 'returns the dog name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the dog breed' do
    expect(JSON.parse(response.body)['breed']).to eq('test_breed')
  end
  it 'returns the dog age' do
    expect(JSON.parse(response.body)['age']).to eq(4)
  end
  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
