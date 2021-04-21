class RubyTutorial
  def self.description
    # таким образом работает параллельное присваивание
    a, b, c = 1, 2, 3
    # тернарный как везде
    d = a ? b : c

    # вывод от 0 до 5 включительно
    for i in 0..5
      p i
    end

    # выводит 5 чисел (до 4 включительно)
    for i in 0...5
      p i
    end

    p '_______'

    array = %w[sasha dasha pasha]
    # устаревший синтаксис
    array.map { |i| p i }
    # современный синтаксис
    array.map(&method(:p))
    # или
    array.each(&method(:p))

    p '_______'

    # таким образом омжно узнать, какие методы содержит данный объект
    p 1.methods

    # вывод названия класса
    p 'abs'.class

    p '_______'

    p 1.to_f
    p 1.to_s
    p 1.to_i

    p '_______'

    # от 1 до 10 включительно
    p rand(1..10)
    # от 1 до 9
    p rand(1...10)

    p '_______'
  end
end

RubyTutorial.description
