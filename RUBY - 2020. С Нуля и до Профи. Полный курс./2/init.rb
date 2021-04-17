# require_relative 'cart'
# require_relative 'item'
# require_relative 'virtual_item'
# require_relative 'real_item'
# require_relative 'item_container'
# require_relative 'order'

# Подключает все файлы .rb в данном каталоге
Dir['*.rb'].each { |file| require_relative file unless file == 'init.rb' }

item1 = VirtualItem.new({ price: 25.0, weight: 120, name: 'Car' })
item2 = RealItem.new({ weight: 120.0, name: 'Car' })
item3 = RealItem.new({ weight: 120.0, name: 'Bike' })

cart = Cart.new
cart.add_item item1
cart.add_item item2
cart.remove_item
p cart.items.size

order = Order.new
order.add_item item1
order.add_item item2
order.add_item item3
order.remove_item
p order.items.size
p order.count_valid_items

# p item1.price
# p item1.real_price

# p cart.items
# cart.delete_invalid_items
# p cart.items

# respond_to? проверяет, отвечает ли объект на геттер
# p item1.respond_to? :weight # false
# p item2.respond_to? :weight # true
