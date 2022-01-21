require 'rails_helper'

describe Cat do
  before(:each) do
    @cat_1 = Cat.create!({name:"Mittens", breed:"Ugly", age:3, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/White_Persian_Cat.jpg/440px-White_Persian_Cat.jpg" })
    @cat_2 = Cat.create!({name:"Pretty", breed:"Persian", age:3, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/White_Persian_Cat.jpg/440px-White_Persian_Cat.jpg"})
  end
  describe '#search_breed' do
    it 'returns cats by breed search' do
      expect(Cat.search_breed('Persian')).to eq([@cat_2])
    end 
  end
end
