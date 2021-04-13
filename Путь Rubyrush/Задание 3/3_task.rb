# Модифицируйте конвертер валют из предыдущей задачи так, чтобы сначала он спрашивал
# у пользователя направление конвертации.

puts 'Что менять будем? (напишите номер)
1. Рубли
2. Доллары'
ans = gets.chomp.to_i

case ans
when 1
  puts 'Что по курсу доллара к рублю?'
  num = gets.chomp.to_f
  puts 'Сколько рублей в наличии?'
  rub = gets.chomp.to_f
  puts "Получается у вас #{(rub / num).round(2)}$"
when 2
  puts 'Что по курсу рубля к доллару?'
  num = gets.chomp.to_f
  puts 'Сколько $ в наличии?'
  dol = gets.chomp.to_f
  puts "Получается у вас #{(num / dol).round(2)}₽"
else
  puts 'Не такого!'
end
