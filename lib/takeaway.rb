require_relative "./menu.rb"

class Takeaway
  attr_reader :menu
  attr_reader :ordered_dishes
  def initialize(menu_class = Menu)
    @ordered_dishes = []
    @menu = menu_class.new
  end
  def place_order(dish_name, quantity)
    array = menu.dishes.select do |dish|
      dish.name == dish_name
    end
    quantity.times do
      ordered_dishes << array[0]
    end
  end
end
