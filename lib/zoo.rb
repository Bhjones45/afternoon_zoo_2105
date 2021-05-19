class Zoo
  attr_reader :name,
              :street,
              :city,
              :animal_1,
              :animal_2,
              :inventory

  def initialize(name, street, city)
    @name = name
    @street = street
    @city = city
    @inventory = []
    @animal_1 = animal_1
    @animal_2 = animal_2
    @animal_count = 0
  end

  def state
    p "NY"
  end

  def inventory
    inventory = []
  end

  def animal_count
    inventory.count
  end

  def add_animal(animal)
    inventory << animal
  end

end
