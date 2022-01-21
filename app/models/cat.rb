class Cat < ApplicationRecord
  scope :search_breed, -> (breed_parameter) { where(breed: breed_parameter) }
end