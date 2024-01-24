# NAMING CONVENTION #
#### car.rb              singular & lower_snake_case
#### class Car           singular & UpperCamelCase
#### mountain_bike.rb     singular & lower_snake_case
#### class MountainBike   singular & UpperCamelCase

class Car
  ## constructor method: gets called when Car.new ##
  # STATE/ATTRIBUTES (What your Class IS!)
  def initialize(color)
    # puts 'creating new instance of Car class' (used to demonstrate Car.new calls the initialize method)
    @color = color           # Dynamic value
    @brand = 'Renault'       # Default value
    @engine_started = false  # Default value
  end

  ## reader == reading permissions && writer == writing permissions ##
  # attr_reader :color, :brand
  # attr_writer :color, :brand

  ## accessor == reader + writer ##
  attr_accessor :color, :brand

  # BEHAIVOR (What your Class can DO!)
  def start_engine
    # calls method from the private interface
    injecting_fuel

    @engine_started = true
  end

  def engine_started?
    return @engine_started
  end

  def accelerate
    'Acceleration started...'
  end

  ## those are equivalent to att_reader ##
  ## instance method to expose value of @instance_variable
  # def color
  #   # access the given instance, return the value for @color
  #   @color
  # end

  # def brand
  #   return @brand
  # end

  ## those are equivalent to att_writer ##
  ## instance method to reassign values of @instance_variable
  # def color=(new_color)
  #   @color = new_color
  # end

  # def brand=(new_brand)
  #   @brand = new_brand
  # end

  # everything below this keyword, will be only usable within the Class
  private

  # this is just an example! we still don't puts in methods ;D
  def injecting_fuel
    puts 'injecting fuel...'
  end
end
