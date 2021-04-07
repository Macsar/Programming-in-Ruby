require_relative 'cart'
require_relative 'item'

cart = Cart.new
cart.add_item(Item.new)
cart.add_item(Item.new)
cart.remove_item

p cart
