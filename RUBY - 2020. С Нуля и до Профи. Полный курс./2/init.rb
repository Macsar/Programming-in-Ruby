# require_relative 'cart'
# require_relative 'item'
# require_relative 'virtual_item'
# require_relative 'real_item'

# Подключает все файлы .rb в данном каталоге
Dir['*.rb'].each { |file| require_relative file unless file == 'init.rb' }

item1 = VirtualItem.new({ price: 25, name: 'Car' })
item2 = RealItem.new({ weight: 120, name: 'Car' })

cart = Cart.new
cart.add_item item1
cart.add_item item2

p cart.items

cart.delete_invalid_items

p cart.items

# respond_to? проверяет, отвечает ли объект на геттер
p item1.respond_to? :weight # false
p item2.respond_to? :weight # true
