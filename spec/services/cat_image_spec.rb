require 'rails_helper'

describe CatImage do
  #check to make sure url is valid
  describe '#get_random_cat_pic_url' do
    it 'returns url' do
      expect(open(CatImage.get_random_cat_pic_url).status).to eq(["200", "OK"])
    end
  end
end