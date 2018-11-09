require 'dish'
describe Dish do
  it "sets the price to what the user passes" do
    dish = Dish.new("chips", 4)
    expect(dish.price).to eq 4
  end
  it "sets the name to what the user passes" do
    dish = Dish.new("chips", 4)
    expect(dish.name).to eq "chips"
  end
end
