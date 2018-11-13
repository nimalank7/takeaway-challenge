require 'Takeaway'
describe Takeaway do
  let(:takeaway) {Takeaway.new()}
  let(:menu) {double :menu}
  let(:menu_c) {double :menu_c} # Class double
  let(:dish_1) {double :dish, name: "Chips", price: 100}
  it "creates an order instance" do
    expect(takeaway.instance_of? Takeaway).to eq true
  end
  it "initializes an ordered_dishes instance variable to the empty array" do
    expect(takeaway.ordered_dishes).to eq []
  end
  it "initializes a menu" do
    allow(menu_c).to receive(:new) {menu}
    takeaway_1 = Takeaway.new(menu_c)
    expect(takeaway_1.menu).to eq menu
  end
  it "orders 2x chips" do
    allow(menu_c).to receive(:new) {menu}
    allow(menu).to receive(:dishes) {[dish_1]}
    takeaway_1 = Takeaway.new(menu_c)
    takeaway_1.place_order("Chips", 2)
    expect(takeaway_1.ordered_dishes).to eq [dish_1, dish_1]
  end
  it "initializes total to 0" do
    expect(takeaway.total).to eq 0
  end
  it "gives 200 for total chips" do
    allow(menu_c).to receive(:new) {menu}
    allow(menu).to receive(:dishes) {[dish_1]}
    takeaway_1 = Takeaway.new(menu_c)
    takeaway_1.place_order("Chips", 2)
    expect(takeaway_1.total).to eq 200
  end
end
