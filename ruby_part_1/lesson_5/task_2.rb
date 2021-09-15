TRUCK = true
TRANSMISSION_AUTO = true
FOUR_WHEEL_DRIVE = true

class Car
  def vendor
    @vendor
  end

  def set_vendor(vendor)
    @vendor = vendor
  end

  def model
    @model
  end

  def set_model(model)
    @model = model
  end

  def car_type
    @car_type
  end

  def set_car_type(car_type)
    @car_type = car_type
  end

  def colors
    @colors
  end

  def set_colors(colors)
    @colors = colors
  end

  def four_wheel_drive
    @four_wheel_drive
  end

  def set_four_wheel_drive(four_wheel_drive)
    @four_wheel_drive = four_wheel_drive
  end

  def max_speed
    @max_speed
  end

  def set_max_speed(max_speed)
    @max_speed = max_speed
  end

  def wheel_size
    @wheel_size
  end

  def set_wheel_size(wheel_size)
    @wheel_size = wheel_size
  end

  def transmission_type
    @transmission_type
  end

  def set_transmission_type(transmission_type)
    @transmission_type = transmission_type
  end

  def transmission
    @transmission
  end

  def set_transmission(transmission)
    @transmission = transmission
  end

  def engine_volume
    @engine_volume
  end

  def set_engine_volume(engine_volume)
    @engine_volume = engine_volume
  end
end

def new_car(vendor, model, car_type, colors, four_wheel_drive, max_speed, wheel_size, transmission_type, transmission, engine_volume)
  car_obj = Car.new
  car_obj.set_vendor vendor
  car_obj.set_model model
  car_obj.set_car_type car_type
  car_obj.set_colors colors
  car_obj.set_four_wheel_drive four_wheel_drive
  car_obj.set_max_speed max_speed
  car_obj.set_wheel_size wheel_size
  car_obj.set_transmission_type transmission_type
  car_obj.set_transmission transmission
  car_obj.set_engine_volume engine_volume
  return car_obj
end

def show_car_type(cars, car_is_truck)
  if car_is_truck
    puts 'Cars type is TRUCK'
  else
    puts 'Cars type is PASSENGER'
  end
  cars.each do |car| 
    puts car.vendor if car.car_type == car_is_truck
  end
end

def show_color(cars, color)
  puts "Cars with color: #{color}"
  cars.each do |car|
    puts car.vendor if car.colors.include?(color)
  end
end

def show_transmission_type(cars, transmission_type)
  if transmission_type
    puts 'Cars with auto transmition'
  else
    puts 'Cars with manual transmition'
  end
  cars.each do |car|
    puts car.vendor if car.transmission_type == transmission_type
  end
end

def show_4wd_cars(cars, four_wheel_drive)
  if four_wheel_drive
    puts 'Cars with 4wd'
  else
    puts 'Cars without 4wd'
  end
  cars.each do |car|
    puts car.vendor if car.four_wheel_drive == four_wheel_drive
  end
end

car1 = new_car('Car1', 'Model1', TRUCK, ['red', 'white'], !FOUR_WHEEL_DRIVE, 150, 245, TRANSMISSION_AUTO, 5, 3.0)
car2 = new_car('Car2', 'Model2', !TRUCK, ['black', 'white'], FOUR_WHEEL_DRIVE, 200, 215, !TRANSMISSION_AUTO, 5, 2.0)
car3 = new_car('Car3', 'Model3', TRUCK, ['red', 'white', 'black'], FOUR_WHEEL_DRIVE, 140, 235, TRANSMISSION_AUTO, 4, 2.3)
car4 = new_car('Car4', 'Model4', !TRUCK, ['black', 'white'], !FOUR_WHEEL_DRIVE, 100, 300, !TRANSMISSION_AUTO, 5, 4.0)

all_cars = [car1, car2, car3, car4]

show_car_type(all_cars, TRUCK)
show_color(all_cars, 'red')
show_transmission_type(all_cars, TRANSMISSION_AUTO)
show_4wd_cars(all_cars, !FOUR_WHEEL_DRIVE)
