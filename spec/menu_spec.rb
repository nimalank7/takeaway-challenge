require "dish"
require "menu"
describe Menu do
  let(:menu) { Menu.new }
  let(:Dish) {double :Dish} # Class double
  let(:dish_1) {double :dish, name: "Chips", price: 100}
  let(:dish_2) {double :dish, name: "Fish", price: 200}

  it "sets dishes instance variable to []" do
    expect(menu.dishes).to eq []
  end
  it "puts returns the dishes with prices" do
    menu.dishes << dish_1
    menu.dishes << dish_2
    expect { menu.display_dishes }.to output("Chips: 100\nFish: 200\n").to_stdout
  end
  it "adds a dish to the dishes menu" do
    allow(Dish).to receive(:new) {dish_1}
    menu.add_dish("chips", 100, Dish)
    expect(menu.dishes).to eq [dish_1]
  end
end
