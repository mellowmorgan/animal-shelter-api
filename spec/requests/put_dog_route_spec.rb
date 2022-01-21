require 'rails_helper'

describe "update a dog route", :type => :request do
  let!(:dogs) { FactoryBot.create_list(:dog, 20)}
  before do
    put "/dogs/#{Dog.first.id}", params: { :name => 'test_name_updated', :breed => 'test_breed_updated',
    :age => 7 } 
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end

  it 'returns an updated status message' do
    expect(JSON.parse(response.body)['message']).to eq("This dog has been updated successfully.")
  end

  it 'should have new name and breed and age' do
    expect(Dog.first.name).to eq("test_name_updated")
    expect(Dog.first.breed).to eq("test_breed_updated")
    expect(Dog.first.age).to eq(7)
  end
end
