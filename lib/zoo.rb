class Zoo
  attr_reader :name,
              :street,
              :city



  def initialize(name, street, city)
    @name = name
    @street = street
    @city = city
    @inventory = []
  end

  def state
    p "NY"
  end

  def inventory
    inventory = []
  end

  def animal_count
    0
  end
  
end
