class Item
  attr_accessor :price, :name

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
end
