require_relative 'item_container'

# Заказ
class Order
  attr_reader :items

  # Через :: мы обращаемся к вложенному модулю
  include ItemContainer::Manager
  include ItemContainer::Info

  def initialize
    @items = []
  end

  def notification
    # send message to user
  end
end
