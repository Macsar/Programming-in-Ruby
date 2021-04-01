# Напишите класс Monkey (“обезьянка”). В классе должно быть 1) реализовано
# два метода: run, stop; 2) каждый из методов должен менять состояние объекта; 3) you
# must expose the state of an object так, чтобы можно было узнать о состоянии класса
# снаружи, но нельзя было его модифицировать (к сожалению, точно перевести на русский
# язык выражение “expose the state” не получилось. Посмотрите перевод слова “expose” в
# словаре). Создайте экземпляр класса Monkey, вызовите методы объекта и проверьте
# работоспособность программы.

class Monkey
  def initialize(options = {})
    @name = options[:name]
    @age = options[:age]
    @play = false
  end

  attr_reader :name, :age, :play

  # обезьянка начинает играть
  def run
    @play = true
  end

  # обезьянка прекращает играть
  def stop
    @play = false
  end

  # карточка обезьянки
  def cart
    puts 'Карточка обезьянки:'
    puts "Имя: #{@name}"
    puts "Возраст: #{@age}"

    if @play
      puts 'Обезьянка в данный момент играет.'
    else
      puts 'Обезьянка в данный момент не играет.'
    end
  end
end

monkey = Monkey.new(name: 'Max', age: 26)

loop do
  monkey.cart

  if monkey.play
    puts 'Остановить обезьянку? (да/нет)'
    monkey_stop = gets.chomp

    case monkey_stop
    when 'да'
      monkey.stop
    else
      exit
    end
  else
    puts 'Поиграть с обезьянкой? (да/нет)'
    monkey_stop = gets.chomp

    case monkey_stop
    when 'да'
      monkey.run
    else
      exit
    end
  end
end
