require 'rails_helper'

describe Dog do
  before(:each) do
    @dog_1 = Dog.create!({name:"Oreo", breed:"Newfoundland", age:7, image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg"})
    @dog_2 = Dog.create!({name:"Dainty", breed:"Poodle", age:4,image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg"})
  end
  it { should validate_presence_of :name }
  it { should validate_inclusion_of(:age).in_range(1..21) }
  describe '#search_breed' do
    it 'returns dogs by breed search' do
      expect(Dog.search_breed('Poodle')).to eq([@dog_2])
    end
  end
end