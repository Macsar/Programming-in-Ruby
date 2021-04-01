# Напишите программу, которая будет принимать хеш, который вы определили в
# предыдущей задаче, и выводить результат на экран. Убедитесь, что переключатель
# работает и программа не выводит приход, если переключатель включен.

# Хэш из прошлой задачи:
obj_client = {
  client: 'Герман Оскорович Блокчейн',
  show_income: true,
  transaction: [
    { desc: 'Сапоги', type: 'расход', sum: 40 },
    { desc: 'Зарплата (компания БЛИЖП)', type: 'приход', sum: 1000 },
    { desc: 'Продажа ваучера', type: 'приход', sum: 300 },
    { desc: 'Велосипед', type: 'расход', sum: 200 },
    { desc: 'Протез для ноги бабушки', type: 'расход', sum: 300 }
  ]
}

# принимаем объект и как-то его обрабатывает
def cart_user(obj, show_income = true)
  sum = 0

  obj[:show_income] = show_income

  obj[:transaction].length.times do |i|
    if obj[:show_income]
      if obj[:transaction][i][:type] == 'приход'
        sum += obj[:transaction][i][:sum]
      else
        sum -= obj[:transaction][i][:sum]
      end
    elsif obj[:transaction][i][:type] != 'приход'
      sum -= obj[:transaction][i][:sum]
    end
  end

  show_cart_user({
                   client: obj[:client],
                   show_income: obj[:show_income],
                   transaction: obj[:transaction],
                   balance: sum
                 })
end

# отображение данных
def show_cart_user(value)
  puts
  puts "Клиент: #{value[:client]}"
  puts "Баланс: #{value[:balance]}"
  puts "Отображать пополнение: #{value[:show_income]}"
  puts 'Список транзакций:'
  puts

  value[:transaction].length.times do |i|
    puts "Описание: #{value[:transaction][i][:desc]}"
    puts "Тип: #{value[:transaction][i][:type]}"
    puts "Сумма: #{value[:transaction][i][:sum]}"
    puts
  end

  puts

  puts 'Может хватит? (да/нет)'
  of = gets.chop
  exit if of == 'да'

  if value[:show_income]
    puts 'Выключить отображение приходов? (да/нет)'
    on_of = gets.chop
  else
    puts 'Включить отображение приходов? (да/нет)'
    on_of = gets.chop
  end

  case on_of
  when 'да'
    cart_user(value, !value[:show_income])
  else
    exit
  end
end

def controller_show(obj_client)
  puts 'Показать клиента? (да/нет)'
  start = gets.chop

  cart_user(obj_client) if start == 'да'
end

controller_show(obj_client)
