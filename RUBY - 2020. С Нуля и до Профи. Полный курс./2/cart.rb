require_relative 'item_container'

class Cart
  attr_reader :items
  # Через :: мы обращаемся к вложенному модулю
  include ItemContainer

  def initialize
    @items = []
  end
end
