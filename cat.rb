class Cat

  attr_reader :name, :adopted
  attr_accessor :rested, :fed, :entertained, :happy

  def initialize(name)
    @name = name
    @fed = false
    @rested = false
    @adopted = false
    @entertained = false

    @happy = false
  end

  def feed
    @fed = true
  end

  def sleeps
    @rested = true
  end

  def play
    if @rested
      @entertained = true
      @rested = false
    end
  end

  def adopt
    @adopted = true
  end

  def happy?
    @happy = @fed && @rested && @entertained && @adopted
  end

  def pet
    happy?
    puts "You pet #{name}. #{name} is " + (@happy ? "happy. They purr!" : "not happy. They hiss.")
  end

end



# Write a Car class (we didn't get around to this one)
#
# Initialize a car with:
#
# License plate number
# Owner's name
# Goals:
#
# A car can be started (turn ignition on)
# A car can be stopped (turn ignition off)
# A car can drive a given number of kilometres
# A car can report its kilometrage
# A car can crash, by itself, or with another car
# Total number of cars should be kept track of
# Total kilometres driven by all cars in existence should be kept track of
# Questions to ask yourself:
#
# What kind of state (i.e. instance and class variables) do you need?
# Exactly when can a car be driven?
