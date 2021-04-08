class Item
  attr_accessor :price, :name

  # переменная класса пишется через @@
  @@discount = 0.1

  def initialize(options = {})
    @price = options[:price]
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
    @price - @price * self.class.discount
  end
end
