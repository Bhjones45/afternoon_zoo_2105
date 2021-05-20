class Animal
  attr_reader :kind,
              :weight,  #not needed
              :age      #not needed

  def initialize(kind, weight, age)
    @kind   = kind
    @weight = weight
    @age    = age
  end

  def weight
    p "#{@weight} pounds"
  end

  def age
    p "#{@age} weeks"
  end

  def age_in_days
   @age * 7
  end

  def feed!(number)
    @weight += number
  end

  def first_letter
    kind[0]
  end
  
end
