require 'dish'
describe Dish do
  let(:dish) {Dish.new("chips", 100)}
  it "sets the price to what the user passes" do
    expect(dish.price).to eq 100
  end
  it "sets the name to what the user passes" do
    expect(dish.name).to eq "chips"
  end

end
