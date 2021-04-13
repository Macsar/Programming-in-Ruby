# Пусть метод initialize принимает опцию - номер робота. Сделайте так, чтобы
# номер робота был еще одним параметром, который будет определять его состояние
# (также как и координаты). Измените методы up и down - если номер робота четный, эти
# методы не должны производить операции над координатами. Измените методы left и right
# - если номер робота нечетный, эти методы также не должны производить никаких
# операций над координатами.

# Предложенный книгой код незначительно поменял под себя (попутно удалил часть комментов)

class Robot
  attr_accessor :x, :y

  def initialize(options = {})
    @x = options[:x] || 0
    @y = options[:y] || 0
    @number = options[:number] || rand(0..100)
  end

  def right
    self.x += 1 if @number.even?
  end

  def left
    self.x -= 1 if @number.even?
  end

  def up
    self.y += 1 if @number.odd?
  end

  def down
    self.y -= 1 if @number.odd?
  end
end

class Commander
  def move(who)
    # выбор случайного действия
    m = %i[right left up down].sample
    # выполняем случайный метод робота
    who.send(m)
  end
end

commander = Commander.new

arr = Array.new(10) { Robot.new }

loop do
  # создание сетки
  12.downto(-12) do |y|
    -30.upto(30) do |x|
      # Проверяем, есть ли у нас в массиве робот с координатами x и y
      found = arr.any? { |robot| robot.x == x && robot.y == y }
      # Если найден, рисуем звездочку, иначе точку
      if found
        print '*'
      else
        print '.'
      end
    end

    puts
  end

  # Каждого робота двигаем в случайном направлении
  arr.each do |robot|
    commander.move(robot)
  end

  sleep 0.5
end
