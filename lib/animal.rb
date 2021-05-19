class Animal
  attr_reader :kind,
              :weight,
              :age

  def initialize(kind, weight, age)
    @kind = kind
    @weight = weight
    @age = age
  end

  def weight
    p "#{@weight} pounds"
  end

  def age
    p "25 weeks"
  end

  def age_in_days
   @age * 7
  end

  def feed!(number)
    @weight += number
  end

end
