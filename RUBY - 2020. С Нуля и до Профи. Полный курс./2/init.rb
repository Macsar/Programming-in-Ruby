require_relative 'cart'
require_relative 'item'

item1 = Item.new({ price: 25, weight: 120, name: 'Car' })
item2 = Item.new({ weight: 120, name: 'Car' })

cart = Cart.new
cart.add_item item1
cart.add_item item2

p cart.items

cart.delete_invalid_items

p cart.items
