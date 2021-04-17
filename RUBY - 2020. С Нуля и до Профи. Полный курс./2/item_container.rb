module ItemContainer
  module ClassMethods
    MIN_PRICE = 100
    # метод, что бы могли его вызывать без создания объекта
    # Называется Статическим Методом
    def min_price
      MIN_PRICE
    end
  end

  # инстанстные методы - это методы, оздаваемый через объект
  module InstanceMethods
    def add_item(item)
      @items.push item unless item.price < self.class.min_price
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

    # Метод возвращает те товары, у которых есть цена
    def count_valid_items
      @items.count { |i| i.price }
    end
  end

  # коллбэк для подключения внутренних модулей
  # название included может быть любым
  def self.included(classes)
    classes.extend ClassMethods
    classes.class_eval { include InstanceMethods }
  end
end
