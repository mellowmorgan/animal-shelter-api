FactoryBot.define do
  factory(:cat) do
    name {Faker::Creature::Cat.name}
    breed {Faker::Creature::Cat.breed}
    age {rand(1..21)}
  end
  factory(:dog) do
    name {Faker::Creature::Dog.name}
    breed {Faker::Creature::Dog.breed}
    age {rand(1..21)}
  end
end