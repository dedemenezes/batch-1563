require_relative 'car'

## Here we are creating two *instances* of the Car *Class*
## 'pink' is part of the *state* of sakura_car
sakura_car = Car.new('pink')
p sakura_car
#=> #<Car:0x00007fd0f5b405c8 @color="pink", @brand="Renault", @engine_started=false>

roberto_car = Car.new('green')
p roberto_car
#=> #<Car:0x00007fd0f5b47fa8 @color="gree", @brand="Renault", @engine_started=false>



# ## Here we are reading the state of each shoe to display some info
puts "Sakura's car is a #{sakura_car.color} #{sakura_car.brand}"
puts "Roberto's car is a #{roberto_car.color} #{roberto_car.brand}"
#=> 'Sakura's car is a pink Renault"
#=> 'Roberto's car is a green Renault"


## Here we are calling the start_engine method on sakura_car instance
## && it will change the value of @engine_started for this one car
# sakura_car.start_engine
#=> #<Car:0x00007fd0f5b405c8 @color="pink", @brand="Renault", @engine_started=true>
