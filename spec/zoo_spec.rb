require 'rspec'
require './lib/animal'
require './lib/zoo'

RSpec.describe Zoo do
  it 'exists' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx")

    expect(zoo).to be_an_instance_of(Zoo)
  end

  it 'street address' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx")

    expect(zoo.street).to eq("2300 Southern Blvd")
  end

  it 'city' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx")

    expect(zoo.city).to eq("Bronx")
  end

  it 'state' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx")

    expect(zoo.state).to eq("NY")
  end

  it 'contains inventory' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx")

    expect(zoo.inventory).to eq([])
  end

  it 'amount of animals' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx")

    expect(zoo.animal_count).to eq(0)
  end

  it 'animal_1 stats' do
    animal_1 = Animal.new("Sea Otter", 10, 25)

    expect(animal_1).to be_an_instance_of(Animal)
  end

  it 'animal_2 stats' do
    animal_2 = Animal.new("Red Panda", 5, 70)

    expect(animal_2).to be_an_instance_of(Animal)
  end


  before :each do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx")
    animal_1 = Animal.new("Sea Otter", 10, 25)
    animal_2 = Animal.new("Red Panda", 5, 70)

    zoo.add_animal(animal_1)
    zoo.add_animal(animal_2)

    expect(zoo.inventory).to eq(animal_1, animal_2)
    expect(zoo.animal_count).to eq (2)
  end

  # it 'gains animal_1' do
  #   # zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx")
  #
  #   expect(zoo.add_animal).to eq(@animal_1)
  # end
  #
  # it 'gains animal_2' do
  #   # zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx")
  #
  #   expect(zoo.add_animal).to eq(@animal_2)
  # end


#ask question: I can't shovel my animals into the inventory
  it 'increases inventory' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx")

    expect(zoo.inventory.add_animal).to eq([animal_1, animal_2])
  end



  # before :each do
  #   zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx")
  #   @animal_1 = Animal.new("Sea Otter", 10, 25)
  #   @animal_2 = Animal.new("Red Panda", 5, 70)
  #   @animal_3 = Animal.new("Capybara", 100, 150)
  #   @animal_4 = Animal.new("Dolphin", 150, 200)
  # end
  #
  # it 'add animals to inventory' do
  #   zoo.add_animal(animal_1)
  #   zoo.add_animal(animal_2)
  #   zoo.add_animal(animal_3)
  #   zoo.add_animal(animal_4)
  #
  #   expect(zoo.animal_count).to eq(4)
  # end


end
