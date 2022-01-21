require 'rails_helper'

describe Dog do
  before(:each) do
    @dog_1 = Dog.create!({name:"Oreo", breed:"Newfoundland", age:7})
    @dog_2 = Dog.create!({name:"Dainty", breed:"Poodle", age:4})
  end
  describe '#search_breed' do
    it 'returns dogs by breed search' do
      expect(Dog.search_breed('Poodle')).to eq([@dog_2])
    end
  end
end