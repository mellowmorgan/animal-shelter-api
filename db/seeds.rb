# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dog.destroy_all
Cat.destroy_all
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_cats
    seed.generate_dogs
  end

  def generate_cats
    50.times do |i|
      cat = Cat.create!(
        name: Faker::Creature::Cat.name,
        breed: Faker::Creature::Cat.breed, age: rand(1..21)
      )
      puts "Cat #{i}: name #{cat.name} and breed is '#{cat.breed}' and age is #{cat.age}."
    end
  end
  def generate_dogs
    20.times do |i|
      dog = Dog.create!(
        name: Faker::Creature::Dog.name,
        breed: Faker::Creature::Dog.breed, age: rand(1..21)
      )
      puts "Dog #{i}: name #{dog.name} and breed is '#{dog.breed}' and age is #{dog.age}."
    end
  end
end

Seed.begin