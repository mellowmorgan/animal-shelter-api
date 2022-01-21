class Dog < ApplicationRecord
  scope :search_breed, -> (breed_parameter) { where(breed: breed_parameter) }
  has_one_attached :image
end