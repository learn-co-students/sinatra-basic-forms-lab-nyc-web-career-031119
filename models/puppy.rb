class Puppy

  attr_accessor :name, :breed, :age

  def initialize(attributes={})
    @name = attributes[:name]
    @breed = attributes[:breed]
    @age = attributes[:age]
  end

end
