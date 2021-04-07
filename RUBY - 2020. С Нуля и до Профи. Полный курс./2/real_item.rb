require_relative 'item'

class RealItem < Item
  attr_accessor :weight

  def initialize(options = {})
    @weight = options[:weight]
    # super позволяет наследовать поля конструктора из родительского класса
    super
  end

  def info
    if block_given?
      yield weight
    end
    # в данном случае благодаря super можно расширить родительский
    # метод info
    super
  end
end
