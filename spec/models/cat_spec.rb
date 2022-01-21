require 'rails_helper'

describe Cat do
  before(:each) do
    @cat_1 = Cat.create!({name:"Mittens", breed:"Ugly", age:3})
    @cat_2 = Cat.create!({name:"Pretty", breed:"Persian", age:3})
  end
  describe '#search_breed' do
    it 'returns cats by breed search' do
      expect(Cat.search_breed('Persian')).to eq([@cat_2])
    end
  end
end
