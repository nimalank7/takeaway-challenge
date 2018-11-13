require_relative "./dish.rb"

class Menu
  attr_accessor :dishes
  def initialize
    @dishes = []
  end

  def display_dishes
    @dishes.each do |dish|
      puts "#{dish.name}: #{dish.price}"
    end
  end
  def add_dish(dish_name, price, dish_class = Dish)
    dish = dish_class.new(dish_name, price)
    @dishes << dish
  end
end
