require 'rails_helper'

describe CatImage do
  before(:each) do
    @dog_1 = CatImage.create!({name:"Oreo", breed:"Newfoundland", age:7, image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg"})
    @dog_2 = Dog.create!({name:"Dainty", breed:"Poodle", age:4,image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg"})
  end
  describe '#search_breed' do
    it 'returns dogs by breed search' do
      expect(Dog.search_breed('Poodle')).to eq([@dog_2])
    end
  end
end