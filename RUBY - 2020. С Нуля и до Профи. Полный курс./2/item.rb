class Item
  def initialize
    @price = 30
  end

  def price
    @price
  end

  def price=(value)
    @price = value
  end
end

item1 = Item.new
item2 = Item.new

item2.price = 20

p item1.price
p item2.price
