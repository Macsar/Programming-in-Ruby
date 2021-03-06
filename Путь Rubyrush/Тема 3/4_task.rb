# Напишите программу, которая загадывает случайное число от 0 до 15 включительно и просит
# пользователя его угадать с трех попыток.
#
# При каждом вводе пользователем числа программа отвечает «тепло» если введенное число отличается
# от загаданного на 2 или меньше, «холодно» если на 3 и больше. В каждом ответе программа также
# подсказывает больше или меньше введенное число, чем загаданное (выводит на экран "нужно больше"
# или "нужно меньше").
#
# Если число угадано точно за 3 попытки – программа завершается и поздравляет пользователя с победой.
# Если нет – выводит какое число было загадано.

num_rand = rand(0..15)

print 'Загадано число от 0 до 14, отгадайте число: '

3.times do
  num = gets.chomp.to_i

  if num == num_rand
    abort 'Красава! Угадал!'
  elsif num > num_rand
    puts 'Косяк, слишком много'
  elsif num < num_rand
    puts 'Косяк, лишком мало'
  end
end

puts "\nЗагадано было число #{num_rand}"
