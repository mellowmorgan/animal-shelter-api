require 'rails_helper'

describe "update a cat route", :type => :request do
  let!(:cats) { FactoryBot.create_list(:cat, 20)}
  before do
    put "/cats/#{Cat.first.id}", params: { :name => 'test_name_updated', :breed => 'test_breed_updated',
    :age => 5 } 
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end

  it 'returns an updated status message' do
    expect(JSON.parse(response.body)['message']).to eq("This cat has been updated successfully.")
  end

  it 'should have new name and breed and age' do
    expect(Cat.first.name).to eq("test_name_updated")
    expect(Cat.first.breed).to eq("test_breed_updated")
    expect(Cat.first.age).to eq(5)
  end
end
