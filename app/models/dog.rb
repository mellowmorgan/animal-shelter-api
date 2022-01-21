class Dog < ApplicationRecord
  validates :name, presence: true
  validates :age, :inclusion => 1..21
  scope :search_breed, -> (breed_parameter) { where(breed: breed_parameter) }

end