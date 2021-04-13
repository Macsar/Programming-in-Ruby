# Сделайте так, чтобы при инициализации класса Monkey экземпляру
# присваивалось случайное состояние. Создайте массив из десяти обезьянок. Выведите
# состояние всех элементов массива на экран.

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

# генерация обезьянок
def gen_monkeys
  arr_names = ['Имя 1', 'Имя 2', 'Имя 3', 'Имя 4', 'Имя 5', 'Имя 6', 'Имя 7']
  arr_monkeys = []

  10.times do
    rand_num_name = rand(0...6)
    rand_num_age = rand(1...26)

    tmp = Monkey.new(name: arr_names[rand_num_name], age: rand_num_age)
    arr_monkeys.push(tmp)
  end

  # отправка сгенерированного массива обезьянок в основное цикл
  main_prog(arr_monkeys)
end

# вывод карточек обезьянок
def show_carts_monkeys(arr)
  puts
  puts 'Карточки обезьянок:'

  arr.length.times do |i|
    puts "Имя: #{arr[i].name}"
    puts "Возраст: #{arr[i].age}"

    if arr[i].play
      puts 'Обезьянка в данный момент играет.'
    else
      puts 'Обезьянка в данный момент не играет.'
    end

    puts
  end
end

def main_prog(arr)
  # вывод карточек обезьянок
  show_carts_monkeys(arr)

  loop do
    print 'Какую обезьянку выбрать? Введите её порядковый номер: '
    num_monkey = gets.to_i

    exit if num_monkey.zero?
    exit if num_monkey - 1 > arr.length

    num_monkey -= 1

    loop do
      arr[num_monkey].cart
      if arr[num_monkey].play
        puts 'Остановить обезьянку? (да/нет)'
        monkey_stop = gets.chomp

        case monkey_stop
        when 'да'
          arr[num_monkey].stop
        else
          exit
        end
      else
        puts 'Поиграть с обезьянкой? (да/нет)'
        monkey_stop = gets.chomp

        case monkey_stop
        when 'да'
          arr[num_monkey].run
        else
          exit
        end
      end
    end
  end
end

gen_monkeys
