require_relative 'cart'
require_relative 'item'

cart = Cart.new
cart.add_item(Item.new({ price: 200 }))
cart.add_item(Item.new)
cart.validate

cart.remove_item

p cart
