class Cat < ApplicationRecord
  validates :name, presence: true
  scope :search_breed, -> (breed_parameter) { where(breed: breed_parameter) }
  
end