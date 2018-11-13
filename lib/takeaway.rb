require_relative "./menu.rb"
require_relative "./dish.rb"

class Takeaway
  attr_reader :menu, :ordered_dishes
  attr_accessor :total
  def initialize(menu_class = Menu)
    @ordered_dishes = []
    @menu = menu_class.new
    @total = 0
  end
  def place_order(dish_name, quantity)
    array = menu.dishes.select do |dish|
      dish.name == dish_name
    end
    quantity.times do
      @total += array[0].price
      ordered_dishes << array[0]
    end
  end
end
