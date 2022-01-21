class Cat < ApplicationRecord
  #no validations because commonly an animal might be entered into shelter with unknown attributes, no name
  scope :search_breed, -> (breed_parameter) { where(breed: breed_parameter) }
end