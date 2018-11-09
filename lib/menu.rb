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
end
