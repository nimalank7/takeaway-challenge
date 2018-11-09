require "dish"
require "menu"
describe Menu do
  let(:menu) { Menu.new }
  it "creates a menu instance" do
    expect(menu.instance_of? Menu).to eq true
  end
  it "sets dishes instance variable to []" do
    expect(menu.dishes).to eq []
  end
  it "puts returns the dishes with prices" do
    dish = Dish.new("chips", 100)
    menu.dishes << dish
    expect { menu.display_dishes }.to output("chips: 100\n").to_stdout
  end
end
