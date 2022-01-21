require 'rails_helper'

describe DogImage do
  #check to make sure url is valid
  describe '#get_random_dog_pic_url' do
    it 'returns url' do
      expect(open(DogImage.get_random_dog_pic_url).status).to eq(["200", "OK"])
    end
  end
end