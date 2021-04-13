# реализуйте метод “check_victory?” (сейчас он просто возвращает значение
# false). В случае победы или поражения необходимо выводить полученный результат на
# экран. Измените 10_000 на 10 чтобы легче было отлаживать программу. Замените конструкцию
# "if...elsif" на "case...when"
#
# Сделать так, чтобы цикл был теоретически бесконечным. Т.е. чтобы
# равновероятно на свет появлялись люди и машины. Количество появившихся людей или
# машин должно равняться количеству погибших людей или машин. Несмотря на то, что
# теоретически борьба может быть бесконечной, на практике может наступить ситуация, в
# которой та или иная сторона выигрывает. Проверьте программу на практике, попробуйте
# разные значения `humans` и `machines` (1000, 100, 10).

########################################
# ОПРЕДЕЛЯЕМ ПЕРЕМЕННЫЕ
########################################
@humans = 10
@machines = 10

HUMANS = 10
MACHINES = 10

########################################
# ВСПОМОГАТЕЛЬНЫЕ МЕТОДЫ
########################################
# Метод возвращает случайное значение: true или false
def luck?
  rand(0..1) == 1
end

def boom
  diff = rand(1..5)

  if luck?
    @machines -= diff
    puts "#{diff} машин уничтожено"
  else
    @humans -= diff
    puts "#{diff} людей погибло"
  end
end

# Метод возвращает случайное название города
def random_city
  dice = rand(1..5)

  case dice
  when 1
    'Москва'
  when 2
    'Лос-Анджелес'
  when 3
    'Пекин'
  when 4
    'Лондон'
  else
    'Сеул'
  end
end

# Выбор типа существ для восстановления
def random_type_recover
  dice = rand(1..2)

  if dice == 1
    'людей'
  else
    'машины'
  end
end

def random_sleep
  sleep rand(0.3..1.5)
end

def stats
  puts "Осталось #{@humans} людей и #{@machines} машин"
end

# Метод восстановления существ
def recover(type)
  yes_no = rand(0..1)

  if yes_no
    case type
    when 'людей'
      puts "Людей восстановлено: #{HUMANS - @humans}"
      @humans = HUMANS
    else
      puts "Машин восстановлено: #{MACHINES - @machines}"
      @machines = MACHINES
    end
  end
end

########################################
# СОБЫТИЯ
########################################
def event1
  puts "Запущена ракета по городу #{random_city}"
  random_sleep
  boom
end

def event2
  puts "Применено радиоактивное оружие в городе #{random_city}"
  random_sleep
  boom
end

def event3
  puts "Группа солдат прорывает оборону противника в городе #{random_city}"
  random_sleep
  boom
end

def event4
  type = random_type_recover
  puts "Попытка восстановить #{type}"
  random_sleep
  recover(type)
end

########################################
# ПРОВЕРКА ПОБЕДЫ
########################################
def check_victory?
  @humans <= 0 || @machines <= 0 ? true : false
end

########################################
# ГЛАВНЫЙ ЦИКЛ
########################################
loop do
  if check_victory?
    if @humans > @machines
      puts "Победа людей. Выжило: #{@humans}"
    else
      puts "Победа машин. Выжило: #{@machines}"
    end
    exit
  end

  dice = rand(1..4)

  case dice
  when 1
    event1
  when 2
    event2
  when 3
    event3
  else
    event4
  end

  stats
  random_sleep
end
