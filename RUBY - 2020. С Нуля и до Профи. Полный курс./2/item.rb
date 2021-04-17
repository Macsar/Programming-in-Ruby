class Item
  attr_reader :real_price, :name
  attr_writer :price

  # переменная класса пишется через @@
  @@discount = 0.1

  def initialize(options = {})
    @real_price = options[:price]
    @name = options[:name]
  end

  def info
    # проверка на то, передан ли блок
    if block_given?
      # yield - генератор. Например, он выполняет блок, переданный ему
      yield price
      yield name
    else
      puts 'Nothing to show'
    end
  end

  # self означает, что метод можно вызвать не на объекте,
  # а на самом классе
  def self.discount
    if Time.now.month == 4
      @@discount += 0.3
    else
      @@discount
    end
  end

  def price
    (@real_price - @real_price * self.class.discount) + tax if @real_price
  end

  private

  # налог
  def tax
    # разный налог в зависимости от класса
    type_tax = if self.class == VirtualItem
                 1
               else
                 2
               end

    cost_tax = if @real_price > 5
                 @real_price * 0.2
               else
                 @real_price * 0.1
               end

    # Возвращаем сумму налогов
    cost_tax + type_tax
  end
end
