# Напишите игру “камень, ножницы, бумага” (`[:rock, :scissors, :paper]`).
# Пользователь делает свой выбор и играет с компьютером.

@count_bot = 0
@count_you = 0

def start_game
  puts 'Хотите начать играть? (да/нет)'
  start = gets.chop

  game if start == 'да'
end

def stats_game
  puts "Человек победил: #{@count_you}"
  puts "Бот победил: #{@count_bot}"

  sleep 1
  start_game
end

def game
  puts

  print 'Камень (к), Ножницы (н), Бумага (б): '
  select = gets.chop

  case select
  when 'к'
    select = 0
  when 'н'
    select = 1
  when 'б'
    select = 2
  else
    puts 'Ошибка!'
    exit
  end

  bot = rand(0..2)

  if select.zero? && bot == 1 || select == 1 && bot == 2 || select == 2 && bot.zero?
    puts 'Вы победили!'
    @count_you += 1
  elsif bot.zero? && select == 1 || bot == 1 && select == 2 || bot == 2 && select.zero?
    puts 'Бот одержал победу!'
    @count_bot += 1
  else
    puts 'Победила дружба!'
    @count_you += 1
    @count_bot += 1
  end

  sleep 1
  stats_game
end

start_game
