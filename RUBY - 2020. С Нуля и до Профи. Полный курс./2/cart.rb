class Cart
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    @items.push item
  end

  def remove_item
    @items.pop
  end

  def validate
    @items.each do |i|
      # чекаем на наличие прайса
      puts 'Item has no price' if i.price.nil?
    end
  end

  # Метод для удаления item, которые не содержат цены
  def delete_invalid_items
    @items.delete_if { |i| i.price.nil? }
  end
end
